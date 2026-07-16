# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Nome do arquivo ou padrão para pesquisar. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | Nome do arquivo ou padrão para pesquisar a partir da entrada do pipeline. O padrão é '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Padrão de expressão regular para pesquisar dentro do conteúdo de arquivos *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Only output files belonging to selected categories |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Grau máximo de paralelismo para tarefas de diretório |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Opcional: tempo limite de cancelamento em segundos |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Pesquisar em todas as unidades disponíveis |
| `-File` | SwitchParameter | — | — | Named | — | Search for filenames only and change to folder of first found file |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Include filename matching and change to folder of first found file |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Incluir fluxos de dados alternativos nos resultados da pesquisa |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Não recorrer a subdiretórios |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Seguir links simbólicos e junctions durante a travessia de diretórios |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Inclua unidades de disco óptico |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Opcional: pesquisar drives específicos |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Opcional: pesquisar drives específicos |
| `-Root` | String[] | — | — | Named | `@()` | Opcional: pesquisar pastas base específicas combinadas com os Nomes fornecidos |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Incluir arquivos não textuais (binários, imagens, etc.) ao pesquisar no conteúdo dos arquivos |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Obtém ou define a diferenciação entre maiúsculas e minúsculas para arquivos e diretórios |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Quando definido, realiza a pesquisa de conteúdo em streams de dados alternativos (ADS). Quando não definido, exibe as informações dos arquivos ADS sem pesquisar seu conteúdo. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profundidade máxima de recursão para travessia de diretórios. 0 significa ilimitado. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Tamanho máximo do arquivo em bytes a ser incluído nos resultados. 0 significa ilimitado. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Tamanho mínimo de arquivo em bytes para incluir nos resultados. 0 significa sem mínimo. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Incluir apenas arquivos modificados após esta data/hora (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Incluir apenas arquivos modificados antes desta data/hora (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | Atributos de arquivo a serem ignorados (por exemplo, Sistema, Oculto ou Nenhum). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Exclua arquivos ou diretórios que correspondam a esses padrões curinga (por exemplo, *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Indica que as correspondências do cmdlet diferenciam maiúsculas de minúsculas. Por padrão, as correspondências não diferenciam maiúsculas de minúsculas. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Especifica um nome de cultura para corresponder ao padrão especificado. O parâmetro Culture deve ser usado com o parâmetro SimpleMatch. O comportamento padrão usa a cultura do runspace atual do PowerShell (sessão). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Especifica o tipo de codificação para o arquivo de destino. O valor padrão é utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | O parâmetro NotMatch encontra texto que não corresponde ao padrão especificado. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Indica que o cmdlet usa uma correspondência simples em vez de uma correspondência de expressão regular. Em uma correspondência simples, o Select-String pesquisa a entrada pelo texto no parâmetro Pattern. Ele não interpreta o valor do parâmetro Pattern como uma instrução de expressão regular. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Use Push-Location instead of Set-Location and push the location onto the location stack |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Quando definido, apenas correspondências exatas de nome são consideradas. Por padrão, a correspondência curinga é usada, a menos que o Nome contenha caracteres curinga. |

## Related Links

- [Set-FoundLocation on GitHub](https://github.com/genXdev/genXdev)
