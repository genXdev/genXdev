# Get-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 설치된 최신 웹 브라우저 모음을 반환합니다.

## Description

* 시스템에 설치된 최신 웹 브라우저에 대한 세부 정보를 발견하고 반환합니다.
* Windows 레지스트리를 쿼리하여 이름, 설명, 아이콘 경로, 실행 파일 경로 및 기본 브라우저 상태를 포함한 정보를 검색합니다.
* Windows에 필요한 기능이 등록된 브라우저만 반환합니다.

## Syntax

```powershell
Get-Webbrowser [<CommonParameters>]

Get-Webbrowser [-Edge] [-Chrome] [-Chromium] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | `False` | Microsoft Edge 브라우저 인스턴스를 선택합니다 *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | `False` | Google Chrome 브라우저 인스턴스를 선택합니다 *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | `False` | 기본 Chromium 기반 브라우저 선택 *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | `False` | Firefox 브라우저 인스턴스를 선택합니다 *(Parameter set: )* |

## Examples

### Example 1

```powershell
Get-Webbrowser | Select-Object Name, Description | Format-Table
```

설치된 모든 최신 웹 브라우저의 컬렉션을 반환합니다.

### Example 2

```powershell
Get-Webbrowser | Where-Object { $_.IsDefaultBrowser }
```

시스템 기본 브라우저만 표시하도록 필터링합니다.

## Related Links

- [Get-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
