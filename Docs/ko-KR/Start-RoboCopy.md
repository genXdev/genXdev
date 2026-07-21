# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> Microsoft의 Robust Copy (RoboCopy) 유틸리티를 위한 PowerShell 래퍼를 제공합니다.

## Description

RoboCopy 명령줄 유틸리티의 포괄적인 래퍼로, 강력한 파일 및 디렉터리 복사 기능을 제공합니다. 이 함수는 RoboCopy의 광범위한 기능 집합을 PowerShell 친화적인 매개변수를 통해 노출시키면서 대부분의 강력한 기능을 유지합니다.

주요 기능:
- 미러 옵션을 포함한 디렉터리 동기화
- 긴 경로 이름(256자 초과) 지원
- 보안 설정 유지
- 고급 파일 특성 처리
- 심볼릭 링크 및 접합점 관리
- 연속 동기화를 위한 모니터 모드
- 대용량 파일을 위한 성능 최적화
- 네트워크 압축 지원
- 오류 발생 장치를 위한 복구 모드

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | 디렉터리, 파일 경로 또는 디렉터리+검색 마스크 |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | 복사된 파일과 디렉터리를 배치할 대상 디렉터리입니다.
            이 디렉터리가 아직 존재하지 않으면, 누락된 모든 디렉터리가 생성됩니다.
            기본값 = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | 복사할 파일을 선택하기 위한 선택적 검색 마스크입니다.
            기본값 = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | 지정된 디렉터리의 내용을 동기화하며, 대상에 소스에 없는 파일 및 디렉터리가 있으면 삭제합니다. |
| `-Move` | SwitchParameter | — | — | Named | — | 원본에서 대상으로 모든 파일을 복사하는 대신 이동합니다. |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | 파일 및 디렉터리의 소유권, 보안 설명자 및 감사 정보도 복사합니다 |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | 원본에서 파일만 복사하고 하위 디렉터리는 건너뜁니다(재귀 없음) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | 디렉터리가 비어 있으면 복사하지 않음 *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | 디렉터리 트리만 생성 *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | 디렉터리 트리와 크기가 0인 파일만 생성 |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | 기호 링크, 접합점 또는 이들이 가리키는 내용을 복사하지 않음 |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | 파일 심볼릭 링크는 복사하지 않지만 디렉터리 접합점은 따릅니다 |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | 기호 링크가 가리키는 내용을 복사하는 대신 링크 자체를 복사합니다 |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | 디렉터리 접합(폴더의 심볼릭 링크) 또는 해당 접합이 가리키는 콘텐츠를 복사하지 마십시오. *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | 접합 지점이 가리키는 내용을 복사하는 대신 접합 지점 자체를 복사합니다. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | 대상에 있는 파일보다 오래된 파일이라도 모두 복사합니다. |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | 보관 특성이 설정된 파일만 복사합니다. |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | 보관 특성이 설정된 파일만 복사하는 것 외에도, 원본에서 이 특성을 재설정합니다. |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | 이러한 이름/경로/와일드카드와 일치하는 파일을 모두 제외합니다. 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | 다음 이름/경로/와일드카드와 일치하는 디렉터리를 제외합니다. *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | 다음 특성이 모두 설정된 파일만 복사 [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | 다음 특성 중 하나라도 설정된 파일 제외 [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | 복사된 파일에 지정된 특성을 설정합니다 [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | 복사된 파일에서 지정된 특성을 제거합니다 [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | 소스 디렉터리 트리의 상위 n개 수준만 복사합니다. *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | 크기가 n바이트 미만인 파일은 건너뜁니다. |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | n바이트보다 큰 파일 건너뛰기 |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | 다음보다 오래되지 않은 파일 건너뛰기: n일 이전 또는 n 날짜 이전에 생성된 파일(n < 1900이면 n = n일, 그렇지 않으면 n = YYYYMMDD 날짜) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | 다음보다 오래된 파일 건너뛰기: n일 또는 n 날짜 이후에 생성된 파일(1900년 미만이면 n = n일, 그렇지 않으면 n = YYYYMMDD 날짜) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | 다음 기간 내에 액세스된 파일 건너뛰기: n일 또는 n 날짜 이전 (n < 1900이면 n = n일, 그렇지 않으면 n = YYYYMMDD 날짜) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | 액세스되지 않은 파일 건너뛰기: n일 후 또는 n 날짜 이후 (n < 1900이면 n = n일, 그렇지 않으면 n = YYYYMMDD 날짜) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | 복사 중 I/O 오류가 발생하면 잠시 멈추고 재시도합니다. |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | 복사 후 활성 상태를 유지하며, 기본 임계값 10분이 지난 후 추가 변경 사항을 복사합니다. |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | 변경된 경우 n분 후에 다시 실행 |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | n개 이상의 변경 사항이 확인되면 다시 실행 |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | 실행 시간 - 새 복사본이 시작될 수 있는 시간, 시작 시간, 범위 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | 실행 시간 - 새 복사본이 시작될 수 있는 시간, 종료 시간, 범위 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | 지정된 경우, 로깅이 지정된 파일에도 수행됩니다 |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | 지정된 로그 파일에 추가하지 않고 덮어씁니다. |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | 출력에 스캔된 모든 디렉터리 이름 포함 |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | 스캔된 모든 파일 이름을 출력에 포함하세요, 건너뛴 파일도 포함 |
| `-Unicode` | SwitchParameter | — | — | Named | — | 유니코드로 상태 출력 |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | 대용량 파일 복사 최적화를 활성화합니다. |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | 멀티스레드 복사를 통해 성능 최적화 |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | 서버 간 파일 복사 시 대역폭과 시간을 절약하기 위해 압축을 사용할 수 있습니다. |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | 설정된 경우, 기본 2초 허용 오차 대신 밀리초 타임스탬프 일치를 사용합니다. |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | 지정된 robocopy 매개변수를 재정의, 제거 또는 추가합니다.

사용법:

매개변수 추가 또는 바꾸기:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

매개변수 제거:

    -Override -/Switch

여러 재정의:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Examples

### ########################################################################Mirror a directory with security settings Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `     -Mirror -IncludeSecurity

```powershell
########################################################################Mirror a directory with security settings
Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `
    -Mirror -IncludeSecurity
```

### ########################################################################Monitor and sync changes every 10 minutes Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `     -MonitorMode -MonitorModeThresholdMinutes 10

```powershell
########################################################################Monitor and sync changes every 10 minutes
Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `
    -MonitorMode -MonitorModeThresholdMinutes 10
```

## Parameter Details

### `-Source <String>`

> 디렉터리, 파일 경로 또는 디렉터리+검색 마스크

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DestinationDirectory <String>`

> 복사된 파일과 디렉터리를 배치할 대상 디렉터리입니다.
            이 디렉터리가 아직 존재하지 않으면, 누락된 모든 디렉터리가 생성됩니다.
            기본값 = ".\"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `".$([System.IO.Path]::DirectorySeparatorChar)"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Files <String[]>`

> 복사할 파일을 선택하기 위한 선택적 검색 마스크입니다.
            기본값 = '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Mirror`

> 지정된 디렉터리의 내용을 동기화하며, 대상에 소스에 없는 파일 및 디렉터리가 있으면 삭제합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Move`

> 원본에서 대상으로 모든 파일을 복사하는 대신 이동합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeSecurity`

> 파일 및 디렉터리의 소유권, 보안 설명자 및 감사 정보도 복사합니다

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipDirectories`

> 원본에서 파일만 복사하고 하위 디렉터리는 건너뜁니다(재귀 없음)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-SkipEmptyDirectories`

> 디렉터리가 비어 있으면 복사하지 않음

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructure`

> 디렉터리 트리만 생성

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructureAndEmptyFiles`

> 디렉터리 트리와 크기가 0인 파일만 생성

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipAllSymbolicLinks`

> 기호 링크, 접합점 또는 이들이 가리키는 내용을 복사하지 않음

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSymbolicFileLinks`

> 파일 심볼릭 링크는 복사하지 않지만 디렉터리 접합점은 따릅니다

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CopySymbolicLinksAsLinks`

> 기호 링크가 가리키는 내용을 복사하는 대신 링크 자체를 복사합니다

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipJunctions`

> 디렉터리 접합(폴더의 심볼릭 링크) 또는 해당 접합이 가리키는 콘텐츠를 복사하지 마십시오.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyJunctionsAsJunctons`

> 접합 지점이 가리키는 내용을 복사하는 대신 접합 지점 자체를 복사합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-Force`

> 대상에 있는 파일보다 오래된 파일이라도 모두 복사합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipFilesWithoutArchiveAttribute`

> 보관 특성이 설정된 파일만 복사합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetArchiveAttributeAfterSelection`

> 보관 특성이 설정된 파일만 복사하는 것 외에도, 원본에서 이 특성을 재설정합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FileExcludeFilter <String[]>`

> 이러한 이름/경로/와일드카드와 일치하는 파일을 모두 제외합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DirectoryExcludeFilter <String[]>`

> 다음 이름/경로/와일드카드와 일치하는 디렉터리를 제외합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | SkipDirectories |

<hr/>
### `-AttributeIncludeFilter <String>`

> 다음 특성이 모두 설정된 파일만 복사 [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributeExcludeFilter <String>`

> 다음 특성 중 하나라도 설정된 파일 제외 [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetAttributesAfterCopy <String>`

> 복사된 파일에 지정된 특성을 설정합니다 [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveAttributesAfterCopy <String>`

> 복사된 파일에서 지정된 특성을 제거합니다 [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSubDirTreeLevelDepth <Int32>`

> 소스 디렉터리 트리의 상위 n개 수준만 복사합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-MinFileSize <Int32>`

> 크기가 n바이트 미만인 파일은 건너뜁니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int32>`

> n바이트보다 큰 파일 건너뛰기

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileAge <Int32>`

> 다음보다 오래되지 않은 파일 건너뛰기: n일 이전 또는 n 날짜 이전에 생성된 파일(n < 1900이면 n = n일, 그렇지 않으면 n = YYYYMMDD 날짜)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileAge <Int32>`

> 다음보다 오래된 파일 건너뛰기: n일 또는 n 날짜 이후에 생성된 파일(1900년 미만이면 n = n일, 그렇지 않으면 n = YYYYMMDD 날짜)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinLastAccessAge <Int32>`

> 다음 기간 내에 액세스된 파일 건너뛰기: n일 또는 n 날짜 이전 (n < 1900이면 n = n일, 그렇지 않으면 n = YYYYMMDD 날짜)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastAccessAge <Int32>`

> 액세스되지 않은 파일 건너뛰기: n일 후 또는 n 날짜 이후 (n < 1900이면 n = n일, 그렇지 않으면 n = YYYYMMDD 날짜)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RecoveryMode`

> 복사 중 I/O 오류가 발생하면 잠시 멈추고 재시도합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorMode`

> 복사 후 활성 상태를 유지하며, 기본 임계값 10분이 지난 후 추가 변경 사항을 복사합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdMinutes <Int32>`

> 변경된 경우 n분 후에 다시 실행

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdNrOfChanges <Int32>`

> n개 이상의 변경 사항이 확인되면 다시 실행

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursFrom <Int32>`

> 실행 시간 - 새 복사본이 시작될 수 있는 시간, 시작 시간, 범위 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursUntil <Int32>`

> 실행 시간 - 새 복사본이 시작될 수 있는 시간, 종료 시간, 범위 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogFilePath <String>`

> 지정된 경우, 로깅이 지정된 파일에도 수행됩니다

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogfileOverwrite`

> 지정된 로그 파일에 추가하지 않고 덮어씁니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogDirectoryNames`

> 출력에 스캔된 모든 디렉터리 이름 포함

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogAllFileNames`

> 스캔된 모든 파일 이름을 출력에 포함하세요, 건너뛴 파일도 포함

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Unicode`

> 유니코드로 상태 출력

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LargeFiles`

> 대용량 파일 복사 최적화를 활성화합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MultiThreaded`

> 멀티스레드 복사를 통해 성능 최적화

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompressibleContent`

> 서버 간 파일 복사 시 대역폭과 시간을 절약하기 위해 압축을 사용할 수 있습니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactTimestamps`

> 설정된 경우, 기본 2초 허용 오차 대신 밀리초 타임스탬프 일치를 사용합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Override <String>`

> 지정된 robocopy 매개변수를 재정의, 제거 또는 추가합니다.

사용법:

매개변수 추가 또는 바꾸기:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

매개변수 제거:

    -Override -/Switch

여러 재정의:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

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
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Write-TextFileAtomic.md)
