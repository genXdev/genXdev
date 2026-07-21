# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Formatuje pliki skryptów PowerShell przy użyciu reguł formatowania PSScriptAnalyzer.

## Description

Ta funkcja stosuje reguły formatowania PowerShell do plików skryptowych przy użyciu polecenia Invoke-Formatter z PSScriptAnalyzer. Może przetwarzać pojedyncze pliki lub rekurencyjnie formatować wiele plików w katalogach. Funkcja wykorzystuje konfigurowalne ustawienia formatowania i zapewnia szczegółowe logowanie procesu formatowania.

## Syntax

```powershell
Invoke-GenXdevPSFormatter -Path <String> [-Range <Int32[]>] [-Recurse] [-Settings <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Określa ścieżkę do pliku skryptu do sformatowania. |
| `-Settings` | Object | — | — | Named | — | Tabela skrótów ustawień lub ścieżka do pliku danych programu PowerShell (.psd1), który zawiera ustawienia formatowania. |
| `-Range` | Int32[] | — | — | Named | — | Zakres, w którym formatowanie powinno mieć miejsce, jako tablica czterech liczb całkowitych: numer wiersza początkowego, numer kolumny początkowej, numer wiersza końcowego, numer kolumny końcowej. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Rekurencyjnie przetwarzaj pliki w podkatalogach. |

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

## Parameter Details

### `-Path <String>`

> Określa ścieżkę do pliku skryptu do sformatowania.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Name`, `FullName`, `ImagePath`, `FileName`, `ScriptFileName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Settings <Object>`

> Tabela skrótów ustawień lub ścieżka do pliku danych programu PowerShell (.psd1), który zawiera ustawienia formatowania.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Range <Int32[]>`

> Zakres, w którym formatowanie powinno mieć miejsce, jako tablica czterech liczb całkowitych: numer wiersza początkowego, numer kolumny początkowej, numer wiersza końcowego, numer kolumny końcowej.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Recurse`

> Rekurencyjnie przetwarzaj pliki w podkatalogach.

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

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/EnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-GenXdevCmdLetInIde.md)
