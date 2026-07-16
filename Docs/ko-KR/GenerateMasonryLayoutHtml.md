# GenerateMasonryLayoutHtml

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <IEnumerable`1[[GenXdev.Helpers.ImageSearchResult, GenXdev, Version=3.26.2026.0, Culture=neutral, PublicKeyToken=null]]> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | IEnumerable`1[[GenXdev.Helpers.ImageSearchResult, GenXdev, Version=3.26.2026.0, Culture=neutral, PublicKeyToken=null]] | ✅ | ✅ (ByValue) | 0 | — | 이미지 객체의 배열로, 각 객체는 경로, 키워드 및 설명을 포함합니다. |
| `-FilePath` | String | — | — | 1 | `$null` | 생성된 HTML 파일의 출력 경로 |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | 갤러리 제목 |
| `-Description` | String | — | — | Named | `'Hover over images to see face recognition, object detection, and scene classification data'` | 갤러리 설명 |
| `-CanEdit` | SwitchParameter | — | — | Named | `$false` | 편집 가능 여부 |
| `-CanDelete` | SwitchParameter | — | — | Named | `$false` | 삭제 활성화 여부 |
| `-EmbedImages` | SwitchParameter | — | — | Named | `$false` | 휴대성을 높이기 위해 파일:// URL 대신 base64 데이터 URL로 이미지를 임베드하세요. |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | 둥근 직사각형 안에 그림만 표시하고, 아래에는 텍스트가 없습니다. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | 페이지를 초당 이 픽셀 수만큼 자동 스크롤합니다 (비활성화하려면 null) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | 가시 범위 내의 사각형(객체/면)을 300ms마다 순환하며 애니메이션 처리합니다. |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | 단일 열 레이아웃 강제 (중앙 정렬, 화면 너비의 1/3) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | 각 이미지 경로 앞에 추가할 접두사 (예: 원격 URL용) |
| `-PageSize` | Int32 | — | — | Named | `20` | 동적으로 로드할 때 한 페이지에 표시할 이미지 수 |
| `-MaxPrintImages` | Int32 | — | — | Named | `50` | 인쇄 모드에 로드할 최대 이미지 수 |
| `-RootMargin` | String | — | — | Named | `'1200px'` | IntersectionObserver rootMargin for infinite scroll trigger (e.g. "1200px") |
| `-Threshold` | Double | — | — | Named | `0.1` | IntersectionObserver 무한 스크롤 트리거를 위한 임계값 |

## Outputs

- `String`

## Related Links

- [GenerateMasonryLayoutHtml on GitHub](https://github.com/genXdev/genXdev)
