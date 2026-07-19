# Get-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `folder

## Synopsis

> Windows Shell32 API를 사용하여 Windows 알려진 폴더의 경로를 가져옵니다.

## Description

Shell32 API의 SHGetKnownFolderPath 함수를 사용하여 지정된 Windows 알려진 폴더의 경로를 검색합니다. 이 방법은 환경 변수를 사용하는 것보다 더 안정적이며, 다양한 Windows 버전 및 언어 설정에서 일관되게 작동합니다. 문서, 다운로드, AppData 등과 같은 모든 표준 Windows 알려진 폴더를 지원합니다.

## Syntax

```powershell
Get-KnownFolderPath -KnownFolder <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | 경로를 가져올 Windows 알려진 폴더 이름 |

## Examples

### Get-KnownFolderPath -KnownFolder 'Documents' Returns: C:\Users\Username\Documents

```powershell
Get-KnownFolderPath -KnownFolder 'Documents'
Returns: C:\Users\Username\Documents
```

### folder Downloads Returns: C:\Users\Username\Downloads using the alias

```powershell
folder Downloads
Returns: C:\Users\Username\Downloads using the alias
```

### cd (folder Desktop) Changes to the Desktop folder using the alias

```powershell
cd (folder Desktop)
Changes to the Desktop folder using the alias
```

## Related Links

- [Get-KnownFolderPath on GitHub](https://github.com/genXdev/genXdev)
