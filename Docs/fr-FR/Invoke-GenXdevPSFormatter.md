# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Formate les fichiers de script PowerShell en utilisant les règles de formatage de PSScriptAnalyzer.

## Description

Cette fonction applique les règles de formatage PowerShell aux fichiers script en utilisant l'applet de commande Invoke-Formatter de PSScriptAnalyzer. Elle peut traiter des fichiers individuels ou formater récursivement plusieurs fichiers dans des répertoires. La fonction utilise des paramètres de formatage personnalisables et fournit une journalisation détaillée du processus de formatage.

## Syntax

```powershell
Invoke-GenXdevPSFormatter -Path <String> [-Range <Int32[]>] [-Recurse] [-Settings <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Spécifie le chemin du fichier de script à formater. |
| `-Settings` | Object | — | — | Named | — | Une table de hachage de paramètres ou un chemin vers un fichier de données PowerShell (.psd1) qui contient les paramètres de formatage. |
| `-Range` | Int32[] | — | — | Named | — | The range within which formatting should take place as an array of four integers: starting line number, starting column number, ending line number, ending column number. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Traiter récursivement les fichiers dans les sous-répertoires. |

## Examples

### Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse
```

### "MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}

```powershell
"MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}
```

## Related Links

- [Invoke-GenXdevPSFormatter on GitHub](https://github.com/genXdev/genXdev)
