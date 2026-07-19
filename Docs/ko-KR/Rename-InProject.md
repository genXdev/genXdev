# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip

## Synopsis

> 프로젝트 디렉토리 전체에서 텍스트를 대체합니다.

## Description

프로젝트 내의 파일과 디렉터리를 재귀적으로 검색하여 텍스트를 대체합니다. 파일/디렉터리 이름과 파일 내용을 모두 처리합니다. 일반적인 바이너리 파일과 저장소 폴더(.git, .svn)는 손상을 방지하기 위해 건너뜁니다. 파일 작업에는 BOM 없는 UTF-8 인코딩을 사용합니다. 대소문자 구분 및 대소문자 구분 없는 대체 모드를 지원합니다.

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | 디렉터리, 파일 경로 또는 디렉터리+검색 마스크 |
| `-FindText` | String | ✅ | — | 1 | — | 찾을 텍스트 (대/소문자 구분은 CaseInsensitive 매개변수로 제어) |
| `-ReplacementText` | String | ✅ | — | 2 | — | 대체할 텍스트가 일치하는 항목 |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | Perform case-insensitive text replacement |

## Examples

### Rename-InProject -Source .\src\*.js -FindText "oldName" `     -ReplacementText "newName"

```powershell
Rename-InProject -Source .\src\*.js -FindText "oldName" `
    -ReplacementText "newName"
```

### rip . "MyClass" "MyNewClass" -WhatIf

```powershell
rip . "MyClass" "MyNewClass" -WhatIf
```

### rip . "OLDNAME" "NewName" -CaseInsensitive

```powershell
rip . "OLDNAME" "NewName" -CaseInsensitive
```

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)
