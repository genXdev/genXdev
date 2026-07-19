# Select-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `st

## Synopsis

> Playwright로 관리되는 브라우저에서 실행 중인 브라우저 탭을 선택합니다.

## Description

Playwright에서 관리하는 모든 브라우저 인스턴스의 탭을 나열하고 선택합니다. 선택 기준 없이 호출되면 모든 브라우저 유형의 사용 가능한 탭 테이블을 표시합니다. 숫자 인덱스, URL 패턴 또는 직접 페이지 참조로 선택을 지원합니다.

탭이 선택되면 다른 Webbrowser cmdlet과의 역호환성을 위해 $Global:chromeController 및 $Global:chromeSession을 설정합니다.

## Syntax

```powershell
Select-WebbrowserTab [[-Id] <Int32>] [<CommonParameters>]

Select-WebbrowserTab -Name <String> [<CommonParameters>]

Select-WebbrowserTab -ByReference <Object> [<CommonParameters>]

Select-WebbrowserTab [-All] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Force] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Id` | Int32 | — | — | 0 | `-1` | 표시된 목록의 탭 인덱스 *(Parameter set: )* |
| `-Name` | String | ✅ | — | 0 | — | URL에 이 텍스트가 포함된 첫 번째 탭을 선택합니다. *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ByReference` | Object | ✅ | — | Named | — | Playwright 브라우저 상태에서의 직접 페이지 참조 *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge 브라우저 인스턴스로 탭 필터링 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome 브라우저 인스턴스로 탭 필터링 |
| `-Chromium` | SwitchParameter | — | — | Named | — | Chromium 기반 브라우저 인스턴스(Edge 또는 Chrome)에 탭 필터 적용 |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox 브라우저 인스턴스로 탭 필터링 |
| `-PlayWright` | SwitchParameter | — | — | Named | — | 모든 Playwright로 관리되는 브라우저 유형으로 탭 필터링 |
| `-Webkit` | SwitchParameter | — | — | Named | — | WebKit 브라우저 인스턴스로 탭 필터링 |
| `-All` | SwitchParameter | — | — | Named | — | 모든 브라우저 유형의 탭 표시 (필터링 없음) |
| `-Force` | SwitchParameter | — | — | Named | — | 확인을 건너뛰고 첫 번째로 일치하는 탭을 선택합니다. |

## Examples

### Select-WebbrowserTab Lists all open tabs across all Playwright browser types.

```powershell
Select-WebbrowserTab
Lists all open tabs across all Playwright browser types.
```

### Select-WebbrowserTab -Id 2 Selects the tab at index 2 from the list.

```powershell
Select-WebbrowserTab -Id 2
Selects the tab at index 2 from the list.
```

### st -Name "github.com" Selects the first tab whose URL contains "github.com".

```powershell
st -Name "github.com"
Selects the first tab whose URL contains "github.com".
```

### st -Firefox -Id 0 Selects the first tab from the Firefox browser.

```powershell
st -Firefox -Id 0
Selects the first tab from the Firefox browser.
```

## Outputs

- `PSObject`

## Related Links

- [Select-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
