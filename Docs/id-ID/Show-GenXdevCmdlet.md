# Show-GenXdevCmdlet

> **Module:** GenXdev | **Type:** Function | **Aliases:** `cmds`

## Synopsis

> Menampilkan modul GenXdev PowerShell beserta cmdlet dan aliasnya.

## Description

Mencantumkan semua modul PowerShell GenXdev yang terinstal serta cmdlet dan alias yang terkait. Menggunakan Get-GenXDevCmdlet untuk mengambil informasi cmdlet dan opsional posisi skripnya. Menyediakan penyaringan dan berbagai opsi tampilan.

## Syntax

```powershell
Show-GenXdevCmdlet [[-CmdletName] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-Online] [-OnlyAliases] [-OnlyPublished] [-OnlyReturnModuleNames] [-PassThru] [-ShowTable] [<CommonParameters>]

Show-GenXdevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Pola pencarian untuk memfilter cmdlet 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | Ekspresi reguler untuk mencocokkan definisi cmdlet |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | Nama-nama modul GenXdev untuk dicari 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Lewati pencarian di jalur modul lokal |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Hanya mencari di jalur modul yang diterbitkan |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Cari di file skrip, bukan modul |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Menyertakan direktori skrip selain modul reguler *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Hanya kembalikan nama modul yang unik. |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Lakukan pencocokan tepat alih-alih pencocokan wildcard |
| `-Online` | SwitchParameter | — | — | Named | — | Buka dokumentasi GitHub alih-alih output konsol |
| `-OnlyAliases` | SwitchParameter | — | — | Named | — | Jika ditentukan, hanya menampilkan alias dari cmdlet |
| `-ShowTable` | SwitchParameter | — | — | Named | — | Tampilkan hasil dalam format tabel |
| `-PassThru` | SwitchParameter | — | — | Named | — | The `-PassThru` parameter. |

## Examples

### Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable Lists all cmdlets starting with "Get" in the Console module as a table

```powershell
Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable
Lists all cmdlets starting with "Get" in the Console module as a table
```

### cmds get -m console Lists all cmdlets starting with "Get" in the Console module

```powershell
cmds get -m console
Lists all cmdlets starting with "Get" in the Console module
```

### Show-GenXdevCmdlet -OnlyReturnModuleNames Returns only unique module names

```powershell
Show-GenXdevCmdlet -OnlyReturnModuleNames
Returns only unique module names
```

## Parameter Details

### `-CmdletName <String>`

> Pola pencarian untuk memfilter cmdlet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Filter`, `CmdLet`, `Cmd`, `FunctionName`, `Name` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DefinitionMatches <String>`

> Ekspresi reguler untuk mencocokkan definisi cmdlet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModuleName <String[]>`

> Nama-nama modul GenXdev untuk dicari

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Module`, `BaseModuleName`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-NoLocal`

> Lewati pencarian di jalur modul lokal

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPublished`

> Hanya mencari di jalur modul yang diterbitkan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FromScripts`

> Cari di file skrip, bukan modul

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeScripts`

> Menyertakan direktori skrip selain modul reguler

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ModuleName |

<hr/>
### `-OnlyReturnModuleNames`

> Hanya kembalikan nama modul yang unik.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> Lakukan pencocokan tepat alih-alih pencocokan wildcard

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Online`

> Buka dokumentasi GitHub alih-alih output konsol

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyAliases`

> Jika ditentukan, hanya menampilkan alias dari cmdlet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `aliases`, `nonboring`, `notlame`, `handyonces` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowTable`

> Tampilkan hasil dalam format tabel

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `table`, `grid` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> The `-PassThru` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.ArrayList`
- `Void`

## Related Links

- [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXDevCmdlet.md)
