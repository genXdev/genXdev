# New-GenXdevXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 모든 PowerShell 모듈에 대한 MAML XML 도움말 파일을 생성합니다.

## Description

PowerShell 모듈의 MAML XML 도움말 파일을 생성합니다. 모듈의 모든 cmdlet에서 Get-CmdletMetaData를 사용하여 메타데이터를 추출하고 ModuleName.dll-Help.xml(C# cmdlet용)과 ModuleName-help.xml을 생성합니다.

## Syntax

```powershell
New-GenXdevXmlHelp -ModuleName <String> [-Force] [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | 도움말을 생성할 PowerShell 모듈의 이름 |
| `-Language` | String | — | — | Named | `'en-US'` | ko-KR |
| `-Force` | SwitchParameter | — | — | Named | — | 프롬프트 없이 기존 도움말 XML 파일 덮어쓰기 |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-TranslationInstructions` | String | — | — | Named | — | 사용자 정의 지침 제공 완료 |

## Examples

### New-GenXdevXmlHelp -ModuleName 'Pester'

```powershell
New-GenXdevXmlHelp -ModuleName 'Pester'
```

Pester 모듈에 대한 영어 도움말 XML을 en-US로 생성합니다.

### New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

GenXdev용 네덜란드어 도움말 XML을 생성하여 기존 파일을 덮어씁니다.

### New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf

```powershell
New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf
```

실제로 파일을 생성하지 않고 어떤 파일이 생성될지 표시합니다.

## Outputs

- `IO.FileInfo[]`

## Related Links

- [New-GenXdevXmlHelp on GitHub](https://github.com/genXdev/genXdev)
