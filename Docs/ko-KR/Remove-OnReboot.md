# Remove-OnReboot

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 다음 시스템 부팅 중에 삭제할 파일이나 디렉터리를 표시합니다.

## Description

* Windows API를 사용하여 파일을 다음 부팅 시 삭제되도록 표시합니다.
* 잠긴 파일을 처리하기 위해 먼저 임시 이름으로 이름을 변경하려고 시도하며, 파일 시스템 무결성을 유지하기 위해 모든 이동을 추적합니다.
* 이름 변경이 실패하면 -MarkInPlace 매개변수를 사용하여 원래 위치에서 파일을 표시할 수 있습니다.

## Syntax

```powershell
Remove-OnReboot [-Path] <string[]> [-MarkInPlace] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue) | 0 | — | 삭제할 파일/디렉토리의 경로 |
| `-MarkInPlace` | SwitchParameter | — | — | Named | `False` | 이름을 바꾸지 않고 삭제할 파일 표시 |

## Examples

### Example 1

```powershell
Remove-OnReboot -Path "C:\temp\locked-file.txt"
```

다음 시스템 재부팅 시 잠긴 파일을 삭제하도록 표시합니다.

### Example 2

```powershell
"file1.txt","file2.txt" | Remove-OnReboot -MarkInPlace
```

이름을 변경할 수 없는 파일에 대해 MarkInPlace를 사용하여 여러 파일을 삭제 대상으로 표시합니다.

## Related Links

- [Remove-OnReboot on GitHub](https://github.com/genXdev/genXdev)
