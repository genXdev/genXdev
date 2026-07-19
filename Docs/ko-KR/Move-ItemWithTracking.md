# Move-ItemWithTracking

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 파일 시스템 링크와 참조를 유지하면서 파일 및 디렉터리를 이동합니다.

## Description

* Windows의 MoveFileEx API를 사용하여 링크 추적이 활성화된 상태에서 파일 및 디렉터리를 이동하여 파일 시스템 참조가 유지되도록 합니다.
* 원본 경로가 Git 제어 하에 있는 경우, Git mv를 사용하여 Git에서 이름 변경을 추적하려고 시도합니다.
* Git을 사용할 수 없거나 git mv가 실패하면 MoveFileEx로 대체됩니다.

## Syntax

```powershell
Move-ItemWithTracking [-Path] <string> [-Destination] <string> [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 이동할 파일/디렉터리의 소스 경로 |
| `-Destination` | String | ✅ | — | 1 | — | 이동할 대상 경로 |
| `-Force` | SwitchParameter | — | — | Named | `False` | 대상이 이미 존재할 경우 덮어씁니다 |

## Examples

### Example 1

```powershell
Move-ItemWithTracking -Path "C:\temp\oldfile.txt" -Destination "D:\newfile.txt"
```

파일 시스템 링크와 Git 추적을 유지하면서 파일을 이동합니다.

### Example 2

```powershell
"C:\temp\olddir" | Move-ItemWithTracking -Destination "D:\newdir" -Force
```

디렉터리를 이동합니다. 대상이 이미 존재하면 덮어씁니다.

## Related Links

- [Move-ItemWithTracking on GitHub](https://github.com/genXdev/genXdev)
