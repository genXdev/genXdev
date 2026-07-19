# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages, `li

## Synopsis

> 지정된 디렉토리에서 이미지 파일과 메타데이터를 검색하며 필터링 기능과 선택적 브라우저 기반 갤러리 표시를 제공합니다.

## Description

지정된 디렉토리와 그 하위 디렉토리에서 이미지 파일(jpg, jpeg, png, gif, bmp, webp, tiff, tif)을 검색합니다. 각 이미지에 대해 연결된 description.json, keywords.json, people.json 및 objects.json 파일에서 메타데이터를 확인합니다. 키워드 일치, 사람 인식 및 객체 감지를 기반으로 이미지를 필터링하고 결과를 객체로 반환할 수 있습니다. -ShowInBrowser를 사용하여 브라우저 기반 메이슨리 레이아웃으로 결과를 표시합니다.

매개변수 로직:
- 각 매개변수 유형(키워드, 사람, 객체 등) 내에서: OR 논리 사용
  예: -Keywords "cat","dog"는 고양이 또는 개 중 하나가 있는 이미지를 찾습니다.
- 서로 다른 매개변수 유형 간: AND 논리 사용
  예: -Keywords "cat" -People "John"은 고양이와 John이 모두 있는 이미지를 찾습니다.
- EXIF 범위 매개변수: [최소, 최대] 값을 제공하여 범위 필터링
- 문자열 매개변수: * 및 ?를 사용한 와일드카드 일치 지원

이 함수는 이미지 디렉토리를 검색하고 JSON 형식의 메타데이터가 포함된 대체 데이터 스트림을 검사합니다. 와일드카드 패턴을 사용하여 키워드를 일치시키고, 특정 사람을 필터링하며, 감지된 객체를 검색할 수 있습니다. 기본적으로 이미지 데이터 객체를 반환합니다. -ShowInBrowser를 사용하여 웹 브라우저에 표시합니다.

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Headless] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | 가능한 모든 메타 데이터 유형 중 하나와 일치합니다. |
| `-Name` | String[] | — | — | 1 | `@('.\')` | 이미지를 검색할 디렉토리 경로 배열 |
| `-Language` | String | — | — | Named | — | 설명과 키워드에 사용되는 언어입니다. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | ('찾을 설명 텍스트, 와일드카드 허용됨.') |
| `-Keywords` | String[] | — | — | Named | `@()` | 찾을 키워드, 와일드카드 허용. |
| `-People` | String[] | — | — | Named | `@()` | 찾을 사람들, 와일드카드 허용. |
| `-Objects` | String[] | — | — | Named | `@()` | 찾을 객체, 와일드카드 허용. |
| `-Scenes` | String[] | — | — | Named | `@()` | 찾을 장면 카테고리, 와일드카드 허용. |
| `-PictureType` | String[] | — | — | Named | `@()` | 필터링할 사진 유형 (예: 'daylight', 'evening', 'indoor' 등). 와일드카드 지원. |
| `-StyleType` | String[] | — | — | Named | `@()` | 필터링할 스타일 유형(예: '캐주얼', '포멀' 등). 와일드카드를 지원합니다. |
| `-OverallMood` | String[] | — | — | Named | `@()` | 필터링할 전반적인 분위기 (예: '차분한', '즐거운', '슬픈' 등). 와일드카드 지원. |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | Filter by camera make in image EXIF metadata. Supports wildcards. |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | 이미지 EXIF 메타데이터의 카메라 모델로 필터링합니다. 와일드카드를 지원합니다. |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | 이미지 EXIF 메타데이터에서 GPS 위도 범위로 필터링합니다. |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | 이미지 EXIF 메타데이터에서 GPS 경도 범위로 필터링 |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | 이미지 EXIF 메타데이터에서 GPS 고도 범위(미터)로 필터링합니다. |
| `-GeoLocation` | Double[] | — | — | Named | — | 검색할 기준 위치의 지리적 좌표 [위도, 경도] |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | 이미지 검색을 위한 GeoLocation으로부터의 최대 거리(미터 단위). |
| `-MetaExposureTime` | Double[] | — | — | Named | — | 이미지 EXIF 메타데이터의 노출 시간 범위로 필터링 (초 단위) |
| `-MetaFNumber` | Double[] | — | — | Named | — | 이미지 EXIF 메타데이터에서 F-넘버(조리개) 범위로 필터링합니다. |
| `-MetaISO` | Int32[] | — | — | Named | — | 이미지 EXIF 메타데이터의 ISO 감도 범위로 필터링합니다. |
| `-MetaFocalLength` | Double[] | — | — | Named | — | 이미지 EXIF 메타데이터의 초점 거리 범위(단위: mm)로 필터링 |
| `-MetaWidth` | Int32[] | — | — | Named | — | EXIF 메타데이터의 픽셀 단위 이미지 너비 범위로 필터링 |
| `-MetaHeight` | Int32[] | — | — | Named | — | EXIF 메타데이터의 이미지 높이 범위(픽셀 단위)로 필터링합니다. |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | EXIF 메타데이터에서 촬영 날짜로 필터링합니다. 날짜 범위를 지정할 수 있습니다. |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | 갤러리 제목 |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | 갤러리 설명 |
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header |
| `-KeysToSend` | String[] | — | — | Named | — | 브라우저 창에 보낼 키 입력입니다, cmdlet GenXdev\Send-Key에 대한 설명서를 참조하세요 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 키를 보낼 때 제어 문자와 수식자를 이스케이프하세요 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | ('키를 보낸 후 PowerShell로 키보드 포커스가 돌아가는 것을 방지합니다.') |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 키를 보낼 때 Enter 대신 Shift+Enter를 사용하세요 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 키를 보낼 때 서로 다른 입력 문자열 사이의 지연 시간(밀리초) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창에 포커스 설정 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창을 전면으로 설정 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 위치 지정 후 창 최대화 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复为正常状态 |
| `-Monitor` | Int32 | — | — | Named | `-2` | '사용할 모니터, 0 = 기본, -1은 폐기, ' +
                '-2 = 설정된 보조 모니터, 기본값은 ' +
                '`Global:DefaultSecondaryMonitor` 또는 설정되지 않은 경우 2' |
| `-Width` | Int32 | — | — | Named | `-1` | 웹브라우저 창의 초기 너비 |
| `-Height` | Int32 | — | — | Named | `-1` | 웹 브라우저 창의 초기 높이 |
| `-X` | Int32 | — | — | Named | `-999999` | 웹브라우저 창의 초기 X 위치 |
| `-Y` | Int32 | — | — | Named | `-999999` | 웹브라우저 창의 초기 Y 위치 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | 이미지를 base64로 포함하세요. |
| `-NoFallback` | SwitchParameter | — | — | Named | — | 폴백 동작을 비활성화하는 스위치입니다. |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | 데이터베이스 초기화 및 재구축을 건너뛰려면 전환하세요. |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Search across all available drives |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | 하위 디렉터리로 재귀하지 않음 |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | 디렉터리 탐색 중 심볼릭 링크 및 정션을 따릅니다. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | 디렉터리 탐색의 최대 재귀 깊이입니다. 0은 무제한을 의미합니다. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | 항목이 발견되지 않을 때 상대 검색을 위해 트리 상단으로 계속 검색하는 최대 재귀 깊이입니다. 0은 비활성화를 의미합니다. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 결과에 포함할 최대 파일 크기(바이트)입니다. 0은 무제한을 의미합니다. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 결과에 포함할 최소 파일 크기(바이트). 0은 최소값 없음을 의미합니다. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | 이 날짜/시간(UTC) 이후에 수정된 파일만 포함하십시오. |
| `-ModifiedBefore` | DateTime | — | — | Named | — | 이 날짜/시간(UTC) 이전에 수정된 파일만 포함하세요. |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | 건너뛸 파일 특성 (예: 시스템, 숨김, 또는 없음). |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filter images that contain nudity. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain nudity. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | 명시적인 콘텐츠를 포함한 이미지를 필터링합니다. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain explicit content. |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | 브라우저 기반 이미지 갤러리에 검색 결과를 표시합니다. |
| `-PassThru` | SwitchParameter | — | — | Named | — | 이미지 데이터를 객체로 반환합니다. -ShowInBrowser와 함께 사용하면 갤러리를 표시하고 객체도 반환합니다. |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 창의 테두리와 제목 표시줄을 제거하여 더 깔끔한 외관을 만듭니다. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Place browser window side by side with PowerShell on the same monitor |
| `-Interactive` | SwitchParameter | — | — | Named | — | 브라우저에 연결하고 Edit 및 Delete와 같은 추가 버튼을 추가합니다. -ShowInBrowser와 함께 사용해야 효과적입니다. |
| `-Private` | SwitchParameter | — | — | Named | — | 시크릿/프라이빗 브라우징 모드에서 열기 |
| `-Force` | SwitchParameter | — | — | Named | — | 디버깅 포트를 강제로 활성화하고, 필요한 경우 기존 브라우저를 중지합니다 |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge에서 열기 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome에서 열기 |
| `-Chromium` | SwitchParameter | — | — | Named | — | ('Microsoft Edge 또는 Google Chrome에서 열립니다. ' +
                '기본 브라우저가 무엇인지에 따라 다름') |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox에서 열기 |
| `-PlayWright` | SwitchParameter | — | — | Named | — | ('Playwright가 관리하는 브라우저를 OS에 설치된 브라우저 대신 사용)' |
| `-Webkit` | SwitchParameter | — | — | Named | — | ('Playwright로 관리되는 WebKit 브라우저를 엽니다. ' +
                '암시: -PlayWright') |
| `-Headless` | SwitchParameter | — | — | Named | — | 보이는 창 없이 브라우저 실행 |
| `-All` | SwitchParameter | — | — | Named | — | 모든 등록된 최신 브라우저에서 열림 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 전체 화면 모드로 열기 |
| `-Left` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 왼쪽에 배치합니다. |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 상단에 배치 |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 중앙에 배치합니다 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 브라우저 컨트롤 숨기기 |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 브라우저 확장 프로그램 로딩 방지 |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disable the popup blocker |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell 창 포커스 복원 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | ("기존 브라우저 창을 재사용하지 말고, 대신 " +
                "새 창을 만드세요") |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | 생성된 HTML을 브라우저에 표시하는 대신 반환합니다. |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | ('둥근 직사각형 안에 그림만 표시하고 아래에 텍스트는 표시하지 않음.') |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI 선호도(예: 언어, 이미지 컬렉션 등)에 대해 세션에 저장된 대체 설정 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ('세션에 저장된 대체 설정을 지웁니다. ' +
                '언어, 이미지 컬렉션 등 AI 기본 설정 관련') |
| `-SkipSession` | SwitchParameter | — | — | Named | — | AI 기본 설정(언어, 이미지 컬렉션 등)을 위해 세션에 저장된 대체 설정을 사용하지 마십시오 |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | 페이지를 초당 이 픽셀 수만큼 자동 스크롤합니다 (비활성화하려면 null) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | 가시 범위 내의 사각형(객체/면)을 300ms마다 순환하며 애니메이션 처리합니다. |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | 단일 열 레이아웃 강제 (중앙 정렬, 화면 너비의 1/3) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | 각 이미지 경로 앞에 추가할 접두사 (예: 원격 URL용) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | ('사람, 장면, 사물을 필터링하기 위한 최소 신뢰도 비율(0.0-1.0)입니다. ' +
                '이 값보다 크거나 같은 신뢰도를 가진 사람, 장면, 사물에 대한 데이터만 반환합니다.') |

## Examples

### Find-Image -Keywords "cat","dog" -Name "C:\Photos\*" Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.

```powershell
Find-Image -Keywords "cat","dog" -Name "C:\Photos\*"
Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.
```

### findimages cat,dog "C:\Photos" Same as above using the alias and positional parameters.

```powershell
findimages cat,dog "C:\Photos"
Same as above using the alias and positional parameters.
```

### Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser Searches for photos containing John OR Jane and displays them in a web gallery.

```powershell
Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser
Searches for photos containing John OR Jane and displays them in a web gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*" Searches for images that contain vacation keywords AND John as a person AND beach objects. All three criteria must be met (AND logic between parameter types).

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*"
Searches for images that contain vacation keywords AND John as a person AND beach objects.
All three criteria must be met (AND logic between parameter types).
```

### Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*" Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8. EXIF parameters use range filtering with [min, max] values.

```powershell
Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*"
Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8.
EXIF parameters use range filtering with [min, max] values.
```

### Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.

```powershell
Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru
Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.
```

### findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.

```powershell
findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser
Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*" Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*"
Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.
```

### Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.

```powershell
Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser
Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.
```

### Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.

```powershell
Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser
Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.
```

### Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*" Searches for daylight photos with a calm/peaceful mood and returns the image objects.

```powershell
Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*"
Searches for daylight photos with a calm/peaceful mood and returns the image objects.
```

### findimages -StyleType "casual" -HasNudity -Name "C:\Art\*" Searches for casual style images that contain nudity and returns the data objects.

```powershell
findimages -StyleType "casual" -HasNudity -Name "C:\Art\*"
Searches for casual style images that contain nudity and returns the data objects.
```

### Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*" Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.

```powershell
Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*"
Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.
```

## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Find-Image on GitHub](https://github.com/genXdev/genXdev)
