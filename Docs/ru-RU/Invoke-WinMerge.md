# Invoke-WinMerge

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Запускает WinMerge для сравнения двух файлов рядом.

## Description

Запускает приложение WinMerge для сравнения исходного и целевого файлов в режиме бок о бок. Функция проверяет существование обоих входных файлов и убеждается, что WinMerge правильно установлен перед запуском. Предоставляет необязательную функцию ожидания для приостановки выполнения до закрытия WinMerge.

## Syntax

```powershell
Invoke-WinMerge -SourcecodeFilePath <String> -TargetcodeFilePath <String> [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SourcecodeFilePath` | String | ✅ | — | 0 | — | Path to the source file to compare |
| `-TargetcodeFilePath` | String | ✅ | — | 1 | — | Путь к целевому файлу для сравнения |
| `-Wait` | SwitchParameter | — | — | Named | — | Дождитесь закрытия WinMerge, прежде чем продолжить |

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
