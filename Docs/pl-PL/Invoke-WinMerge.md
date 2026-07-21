# Invoke-WinMerge

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Uruchamia WinMerge, aby porównać dwa pliki obok siebie.

## Description

Uruchamia aplikację WinMerge w celu porównania plików źródłowych i docelowych w widoku różnic obok siebie. Funkcja sprawdza istnienie obu plików wejściowych oraz upewnia się, że WinMerge jest prawidłowo zainstalowany przed uruchomieniem. Zapewnia opcjonalną funkcję oczekiwania, która wstrzymuje wykonanie do momentu zamknięcia WinMerge.

## Syntax

```powershell
Invoke-WinMerge -SourcecodeFilePath <String> -TargetcodeFilePath <String> [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SourcecodeFilePath` | String | ✅ | — | 0 | — | Ścieżka do pliku źródłowego do porównania |
| `-TargetcodeFilePath` | String | ✅ | — | 1 | — | Ścieżka do pliku docelowego do porównania |
| `-Wait` | SwitchParameter | — | — | Named | — | Poczekaj na zamknięcie WinMerge przed kontynuowaniem |

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

## Parameter Details

### `-SourcecodeFilePath <String>`

> Ścieżka do pliku źródłowego do porównania

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TargetcodeFilePath <String>`

> Ścieżka do pliku docelowego do porównania

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Wait`

> Poczekaj na zamknięcie WinMerge przed kontynuowaniem

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-VectorSimilarity.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-DeepLinkImageFile.md)
