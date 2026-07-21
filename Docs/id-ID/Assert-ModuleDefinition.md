# Assert-ModuleDefinition

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Membantu dalam melakukan refaktorisasi file kode sumber PowerShell menggunakan bantuan AI.

## Description

Fungsi ini mengotomatiskan proses refaktorisasi kode PowerShell menggunakan AI.
Fungsi ini mengelola templat prompt, mendeteksi IDE aktif (VS Code atau Visual Studio),
dan mengatur alur kerja refaktorisasi melalui otomatisasi keyboard.
Fungsi ini dapat menangani file manifes modul (.psd1) dan skrip modul (.psm1).

## Syntax

```powershell
Assert-ModuleDefinition -ModuleName <String> [-EditPrompt] [-Prompt <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Nama modul |
| `-Prompt` | String | — | — | Named | — | Berikut adalah teks yang diterjemahkan:

# Ringkasan

Menambahkan parameter ValueFromRemainingArguments ke perintah.

# Deskripsi

Cmdlet `Set-ValueFromRemainingArguments` menambahkan parameter ValueFromRemainingArguments ke perintah. Parameter ValueFromRemainingArguments menangani argumen yang tersisa dari perintah yang dimasukkan pengguna. Parameter ini mengambil input string dan menambahkan argumen ke dalam array string.

# Sintaks

```
Set-ValueFromRemainingArguments [[-Command] <string>] [-NoNewline] [<CommonParameters>]
```

# Parameter

## -Command

Menentukan perintah tempat parameter ValueFromRemainingArguments akan ditambahkan.

```
Type: String
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

## -NoNewline

Menunjukkan bahwa cmdlet tidak menambahkan baris baru ke output.

```
Type: SwitchParameter
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

# Inputs

**String**

Anda dapat menggunakan operator pipeline untuk mengirim sebuah perintah ke cmdlet `Set-ValueFromRemainingArguments`.

# Outputs

**None**

Cmdlet ini tidak menghasilkan output.

# Catatan

Cmdlet `Set-ValueFromRemainingArguments` tersedia di PowerShell 7.3 dan yang lebih baru.

# Contoh

### Contoh 1: Menambahkan parameter ValueFromRemainingArguments ke perintah

Contoh ini menambahkan parameter ValueFromRemainingArguments ke perintah `Test-Command`.

```
Set-ValueFromRemainingArguments -Command "Test-Command"
```

### Contoh 2: Menambahkan parameter ValueFromRemainingArguments ke perintah tanpa baris baru

Contoh ini menambahkan parameter ValueFromRemainingArguments ke perintah `Test-Command` dan tidak menambahkan baris baru ke output.

```
Set-ValueFromRemainingArguments -Command "Test-Command" -NoNewline
```

# Kata Kunci Terkait

- [ValueFromRemainingArguments](/powershell/module/microsoft.powershell.core/about/about_parameters?view=powershell-7.3#valuefromremainingarguments)
- [Set-ValueFromRemainingArguments](/powershell/module/microsoft.powershell.utility/set-valuefromremainingarguments?view=powershell-7.3) |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Beralih untuk hanya mengedit prompt AI |

## Examples

### Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt

```powershell
Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt
```

### "MyModule" | Assert-ModuleDefinition

```powershell
"MyModule" | Assert-ModuleDefinition
```

## Parameter Details

### `-ModuleName <String>`

> Nama modul

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> Berikut adalah teks yang diterjemahkan:

# Ringkasan

Menambahkan parameter ValueFromRemainingArguments ke perintah.

# Deskripsi

Cmdlet `Set-ValueFromRemainingArguments` menambahkan parameter ValueFromRemainingArguments ke perintah. Parameter ValueFromRemainingArguments menangani argumen yang tersisa dari perintah yang dimasukkan pengguna. Parameter ini mengambil input string dan menambahkan argumen ke dalam array string.

# Sintaks

```
Set-ValueFromRemainingArguments [[-Command] <string>] [-NoNewline] [<CommonParameters>]
```

# Parameter

## -Command

Menentukan perintah tempat parameter ValueFromRemainingArguments akan ditambahkan.

```
Type: String
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

## -NoNewline

Menunjukkan bahwa cmdlet tidak menambahkan baris baru ke output.

```
Type: SwitchParameter
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

# Inputs

**String**

Anda dapat menggunakan operator pipeline untuk mengirim sebuah perintah ke cmdlet `Set-ValueFromRemainingArguments`.

# Outputs

**None**

Cmdlet ini tidak menghasilkan output.

# Catatan

Cmdlet `Set-ValueFromRemainingArguments` tersedia di PowerShell 7.3 dan yang lebih baru.

# Contoh

### Contoh 1: Menambahkan parameter ValueFromRemainingArguments ke perintah

Contoh ini menambahkan parameter ValueFromRemainingArguments ke perintah `Test-Command`.

```
Set-ValueFromRemainingArguments -Command "Test-Command"
```

### Contoh 2: Menambahkan parameter ValueFromRemainingArguments ke perintah tanpa baris baru

Contoh ini menambahkan parameter ValueFromRemainingArguments ke perintah `Test-Command` dan tidak menambahkan baris baru ke output.

```
Set-ValueFromRemainingArguments -Command "Test-Command" -NoNewline
```

# Kata Kunci Terkait

- [ValueFromRemainingArguments](/powershell/module/microsoft.powershell.core/about/about_parameters?view=powershell-7.3#valuefromremainingarguments)
- [Set-ValueFromRemainingArguments](/powershell/module/microsoft.powershell.utility/set-valuefromremainingarguments?view=powershell-7.3)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EditPrompt`

> Beralih untuk hanya mengedit prompt AI

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

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Assert-GenXdevTest.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/EnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Show-GenXdevCmdLetInIde.md)
