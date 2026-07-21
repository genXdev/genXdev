# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 손상을 방지하기 위해 원자적으로 JSON으로 개체를 파일에 씁니다.

## Description

* 원자적 쓰기: 임시 파일 + 이름 변경 전략을 사용하여 프로세스가 중단되더라도 대상 파일이 손상된 상태로 남지 않도록 합니다.
* 재시도 로직: MaxRetries 횟수만큼 최대 RetryDelayMs 밀리초의 지연 간격으로 쓰기를 재시도합니다.
* 객체 지원: Hashtable뿐만 아니라 모든 객체를 허용합니다. System.Text.Json을 통해 직렬화하며, 기본적으로 직렬화할 수 없는 복잡한 .NET 유형의 경우 ConvertTo-Json으로 대체합니다.
* 디바운스 지원: DebounceMs > 0인 경우 동일한 파일에 대한 빠른 연속 쓰기가 병합되어, DebounceMs 밀리초 동안 파일이 변경되지 않으면 마지막 페이로드만 기록됩니다.
* 디렉터리 생성: 상위 디렉터리가 없으면 자동으로 생성합니다.

## Syntax

```powershell
Write-JsonFileAtomic -FilePath <String> [[-Data] <Object>] [-AsArray] [-Compress] [-DebounceMs <Int32>] [-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-EnumsAsStrings] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | 쓸 파일의 경로입니다. |
| `-Data` | Object | — | — | 1 | — | JSON으로 직렬화하여 파일에 쓸 개체입니다. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | 원자 쓰기 작업의 최대 재시도 횟수입니다. 기본값은 4입니다. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | 다시 시도 간 지연 시간(밀리초)입니다. 기본값은 200입니다. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | 0보다 크면 디바운스가 이 파일에 기록됩니다. 기본값은 0(비활성화)입니다. |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | JSON 직렬화의 최대 깊이입니다. 기본값은 30입니다. |
| `-Compress` | SwitchParameter | — | — | Named | `False` | .PARAMETER ComputerName
원격 컴퓨터의 이름을 지정합니다. 기본값은 로컬 컴퓨터입니다.

.PARAMETER Credential
이 작업을 수행할 권한이 있는 사용자 계정을 지정합니다. 기본값은 현재 사용자입니다.

.PARAMETER ThrottleLimit
원격 컴퓨터에 동시에 설정할 수 있는 최대 연결 수를 지정합니다. 기본값은 32입니다.

이 cmdlet은 원격 컴퓨터에서 Windows 이벤트 수집기 서비스를 시작합니다. |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | .PARAMETER ComputerName
원격 컴퓨터의 이름을 지정합니다. 기본값은 로컬 컴퓨터입니다.

.PARAMETER Credential
이 작업을 수행할 권한이 있는 사용자 계정을 지정합니다. 기본값은 현재 사용자입니다.

.PARAMETER ThrottleLimit
원격 컴퓨터에 동시에 설정할 수 있는 최대 연결 수를 지정합니다. 기본값은 32입니다.

이 cmdlet은 원격 컴퓨터에서 Windows 이벤트 수집기 서비스를 시작합니다. |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | 모든 열거형을 문자열 표현으로 변환하는 대체 직렬화 옵션을 제공합니다. |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

해시 테이블을 들여쓰기된 JSON으로 config.json 파일에 원자적으로 씁니다.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

프로세스 개체를 원자적으로 Compress JSON으로 작성합니다.

## Parameter Details

### `-FilePath <String>`

> 쓸 파일의 경로입니다.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Data <Object>`

> JSON으로 직렬화하여 파일에 쓸 개체입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> 원자 쓰기 작업의 최대 재시도 횟수입니다. 기본값은 4입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryDelayMs <Int32>`

> 다시 시도 간 지연 시간(밀리초)입니다. 기본값은 200입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DebounceMs <Int32>`

> 0보다 크면 디바운스가 이 파일에 기록됩니다. 기본값은 0(비활성화)입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> JSON 직렬화의 최대 깊이입니다. 기본값은 30입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Compress`

> .PARAMETER ComputerName
원격 컴퓨터의 이름을 지정합니다. 기본값은 로컬 컴퓨터입니다.

.PARAMETER Credential
이 작업을 수행할 권한이 있는 사용자 계정을 지정합니다. 기본값은 현재 사용자입니다.

.PARAMETER ThrottleLimit
원격 컴퓨터에 동시에 설정할 수 있는 최대 연결 수를 지정합니다. 기본값은 32입니다.

이 cmdlet은 원격 컴퓨터에서 Windows 이벤트 수집기 서비스를 시작합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsArray`

> .PARAMETER ComputerName
원격 컴퓨터의 이름을 지정합니다. 기본값은 로컬 컴퓨터입니다.

.PARAMETER Credential
이 작업을 수행할 권한이 있는 사용자 계정을 지정합니다. 기본값은 현재 사용자입니다.

.PARAMETER ThrottleLimit
원격 컴퓨터에 동시에 설정할 수 있는 최대 연결 수를 지정합니다. 기본값은 32입니다.

이 cmdlet은 원격 컴퓨터에서 Windows 이벤트 수집기 서비스를 시작합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnumsAsStrings`

> 모든 열거형을 문자열 표현으로 변환하는 대체 직렬화 옵션을 제공합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Write-FileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Write-TextFileAtomic.md)
