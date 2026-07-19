# Remove-ItemWithFallback

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rmf

## Synopsis

> 여러 대체 메커니즘을 사용하여 신뢰성 있게 파일이나 디렉터리를 삭제합니다.

## Description

이 함수는 파일 및 디렉토리를 삭제하는 강력한 방법을 제공하며, 순차적으로 여러 삭제 방법을 시도합니다:
1. 최상의 성능을 위해 System.IO 메서드를 통한 직접 삭제
2. 대체 방법으로 PowerShell 공급자 인식 Remove-Item cmdlet
3. 다른 방법이 실패할 경우 다음 시스템 재부팅 시 삭제 표시
이를 통해 다양한 공급자에서 항목을 제거할 때 최대의 신뢰성을 보장합니다.

## Syntax

```powershell
Remove-ItemWithFallback -Path <String> [-CountRebootDeletionAsSuccess] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 제거할 항목의 경로 |
| `-CountRebootDeletionAsSuccess` | SwitchParameter | — | — | Named | `$false` | The `-CountRebootDeletionAsSuccess` parameter. |

## Examples

### Remove-ItemWithFallback -Path "C:\temp\myfile.txt" Attempts to remove the file using all available methods.

```powershell
Remove-ItemWithFallback -Path "C:\temp\myfile.txt"
Attempts to remove the file using all available methods.
```

### "C:\temp\mydir" | rif Uses the alias 'rif' to remove a directory through the pipeline.

```powershell
"C:\temp\mydir" | rif
Uses the alias 'rif' to remove a directory through the pipeline.
```

## Outputs

- `Boolean`

## Related Links

- [Remove-ItemWithFallback on GitHub](https://github.com/genXdev/genXdev)
