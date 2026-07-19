# Test-PathUsingWindowsDefender

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `virusscan, `HasNoVirus

## Synopsis

> Windows Defender를 사용하여 파일이나 디렉터리에서 맬웨어를 검사합니다.

## Description

* Windows Defender의 명령줄 인터페이스(MpCmdRun.exe)를 사용하여 지정된 파일 또는 디렉터리의 대상 검색을 수행합니다.
* 검색 전용 모드 또는 자동 위협 수정이 활성화된 상태로 검색할 수 있습니다.
* 위협이 감지되지 않으면 true를 반환하고, 위협이 발견되거나 검색이 실패하면 false를 반환합니다.

## Syntax

```powershell
Test-PathUsingWindowsDefender [-FilePath] <string> [-EnableRemediation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 스캔할 파일 또는 디렉토리의 경로 |
| `-EnableRemediation` | SwitchParameter | — | — | Named | `False` | Windows Defender가 위협에 대해 조치를 취하도록 지시합니다. |

## Examples

### Example 1

```powershell
Test-PathUsingWindowsDefender -FilePath "C:\Downloads\file.exe" -Verbose
```

지정된 파일을 검사하고 상세 정보를 출력합니다.

### Example 2

```powershell
virusscan "C:\Downloads\file.exe" -EnableRemediation
```

별칭을 사용하여 파일을 스캔하고 수정을 활성화합니다.

### Example 3

```powershell
"C:\Downloads\file.exe" | HasNoVirus
```

별칭을 사용하여 파일 경로를 cmdlet으로 파이프합니다.

## Related Links

- [Test-PathUsingWindowsDefender on GitHub](https://github.com/genXdev/genXdev)
