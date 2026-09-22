#requires -Version 5.1
# Read-only showcase checks. No network or application code.
param([switch]$DocumentsOnly)
$ErrorActionPreference = 'Stop'
$root = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..'))
$errors = New-Object 'System.Collections.Generic.HashSet[string]'
$expected = @(
    'media/demos/1hitko.gif',
    'media/demos/1hitko.mp4',
    'media/demos/entradas.gif',
    'media/demos/entradas.mp4',
    'media/demos/equipos.gif',
    'media/demos/equipos.mp4',
    'media/demos/ev-lab.gif',
    'media/demos/ev-lab.mp4',
    'media/demos/historico.gif',
    'media/demos/historico.mp4',
    'media/demos/idiomas.gif',
    'media/demos/idiomas.mp4',
    'media/demos/modo-maestro.gif',
    'media/demos/modo-maestro.mp4',
    'media/demos/versus.gif',
    'media/demos/versus.mp4',
    'media/screenshots/1hitko-results.png',
    'media/screenshots/battle-speed.png',
    'media/screenshots/defensive-coverage.png',
    'media/screenshots/ev-lab.png',
    'media/screenshots/history-analysis.png',
    'media/screenshots/history-battles.png',
    'media/screenshots/history-recording.png',
    'media/screenshots/history-summary.png',
    'media/screenshots/home.png',
    'media/screenshots/languages.png',
    'media/screenshots/lead-record.png',
    'media/screenshots/lead-result.png',
    'media/screenshots/lead-selection.png',
    'media/screenshots/master-mode.png',
    'media/screenshots/pokemon-stats.png',
    'media/screenshots/recommended-builds.png',
    'media/screenshots/team-builder.png',
    'media/screenshots/versus-result.png'
)
# The 1HITKO set is intentionally unchanged in this refresh.
$retained = @{
    'media/demos/1hitko.gif' = '921936f0ff247d31d7b7892c9befcae16a3a258bf142a699b0f4f49d16b72542'
    'media/demos/1hitko.mp4' = '223dc880c2e94b3dab1b5c9305e8618f0fb65d74c0a45b1ce2e3146e98aee0b0'
    'media/screenshots/1hitko-results.png' = 'c49048e6dbd1c4bf42c20b1bf845f5c9db2a266db7e203d999666dbb1888b23a'
}
function Fail([string]$message) { [void]$errors.Add($message) }
function ReadText([string]$path) { [IO.File]::ReadAllText($path, [Text.Encoding]::UTF8) }
function Relative([string]$path) { $path.Substring($root.Length + 1).Replace('\', '/') }
function Headings([string]$body) {
    $used = @{}
    foreach ($heading in [regex]::Matches($body, '(?m)^#{1,6}\s+(.+?)\s*#*\s*$')) {
        $slug = $heading.Groups[1].Value.ToLowerInvariant() -replace '[^\p{L}\p{M}\p{N}_\s-]', ''
        $slug = $slug -replace '\s', '-'
        $number = 0; $candidate = $slug
        while ($used.ContainsKey($candidate)) { $number++; $candidate = "$slug-$number" }
        $used[$candidate] = $true; $candidate
    }
}
function CheckLink([string]$source, [string]$link) {
    $link = [Net.WebUtility]::HtmlDecode($link)
    if ($link -match '^(https?://|mailto:)') { return }
    if ($link -match '^[a-zA-Z][a-zA-Z0-9+.-]*:|^//') {
        Fail "$(Relative $source): unsupported link $link"; return
    }
    $pieces = $link.Split('#', 2)
    $part = [Uri]::UnescapeDataString($pieces[0].Split('?')[0])
    $target = $source
    if ($part) { $target = [IO.Path]::GetFullPath((Join-Path (Split-Path $source) $part)) }
    if (-not $target.StartsWith($root + [IO.Path]::DirectorySeparatorChar, [StringComparison]::OrdinalIgnoreCase)) {
        Fail "$(Relative $source): link escapes repository"; return
    }
    $relative = Relative $target
    if ($DocumentsOnly -and $expected -ccontains $relative) { return }
    if (-not (Test-Path -LiteralPath $target)) { Fail "Missing target: $relative"; return }
    if (-not $inventory.Contains($relative)) {
        Fail "$(Relative $source): target case or spelling mismatch: $relative"; return
    }
    if ($pieces.Count -eq 2 -and $pieces[1] -and $target.EndsWith('.md')) {
        $anchor = [Uri]::UnescapeDataString($pieces[1])
        if (@(Headings (ReadText $target)) -cnotcontains $anchor) {
            Fail "$(Relative $source): missing anchor $link"
        }
    }
}
$inventory = New-Object 'System.Collections.Generic.HashSet[string]' ([StringComparer]::Ordinal)
$files = @(Get-ChildItem -LiteralPath $root -Recurse -File | Where-Object {
    (Relative $_.FullName) -notmatch '^\.git/'
})
foreach ($file in $files) { [void]$inventory.Add((Relative $file.FullName)) }
$manifest = ReadText (Join-Path $root 'media/manifest.json') | ConvertFrom-Json
$manifestPaths = @($manifest.files | ForEach-Object { $_.path })
if ($manifestPaths.Count -ne $expected.Count -or @($manifestPaths | Select-Object -Unique).Count -ne $expected.Count -or
    @(Compare-Object $expected $manifestPaths -CaseSensitive).Count) {
    Fail "Manifest must contain exactly $($expected.Count) expected paths, without duplicates."
}
foreach ($path in $retained.Keys) {
    $entry = @($manifest.files | Where-Object { $_.path -ceq $path })
    if ($entry.Count -ne 1 -or $entry[0].sha256 -cne $retained[$path]) { Fail "Retained 1HITKO manifest changed: $path" }
}
foreach ($file in $files | Where-Object { $_.Extension -in '.png', '.gif', '.mp4' }) {
    if ($expected -cnotcontains (Relative $file.FullName)) { Fail "Unexpected media: $(Relative $file.FullName)" }
}
$documents = @($files | Where-Object { $_.Extension -eq '.md' })
$linkCount = 0
foreach ($file in $documents) {
    $original = ReadText $file.FullName
    $body = $original
    $fence = [string][char]96
    $body = [regex]::Replace($body, "(?ms)^$fence{3}.*?^$fence{3}\s*$|^~~~.*?^~~~\s*$", '')
    foreach ($match in [regex]::Matches($body, '\[[^\]\r\n]*\]\(([^)\s]+)(?:\s+"[^"]*")?\)|(?:href|src)\s*=\s*["'']([^"'']+)["'']')) {
        $link = $match.Groups[1].Value
        if (-not $link) { $link = $match.Groups[2].Value }
        CheckLink $file.FullName $link; $linkCount++
    }
    foreach ($img in [regex]::Matches($body, '<img\b[^>]*>')) {
        if ($img.Value -notmatch '\balt="[^"]+"') { Fail "$(Relative $file.FullName): image needs alt text" }
    }
    $other = if ($file.Name.EndsWith('.en.md')) { $file.Name -replace '\.en\.md$', '.md' } else { $file.Name -replace '\.md$', '.en.md' }
    if (-not (Test-Path -LiteralPath (Join-Path $file.DirectoryName $other))) {
        Fail "$(Relative $file.FullName): missing translated document $other"
    }
    if ($original.Substring(0, [Math]::Min(220, $original.Length)) -notmatch [regex]::Escape('href="' + $other + '"')) {
        Fail "$(Relative $file.FullName): missing reciprocal language selector"
    }
    $relative = Relative $file.FullName
    if ($relative -in 'README.md','README.en.md','docs/GALLERY.md','docs/GALLERY.en.md') {
        if ($original -match '(?i)\b(TODO|TBD|placeholder|coming soon|pendiente de adjuntar)\b') { Fail "$relative`: unfinished presentation marker" }
        $pngCount = [regex]::Matches($original, 'src="[^"]+\.png"').Count
        $gifCount = [regex]::Matches($original, 'src="[^"]+\.gif"').Count
        if ($relative.StartsWith('README')) {
            if ($pngCount -ne 3 -or $gifCount -ne 1) { Fail "$relative`: expected three stills and one GIF" }
        } else {
            if ($pngCount -ne 18 -or $gifCount -ne 0) { Fail "$relative`: expected 18 stills and linked, not embedded, GIFs" }
            foreach ($name in @('versus','1hitko','entradas','ev-lab','modo-maestro','equipos','historico','idiomas')) {
                foreach ($ext in @('gif','mp4')) {
                    if (-not $original.Contains("../media/demos/$name.$ext")) { Fail "$relative`: missing $name.$ext link" }
                }
            }
        }
    }
}
$total = 0L; $verified = 0
if (-not $DocumentsOnly) {
    $probe = Get-Command ffprobe -ErrorAction SilentlyContinue
    $decoder = Get-Command ffmpeg -ErrorAction SilentlyContinue
    if (-not $probe -or -not $decoder) { Fail 'Full validation requires ffprobe and ffmpeg on PATH.' }
    foreach ($entry in $manifest.files) {
        if ($expected -cnotcontains $entry.path) { continue }
        $path = Join-Path $root $entry.path
        if (-not (Test-Path -LiteralPath $path -PathType Leaf)) { Fail "Missing target: $($entry.path)"; continue }
        $length = (Get-Item -LiteralPath $path).Length; $total += $length
        if ($length -ne $entry.bytes) { Fail "$($entry.path): byte length mismatch" }
        $hash = (Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash.ToLowerInvariant()
        if ($hash -cne $entry.sha256) { Fail "$($entry.path): SHA-256 mismatch" }
        if ($retained.ContainsKey($entry.path) -and $hash -cne $retained[$entry.path]) { Fail "Retained 1HITKO file changed: $($entry.path)" }
        if (-not $probe -or -not $decoder) { continue }
        $json = & $probe.Source -v error -count_frames -show_streams -show_format -of json $path
        if ($LASTEXITCODE -ne 0) { Fail "$($entry.path): ffprobe failed"; continue }
        $info = ($json -join [Environment]::NewLine) | ConvertFrom-Json
        $video = @($info.streams | Where-Object { $_.codec_type -eq 'video' })
        if ($video.Count -ne 1 -or $video[0].width -ne $entry.width -or $video[0].height -ne $entry.height) { Fail "$($entry.path): dimensions or video stream mismatch" }
        if (@($info.streams | Where-Object { $_.codec_type -eq 'audio' }).Count) { Fail "$($entry.path): unexpected audio" }
        if ($entry.PSObject.Properties.Name -contains 'duration_seconds') {
            $duration = [double]::Parse($info.format.duration, [Globalization.CultureInfo]::InvariantCulture)
            if ([Math]::Abs($duration - $entry.duration_seconds) -gt 0.02) { Fail "$($entry.path): duration mismatch" }
        }
        if ($entry.PSObject.Properties.Name -contains 'frames') {
            if ([int]$video[0].nb_read_frames -ne $entry.frames) { Fail "$($entry.path): frame count mismatch" }
        }
        & $decoder.Source -nostdin -v error -xerror -i $path -f null -
        if ($LASTEXITCODE -ne 0) { Fail "$($entry.path): full decode failed" } else { $verified++ }
    }
}
Write-Output "$($documents.Count) Markdown files; $linkCount links inspected."
if ($DocumentsOnly) {
    Write-Output 'DOCUMENTS ONLY: expected binary targets excluded; media NOT validated; NOT merge approval.'
} else { Write-Output "$verified/$($expected.Count) media decoded; $total actual bytes." }
if ($errors.Count) { $errors | Sort-Object | ForEach-Object { Write-Output "FAIL: $_" }; exit 1 }
Write-Output 'PASS for the selected scope. External URLs, visual review and provenance are not automated.'
