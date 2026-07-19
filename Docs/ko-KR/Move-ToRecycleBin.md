# Move-ToRecycleBin

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 파일과 디렉터리를 안전하게 Windows 휴지통으로 이동합니다.

## Description

* Windows Shell API를 사용하여 현재 사용 중인 파일이나 디렉터리도 안전하게 휴지통으로 이동합니다.
* 이 함수는 Shell.Application COM 개체를 사용하여 작업을 수행하므로 적절한 휴지통 동작과 실행 취소 기능이 보장됩니다.

## Syntax

```powershell
Move-ToRecycleBin [-Path] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 휴지통으로 이동할 경로를 지정하십시오. |

## Examples

### Example 1

```powershell
Move-ToRecycleBin -Path "C:\temp\old-report.txt"
```

단일 파일을 휴지통으로 이동합니다.

### Example 2

```powershell
"file1.txt","file2.txt" | recycle
```

파이프라인과 별칭을 사용하여 여러 파일을 휴지통으로 이동합니다.

## Related Links

- [Move-ToRecycleBin on GitHub](https://github.com/genXdev/genXdev)
