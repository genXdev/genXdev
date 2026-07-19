# Set-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Windows 알려진 폴더의 실제 경로를 수정합니다.

## Description

Windows Shell32 API를 사용하여 문서, 다운로드, 데스크톱 등 시스템 폴더를 새 위치로 이동합니다. 함수는 대상 경로의 존재 여부를 확인하고, 포괄적인 알려진 폴더 레지스트리에서 폴더의 고유 GUID를 조회한 후 SHSetKnownFolderPath API를 사용하여 이동을 수행합니다. 일반적인 사용 사례는 디스크 공간 관리 또는 구성을 위해 사용자 폴더를 다른 드라이브로 이동하는 것입니다. 시스템 중요 폴더를 이동할 때는 시스템 안정성에 영향을 줄 수 있으므로 주의하십시오.

## Syntax

```powershell
Set-KnownFolderPath -KnownFolder <String> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | 변경할 알려진 폴더 |
| `-Path` | String | ✅ | — | 1 | — | 알려진 폴더의 새 경로 |

## Examples

### Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'

```powershell
Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'
```

### Set-KnownFolderPath Downloads 'E:\Downloads'

```powershell
Set-KnownFolderPath Downloads 'E:\Downloads'
```

## Related Links

- [Set-KnownFolderPath on GitHub](https://github.com/genXdev/genXdev)
