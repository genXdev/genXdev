# Invoke-WinMerge

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Start WinMerge om twee bestanden naast elkaar te vergelijken.

## Description

Start de WinMerge-toepassing om bron- en doelbestanden naast elkaar te vergelijken in een diff-weergave. De functie valideert het bestaan van beide invoerbestanden en zorgt ervoor dat WinMerge correct is geïnstalleerd voordat deze wordt gestart. Biedt optionele wachtfunctionaliteit om de uitvoering te pauzeren totdat WinMerge wordt gesloten.

## Syntax

```powershell
Invoke-WinMerge -SourcecodeFilePath <String> -TargetcodeFilePath <String> [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SourcecodeFilePath` | String | ✅ | — | 0 | — | Pad naar het bronbestand om te vergelijken |
| `-TargetcodeFilePath` | String | ✅ | — | 1 | — | Pad naar het doelbestand om mee te vergelijken |
| `-Wait` | SwitchParameter | — | — | Named | — | Wacht tot WinMerge wordt gesloten voordat u doorgaat |

## Examples

### Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `                 -TargetcodeFilePath "C:\target\file2.txt" `                 -Wait

```powershell
Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `
                -TargetcodeFilePath "C:\target\file2.txt" `
                -Wait
```

### merge "C:\source\file1.txt" "C:\target\file2.txt"

```powershell
merge "C:\source\file1.txt" "C:\target\file2.txt"
```

## Related Links

- [Invoke-WinMerge on GitHub](https://github.com/genXdev/genXdev)
