<p align="right"><a href="README.md">Español</a> · <a href="README.en.md">English</a> · <a href="README.fr.md">Français</a> · <a href="README.de.md">Deutsch</a> · <a href="README.it.md">Italiano</a> · <a href="README.pt.md">Português</a> · <a href="README.ja.md">日本語</a> · <strong>한국어</strong></p>

# PokeChampions Core

<img src="media/brand/logo.png" width="104" alt="투명한 배경의 현재 PokeChampions Core 로고">

**팀을 준비하세요. 대면 구도를 이해하세요. 대전에서 배우세요.**

Pokémon Champions 플레이어를 위한 Android 앱입니다. 데미지와 스피드를 비교하고 다양한 세팅을 검토하며, 팀과 메모, 대전 기록을 한곳에서 관리할 수 있습니다. 도구와 앱에 포함된 카탈로그는 **오프라인**으로 작동하며, 계정이나 인터넷 자동 동기화가 필요하지 않습니다.

개발자: **[Diego de Arriba](https://github.com/DiegoARRFRA)** · Flutter 및 Dart · 소스 코드 비공개.

[기능](docs/FEATURES.en.md) · [갤러리](docs/GALLERY.en.md) · [기술 개요](docs/TECHNICAL_OVERVIEW.en.md) · [문서](docs/README.en.md)

> 이 소개 페이지는 한국어로 제공됩니다. 상세 문서는 스페인어와 영어로 제공되며, 위 링크는 영어 문서로 연결됩니다.

## 앱 살펴보기

홈 화면, Versus 계산 결과, 기술 필터 화면입니다. **2026년 11월 5일** Android 에뮬레이터에서 촬영한 **1.0.1**의 실제 스크린샷이며, 화면 언어는 스페인어입니다. 이미지를 선택하면 원본 크기로 볼 수 있습니다.

<p>
<a href="media/screenshots/home.png"><img src="media/screenshots/home.png" width="220" alt="현재 로고와 도구 바로가기가 표시된 다크 테마 홈 화면"></a>
<a href="media/screenshots/versus-result.png"><img src="media/screenshots/versus-result.png" width="220" alt="Versus의 이판사판태클 계산 결과: 45~54 HP 데미지와 KO 조건"></a>
<a href="media/screenshots/library.png"><img src="media/screenshots/library.png" width="220" alt="여러 필터와 두 가지 기술 분류를 선택한 라이브러리"></a>
</p>

[스크린샷 8장과 과거 데모 모두 보기](docs/GALLERY.en.md). 갤러리에서는 에뮬레이터 캡처, HOST 렌더링, 이전 영상을 구분해 표시합니다.

## 준비와 비교를 위한 도구

| 도구 | 주요 기능 |
| --- | --- |
| **배틀** | 더블배틀 상황의 스피드, 특성, 날씨와 효과를 분석합니다. 저장한 팀, 대회 팀 또는 메모에서 1~2마리를 불러오고 SP와 성격을 일시적으로 조정할 수 있습니다. |
| **Versus 및 EV Lab** | 데미지 범위, KO에 필요한 공격 횟수, 생존을 위한 내구 배분을 계산합니다. 마스터 모드로 조건의 영향을 비교할 수 있습니다. |
| **1HITKO** | 설정한 상황에서 한 번의 공격으로 KO시킬 수 있는 후보를 검색합니다. 진행 상황 표시, 취소, 방어 마스터 모드를 지원합니다. |
| **팀과 메모** | 팀을 만들고 방어 타입 상성을 확인하며, 특성·성격·SP를 포함한 저장된 세팅을 재사용할 수 있습니다. |
| **대회와 라이브러리** | 레귤레이션과 날짜별로 팀을 찾아볼 수 있습니다. Smogon 세팅, STATS, 습득 기술과 각 기술을 배우는 포켓몬을 조합 가능한 필터로 확인합니다. |
| **선봉 연습과 대전 기록** | 선봉 선택을 연습하고 대전, 상대, 배운 점을 수동으로 기록할 수 있습니다. |

배틀은 상황을 분석하는 도구이며, **대전 전체를 진행하는 시뮬레이터는 아닙니다**. 확정 KO는 기술이 명중한다는 전제하에 최소 데미지와 설정한 조건으로 판단합니다. [지원 범위와 한계 — 영어](docs/FEATURES.en.md).

이번 검토에서는 포켓몬별로 묶은 메모, 도구 간 세팅 불러오기, 기술 분류 필터, 업데이트된 카탈로그와 현재 아이콘을 소개합니다. 스페인어, 영어, 프랑스어, 독일어, 이탈리아어, 포르투갈어, 일본어, 한국어의 8개 언어를 지원합니다. 라이트·다크·시스템 테마와 선택적 오디오도 제공되며, **Tribute to Anime**와 **Jojo´s rute**가 포함되어 있습니다.

## 배포 상태와 개인정보 보호

**버전 1.0.1은 내부 테스트 중**이며, 이는 개발자가 2026년 11월 5일에 전달한 상태를 기준으로 합니다. 이 소개를 작성할 때 공개 다운로드를 확인하지 않았으며, 비공개 테스트 배포도 여기서 공지하지 않습니다. 이 저장소에는 문서와 소개용 미디어가 포함되어 있으며, 설치 파일이나 앱 소스 코드는 포함되어 있지 않습니다.

[공개 개인정보 처리방침](https://pokechampions-core-privacidad.pages.dev/) · [개발자 및 연락처](https://github.com/DiegoARRFRA) · [의견 및 오류 제보 — 영어](CONTRIBUTING.en.md).

## 내부 구조

Flutter/Dart를 사용하며 기능과 계층별 구성, 타입이 지정된 계약, 생성자 주입을 적용했습니다. Drift와 SQLite는 트랜잭션, 리비전 확인, 마이그레이션 무결성을 갖춘 **11개 테이블**에 로컬 데이터를 저장합니다. 계산 규칙은 도구 간에 공유하며, 검색 작업과 저장 작업은 별도의 생명주기를 가집니다.

**2026년 11월 5일** 전체 순차 실행에서 **HOST 테스트 13,706개 통과, 실패 0개, 선택적 테스트 17개 건너뜀**을 기록했습니다. 개별 검증, 에뮬레이터 업데이트, 과거 실제 기기 테스트는 별도로 문서화되어 있으며, 이 수치가 모든 기기에서의 동작을 보증하지는 않습니다.

영어 기술 문서: [검증 및 한계](docs/VALIDATION.en.md) · [아키텍처](docs/ARCHITECTURE.en.md) · [데이터베이스](docs/DATABASE.en.md) · [설계 결정](docs/ENGINEERING.en.md) · [과거 성능 측정](docs/PERFORMANCE.en.md) · [남은 작업](docs/ROADMAP.en.md).

PokeChampions Core는 Nintendo, Creatures, GAME FREAK, The Pokémon Company와 제휴하지 않은 비공식 팬 프로젝트입니다. Pokémon 상표와 리소스는 각 권리자에게 귀속됩니다. [고지 및 출처 — 영어](NOTICE.en.md).
