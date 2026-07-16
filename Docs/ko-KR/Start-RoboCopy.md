# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc, `rc

## Synopsis

> *(No synopsis provided)*

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
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | 복사된 파일과 디렉토리를 배치할 대상 디렉토리입니다.
            이 디렉토리가 아직 존재하지 않는 경우, 누락된 모든 디렉토리가 생성됩니다.
            기본값 = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | 복사해야 할 파일을 선택하기 위한 선택적 검색 마스크입니다.
기본값 = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | 지정된 디렉터리의 콘텐츠를 동기화하며, 대상에 있는 파일 및 디렉터리 중 소스에 없는 것은 삭제합니다 |
| `-Move` | SwitchParameter | — | — | Named | — | Will move instead of copy all files from source to destination |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | 파일과 디렉터리의 소유권, 보안 설명자 및 감사 정보도 복사합니다. |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Copies only files from source and skips sub-directories (no recurse) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | 비어 있게 될 경우 디렉토리를 복사하지 않습니다. *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Create directory tree only *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | # Directory structure with zero-length files only

# Create top-level directories
mkdir -p project/src
mkdir -p project/docs
mkdir -p project/tests

# Create zero-length files
touch project/README.md
touch project/.gitignore
touch project/src/main.py
touch project/src/utils.py
touch project/docs/index.md
touch project/docs/guide.md
touch project/tests/test_main.py
touch project/tests/test_utils.py
touch project/requirements.txt

# Display tree (requires tree command or use find)
# tree project
# Expected output:
# project
# ├── README.md
# ├── .gitignore
# ├── docs
# │   ├── index.md
# │   └── guide.md
# ├── requirements.txt
# ├── src
# │   ├── main.py
# │   └── utils.py
# └── tests
#     ├── test_main.py
#     └── test_utils.py |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | 심볼릭 링크, 정션 또는 그들이 가리키는 내용을 복사하지 마십시오 |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | 파일 심볼릭 링크는 복사하지 않지만 디렉터리 접합점은 따릅니다. |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | 심볼릭 링크가 가리키는 콘텐츠를 복사하는 대신 링크 자체를 복사합니다. |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | 디렉터리 접합(폴더의 심볼릭 링크) 또는 그들이 가리키는 내용을 복사하지 마십시오 *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Instead of copying the content where junctions point to, copy the junctions themselves *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | 모든 파일을 대상에 있는 파일보다 오래된 경우에도 복사합니다. |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | 아카이브 특성이 설정된 파일만 복사합니다. |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | 아카이브 특성이 설정된 파일만 복사하는 것 외에도, 복사 후 소스의 이 특성을 재설정합니다. |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | 다음 이름/경로/와일드카드와 일치하는 파일을 제외하세요. 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | 이러한 이름/경로/와일드카드와 일치하는 디렉토리는 모두 제외 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | 다음 속성이 모두 설정된 파일만 복사 [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | 다음 속성 [RASHCNETO] 중 하나라도 설정된 파일을 제외합니다. |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | 복사된 파일에 주어진 속성을 설정합니다 [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | 복사된 파일에서 지정된 속성을 제거합니다 [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Only copy the top n levels of the source directory tree *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | 크기가 n바이트 미만인 파일은 건너뜁니다. |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | n바이트보다 큰 파일 건너뛰기 |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | 최소 n일이 지났거나 n 날짜 이전에 생성된 파일이 아닌 경우 건너뜁니다(n < 1900이면 n = n일, 그렇지 않으면 n = YYYYMMDD 날짜). |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | n일보다 오래되었거나 n 날짜 이후에 생성된 파일 건너뛰기 (n < 1900이면 n = n일, 그렇지 않으면 n = YYYYMMDD 날짜) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | 다음 중 마지막 n일 이내에 액세스된 파일 또는 n 날짜 이전의 파일(단, n < 1900이면 n = n일, 그렇지 않으면 n = YYYYMMDD 날짜)을 건너뜁니다. |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | 다음 기간 동안 액세스하지 않은 파일을 건너뜁니다: n일 후 또는 n 날짜 이후 (n < 1900이면 n = n일, 그렇지 않으면 n = YYYYMMDD 날짜) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | 복사 중 I/O 오류가 발생하면 곧 일시 중지하고 재시도합니다. |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | 복사 후에도 활성 상태를 유지하며, 기본 임계값 10분 후에 추가 변경사항을 복사합니다. |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | 변경 시 n분 후에 다시 실행 |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | n개 이상의 변경 사항이 감지되면 다시 실행 |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | 실행 시간 - 새 복사본을 시작할 수 있는 시간, 시작 시간, 범위 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | 실행 시간 - 새 복사본을 시작할 수 있는 시간, 종료 시간, 범위 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | 지정된 경우, 로깅은 지정된 파일에도 수행됩니다. |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Don't append to the specified logfile, but overwrite instead |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | 스캔된 모든 디렉토리 이름을 출력에 포함 |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Include all scanned file names in output, even skipped onces |
| `-Unicode` | SwitchParameter | — | — | Named | — | 상태를 유니코드로 출력하세요 |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | 대용량 파일 복사 최적화 활성화 |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | 멀티스레드 복사를 통해 성능 최적화 |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | 가능하면 서버 간 파일 복사 시 압축을 사용하여 대역폭과 시간을 절약하세요 |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | 설정 시, 기본 2초 허용 오차 대신 밀리초 타임스탬프 일치를 사용합니다. |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | 지정된 robocopy 매개변수를 재정의, 제거 또는 추가합니다.

사용법:

매개변수 추가 또는 교체:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

매개변수 제거:

    -Override -/Switch

여러 재정의:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Related Links

- [Start-RoboCopy on GitHub](https://github.com/genXdev/genXdev)
