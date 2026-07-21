# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd`

## Synopsis

> Encontra o primeiro arquivo ou pasta correspondente e define o local para ele.

## Description

Este cmdlet ajudará você a mudar rapidamente de diretório usando frases de pesquisa que encontrarão a primeira pasta ou arquivo correspondente (opcional) e mudarão o diretório para ele. Suporta filtragem avançada por conteúdo, atributos de arquivo, tamanho, datas de modificação e muitos outros critérios.

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Nome do arquivo ou padrão a ser pesquisado. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | Nome do arquivo ou padrão para pesquisar a partir da entrada do pipeline. O padrão é '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Padrão de expressão regular para pesquisar dentro do conteúdo do arquivo *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Apenas arquivos pertencentes às categorias selecionadas |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Grau máximo de paralelismo para tarefas de diretório |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Opcional: tempo limite de cancelamento em segundos |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Pesquisar em todas as unidades disponíveis |
| `-File` | SwitchParameter | — | — | Named | — | Pesquisar apenas por nomes de arquivo e alterar para a pasta do primeiro arquivo encontrado |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Incluir correspondência de nome de arquivo e alterar para a pasta do primeiro arquivo encontrado |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Incluir fluxos de dados alternativos nos resultados da pesquisa |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Não recorrer a subdiretórios |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Siga links simbólicos e junções durante a travessia de diretórios |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Incluir unidades de disco óptico |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Opcional: pesquisar unidades específicas |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Opcional: pesquisar unidades específicas |
| `-Root` | String[] | — | — | Named | `@()` | Opcional: pesquisar pastas base específicas combinadas com os Nomes fornecidos |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Incluir arquivos não textuais (binários, imagens, etc.) ao pesquisar o conteúdo dos arquivos |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Obtém ou define a diferenciação entre maiúsculas e minúsculas para arquivos e diretórios |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Quando definido, realiza pesquisa de conteúdo em fluxos de dados alternativos (ADS). Quando não definido, exibe informações do arquivo ADS sem pesquisar seu conteúdo. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profundidade máxima de recursão para travessia de diretório. 0 significa ilimitado. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Tamanho máximo do arquivo em bytes para incluir nos resultados. 0 significa ilimitado. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Tamanho mínimo do arquivo em bytes a incluir nos resultados. 0 significa sem mínimo. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Incluir apenas arquivos modificados após esta data/hora (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Inclua apenas arquivos modificados antes desta data/hora (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | Atributos de arquivo a ignorar (por exemplo, Sistema, Oculto ou Nenhum). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Exclua arquivos ou diretórios que correspondam a esses padrões curinga (por exemplo, *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Indica que as correspondências do cmdlet diferenciam maiúsculas de minúsculas. Por padrão, as correspondências não diferenciam maiúsculas de minúsculas. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Especifica um nome de cultura para corresponder ao padrão especificado. O parâmetro Culture deve ser usado com o parâmetro SimpleMatch. O comportamento padrão usa a cultura do espaço de execução (sessão) atual do PowerShell. *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Especifica o tipo de codificação para o arquivo de destino. O valor padrão é utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | O parâmetro NotMatch localiza texto que não corresponde ao padrão especificado. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Indica que o cmdlet usa uma correspondência simples, em vez de uma correspondência de expressão regular. Em uma correspondência simples, o Select-String pesquisa a entrada pelo texto no parâmetro Pattern. Ele não interpreta o valor do parâmetro Pattern como uma instrução de expressão regular. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Use Push-Location em vez de Set-Location e empurre o local para a pilha de locais |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Quando definido, apenas correspondências exatas de nome são consideradas. Por padrão, a correspondência curinga é usada, a menos que o Nome contenha caracteres curinga. |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

Alterações no primeiro diretório que corresponde ao padrão '*.Console'.

### lcd *.Console

```powershell
lcd *.Console
```

Altera o primeiro diretório correspondente ao padrão '*.Console' usando o alias.

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

Altera para o diretório que contém o primeiro arquivo PowerShell que inclui a palavra 'function'.

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

Altera o diretório que contém o primeiro arquivo com 'test' em seu nome.

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

Altera o diretório que contém o primeiro arquivo cujo conteúdo corresponde ao padrão '1.\d+\.2025'.

## Parameter Details

### `-Name <String>`

> Nome do arquivo ou padrão a ser pesquisado.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-InputObject <Object>`

> Nome do arquivo ou padrão para pesquisar a partir da entrada do pipeline. O padrão é '*'

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | InputObject |

<hr/>
### `-Content <String[]>`

> Padrão de expressão regular para pesquisar dentro do conteúdo do arquivo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@(".*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-Category <String[]>`

> Apenas arquivos pertencentes às categorias selecionadas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filetype` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDegreeOfParallelism <Int32>`

> Grau máximo de paralelismo para tarefas de diretório

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `threads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Opcional: tempo limite de cancelamento em segundos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `maxseconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllDrives`

> Pesquisar em todas as unidades disponíveis

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-File`

> Pesquisar apenas por nomes de arquivo e alterar para a pasta do primeiro arquivo encontrado

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filename` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DirectoriesAndFiles`

> Incluir correspondência de nome de arquivo e alterar para a pasta do primeiro arquivo encontrado

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `FilesAndDirectories` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> Incluir fluxos de dados alternativos nos resultados da pesquisa

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> Não recorrer a subdiretórios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> Siga links simbólicos e junções durante a travessia de diretórios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `symlinks`, `sl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeOpticalDiskDrives`

> Incluir unidades de disco óptico

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchDrives <String[]>`

> Opcional: pesquisar unidades específicas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `drives` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DriveLetter <Char[]>`

> Opcional: pesquisar unidades específicas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> Opcional: pesquisar pastas base específicas combinadas com os Nomes fornecidos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Incluir arquivos não textuais (binários, imagens, etc.) ao pesquisar o conteúdo dos arquivos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Obtém ou define a diferenciação entre maiúsculas e minúsculas para arquivos e diretórios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `(
            [System.IO.MatchCasing]::PlatformDefault)` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Quando definido, realiza pesquisa de conteúdo em fluxos de dados alternativos (ADS). Quando não definido, exibe informações do arquivo ADS sem pesquisar seu conteúdo.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRecursionDepth <Int32>`

> Profundidade máxima de recursão para travessia de diretório. 0 significa ilimitado.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `md`, `depth`, `maxdepth` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int64>`

> Tamanho máximo do arquivo em bytes para incluir nos resultados. 0 significa ilimitado.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxlength`, `maxsize` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileSize <Int64>`

> Tamanho mínimo do arquivo em bytes a incluir nos resultados. 0 significa sem mínimo.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `minsize`, `minlength` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedAfter <DateTime>`

> Incluir apenas arquivos modificados após esta data/hora (UTC).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ma`, `after` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedBefore <DateTime>`

> Inclua apenas arquivos modificados antes desta data/hora (UTC).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `before`, `mb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributesToSkip <IO.FileAttributes>`

> Atributos de arquivo a ignorar (por exemplo, Sistema, Oculto ou Nenhum).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `(
            [System.IO.FileAttributes]::System)` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Exclua arquivos ou diretórios que correspondam a esses padrões curinga (por exemplo, *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@("*\\.git\\*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseSensitive`

> Indica que as correspondências do cmdlet diferenciam maiúsculas de minúsculas. Por padrão, as correspondências não diferenciam maiúsculas de minúsculas.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Culture <String>`

> Especifica um nome de cultura para corresponder ao padrão especificado. O parâmetro Culture deve ser usado com o parâmetro SimpleMatch. O comportamento padrão usa a cultura do espaço de execução (sessão) atual do PowerShell.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Encoding <String>`

> Especifica o tipo de codificação para o arquivo de destino. O valor padrão é utf8NoBOM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"UTF8NoBOM"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NotMatch`

> O parâmetro NotMatch localiza texto que não corresponde ao padrão especificado.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-SimpleMatch`

> Indica que o cmdlet usa uma correspondência simples, em vez de uma correspondência de expressão regular. Em uma correspondência simples, o Select-String pesquisa a entrada pelo texto no parâmetro Pattern. Ele não interpreta o valor do parâmetro Pattern como uma instrução de expressão regular.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Push`

> Use Push-Location em vez de Set-Location e empurre o local para a pilha de locais

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

> Quando definido, apenas correspondências exatas de nome são consideradas. Por padrão, a correspondência curinga é usada, a menos que o Nome contenha caracteres curinga.

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Rename-InProject.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Write-TextFileAtomic.md)
