#!/usr/bin/env python3
"""Read-only media integrity check. Python 3.9+; ffprobe/ffmpeg on PATH."""
from __future__ import annotations
import argparse, hashlib, json, shutil, subprocess, sys
from pathlib import Path

def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--root', type=Path, default=Path(__file__).resolve().parents[1])
    args = parser.parse_args()
    root = args.root.resolve()
    errors = []
    manifest = json.loads((root / 'media/manifest.json').read_text(encoding='utf-8'))
    expected = {e['path'] for e in manifest['files']}
    if len(expected) != len(manifest['files']): errors.append('Duplicate manifest paths')
    actual = {p.relative_to(root).as_posix() for p in (root / 'media').rglob('*') if p.suffix in {'.png', '.gif', '.mp4'}}
    if actual != expected: errors.append(f'Media inventory mismatch: {sorted(actual ^ expected)}')
    if not shutil.which('ffprobe') or not shutil.which('ffmpeg'):
        print('FAIL: ffprobe and ffmpeg are required.', file=sys.stderr); return 1
    retained = {
        'media/demos/1hitko.gif':'921936f0ff247d31d7b7892c9befcae16a3a258bf142a699b0f4f49d16b72542',
        'media/demos/1hitko.mp4':'223dc880c2e94b3dab1b5c9305e8618f0fb65d74c0a45b1ce2e3146e98aee0b0',
        'media/screenshots/1hitko-results.png':'c49048e6dbd1c4bf42c20b1bf845f5c9db2a266db7e203d999666dbb1888b23a',
    }
    for rel, wanted in retained.items():
        p = root / rel
        if not p.is_file() or hashlib.sha256(p.read_bytes()).hexdigest() != wanted:
            errors.append(f'Preserved 1HITKO differs: {rel}')
    verified = 0
    for e in manifest['files']:
        p = (root / e['path']).resolve()
        if root not in p.parents: errors.append(f'Path escapes root: {e["path"]}'); continue
        try:
            data = p.read_bytes()
            if len(data) != e['bytes'] or hashlib.sha256(data).hexdigest() != e['sha256']:
                errors.append(f'Bytes/SHA-256 mismatch: {e["path"]}')
            probe = subprocess.run(['ffprobe','-v','error','-count_frames','-show_streams','-show_format','-of','json',str(p)],check=True,capture_output=True,text=True,timeout=90)
            d=json.loads(probe.stdout); v=[s for s in d['streams'] if s['codec_type']=='video']
            if len(v)!=1 or (v[0]['width'],v[0]['height'])!=(e['width'],e['height']): errors.append(f'Dimensions: {e["path"]}')
            if any(s['codec_type']=='audio' for s in d['streams']): errors.append(f'Unexpected audio: {e["path"]}')
            if 'duration_seconds' in e and abs(float(d['format']['duration'])-e['duration_seconds'])>0.02: errors.append(f'Duration: {e["path"]}')
            if 'frames' in e and int(v[0]['nb_read_frames'])!=e['frames']: errors.append(f'Frames: {e["path"]}')
            subprocess.run(['ffmpeg','-nostdin','-v','error','-xerror','-i',str(p),'-f','null','-'],check=True,capture_output=True,timeout=120)
            verified+=1
        except (OSError, ValueError, KeyError, subprocess.SubprocessError) as exc:
            errors.append(f'{e["path"]}: {exc}')
    print(f'{verified}/{len(expected)} media decoded; 1HITKO preservation checked.')
    for error in errors: print('FAIL:',error,file=sys.stderr)
    if errors:return 1
    print('PASS: media integrity and decoding only; not document rendering or application QA.')
    return 0

if __name__=='__main__':
    try: raise SystemExit(main())
    except (OSError, ValueError, KeyError) as exc:
        print(f'FAIL: {exc}',file=sys.stderr);raise SystemExit(1)
