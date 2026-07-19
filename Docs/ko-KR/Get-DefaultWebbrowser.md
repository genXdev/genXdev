# Get-DefaultWebbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 현재 사용자에 대해 구성된 기본 웹 브라우저를 반환합니다.

## Description

* Windows 레지스트리를 쿼리하여 시스템의 기본 웹 브라우저에 대한 정보를 검색합니다.
* 브라우저의 이름, 설명, 아이콘 경로 및 실행 파일 경로를 포함하는 해시 테이블을 반환합니다.
* 이 함수는 사용자 기본 설정과 시스템 전체 브라우저 등록을 모두 확인하여 기본 브라우저를 결정합니다.

## Syntax

```powershell
Get-DefaultWebbrowser [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-DefaultWebbrowser | Format-List
```

기본 브라우저에 대한 자세한 정보를 가져옵니다.

### Example 2

```powershell
$browser = Get-DefaultWebbrowser
& $browser.Path https://www.github.com/
```

특정 URL로 기본 브라우저를 실행합니다.

## Related Links

- [Get-DefaultWebbrowser on GitHub](https://github.com/genXdev/genXdev)
