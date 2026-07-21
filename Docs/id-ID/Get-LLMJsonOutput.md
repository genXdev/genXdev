# Get-LLMJsonOutput

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> # Get-Process
## SYNOPSIS
Mendapatkan proses-proses yang berjalan di komputer lokal.

## SYNTAX

### Name (Default)

Get-Process [[-Name] <String[]>] [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]


### Id

Get-Process -Id <Int32[]> [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]


### InputObject (Pipeline)

Get-Process -InputObject <Process[]> [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]


## DESCRIPTION
Cmdlet `Get-Process` mengambil proses-proses yang berjalan di komputer lokal. Anda dapat menentukannya berdasarkan nama proses atau ID proses (PID), atau melalui objek proses yang dikirim melalui pipa.

Secara default, `Get-Process` mengembalikan informasi proses yang mencakup waktu prosesor, penggunaan memori, dan detail lainnya. Anda dapat menggunakan parameter `-Module` untuk mendapatkan informasi tentang modul yang dimuat oleh suatu proses, atau `-FileVersionInfo` untuk mendapatkan informasi versi file dari program yang berjalan.

## PARAMETERS

### -Name
Menentukan satu atau lebih nama proses untuk diambil. Wildcard didukung. Parameter ini menerima input melalui pipa berdasarkan nama properti.

| Tipe: | String[] |
| Posisi: | 0 |
| Nilai default: | Tidak ada |
| Menerima input pipa: | True (ByPropertyName) |
| Menerima wildcard: | True |

### -Id
Menentukan satu atau lebih ID proses untuk diambil. Parameter ini wajib ketika digunakan.

| Tipe: | Int32[] |
| Posisi: | Bernama |
| Nilai default: | Tidak ada |
| Menerima input pipa: | True (ByPropertyName) |
| Menerima wildcard: | False |

### -InputObject
Menerima satu atau lebih objek proses. Masukkan variabel yang berisi objek, atau ketik perintah atau ekspresi yang mendapatkan objek.

| Tipe: | Process[] |
| Posisi: | Bernama |
| Nilai default: | Tidak ada |
| Menerima input pipa: | True (ByValue) |
| Menerima wildcard: | False |

### -ComputerName
Menentukan komputer jarak jauh. Nilai default adalah komputer lokal. Parameter ini hanya menerima satu nama komputer.

| Tipe: | String[] |
| Posisi: | Bernama |
| Nilai default: | Local computer |
| Menerima input pipa: | True (ByPropertyName) |
| Menerima wildcard: | False |

### -Module
Mendapatkan informasi tentang modul yang telah dimuat oleh proses.

| Tipe: | SwitchParameter |
| Posisi: | Bernama |
| Nilai default: | False |
| Menerima input pipa: | False |
| Menerima wildcard: | False |

### -FileVersionInfo
Mendapatkan informasi versi file untuk program yang berjalan di proses.

| Tipe: | SwitchParameter |
| Posisi: | Bernama |
| Nilai default: | False |
| Menerima input pipa: | False |
| Menerima wildcard: | False |

### <CommonParameters>
Cmdlet ini mendukung parameter umum: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, dan OutVariable. Untuk informasi lebih lanjut, lihat [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String[]
Anda dapat mengirim nama proses ke `Get-Process` melalui pipa.

### System.Int32[]
Anda dapat mengirim ID proses ke `Get-Process` melalui pipa.

### System.Diagnostics.Process[]
Anda dapat mengirim objek proses ke `Get-Process` melalui pipa.

## OUTPUTS

### System.Diagnostics.Process
Secara default, `Get-Process` mengembalikan objek `System.Diagnostics.Process`.

### System.Diagnostics.ProcessModule
Jika Anda menggunakan parameter `-Module`, outputnya adalah objek `ProcessModule`.

### System.Diagnostics.FileVersionInfo
Jika Anda menggunakan parameter `-FileVersionInfo`, outputnya adalah objek `FileVersionInfo`.

## NOTES
Cmdlet `Get-Process` mirip dengan perintah `ps` di sistem Unix atau Linux.

## EXAMPLE 1
powershell
Get-Process

Perintah ini mendapatkan daftar semua proses yang berjalan di komputer lokal.

## EXAMPLE 2
powershell
Get-Process -Name "notepad"

Perintah ini mendapatkan proses Notepad yang berjalan.

## EXAMPLE 3
powershell
Get-Process -Id 1234

Perintah ini mendapatkan proses dengan ID proses 1234.

## EXAMPLE 4
powershell
Get-Process -Name "n*" -Module

Perintah ini mendapatkan modul untuk semua proses yang namanya dimulai dengan "n".

## EXAMPLE 5
powershell
Get-Process -Name "notepad" -FileVersionInfo

Perintah ini mendapatkan informasi versi file untuk proses Notepad.

## RELATED LINKS
[Stop-Process](Stop-Process.md)
[Wait-Process](Wait-Process.md)
[Debug-Process](Debug-Process.md)
[about_Processes](about_Processes.md)

## Syntax

```powershell
Get-LLMJsonOutput -Text <String> [[-ResponseFormat] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | ✅ | — | 0 | — | @{response==== JSON OUTPUT FORMAT ===
Hanya balas dengan JSON yang valid. Tanpa markdown fences, tanpa komentar.
{"response":{"response":"..."}}

Anda adalah asisten yang membantu yang dirancang untuk mengeluarkan JSON.} |
| `-ResponseFormat` | String | — | — | 1 | — | @{response=Teks yang diberikan untuk diterjemahkan kosong.} |

## Examples

### Get-LLMJsonOutput -Teks '

Get-LLMJsonOutput -Teks '

```json
{"result": "hello"}
```

@{response=Ekstrak: {"result": "hello"}}

### $schema = '{"type":"json_schema","json_schema":{"name":"r","schema":{"type":"object"}}}' Get-LLMJsonOutput -Text 'The answer is {"key": "value"}' -ResponseFormat $schema

```powershell
$schema = '{"type":"json_schema","json_schema":{"name":"r","schema":{"type":"object"}}}'
Get-LLMJsonOutput -Text 'The answer is {"key": "value"}' -ResponseFormat $schema
```

@{response=Ekstrak: {"key": "value"}}

## Parameter Details

### `-Text <String>`

> @{response==== JSON OUTPUT FORMAT ===
Hanya balas dengan JSON yang valid. Tanpa markdown fences, tanpa komentar.
{"response":{"response":"..."}}

Anda adalah asisten yang membantu yang dirancang untuk mengeluarkan JSON.}

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResponseFormat <String>`

> @{response=Teks yang diberikan untuk diterjemahkan kosong.}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-JsonExampleFromSchema.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/WriteFileOutput.md)
