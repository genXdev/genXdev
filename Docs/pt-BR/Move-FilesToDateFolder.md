# Move-FilesToDateFolder

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Move-FilesToDateFolder -TargetFolder <String> [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DeleteEmptyDirs] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TargetFolderNameDateSyntax <String>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Move-FilesToDateFolder [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TargetFolder` | String | ✅ | — | 0 | — | Pasta raiz de destino onde os arquivos correspondentes serão movidos para subpastas baseadas em data |
| `-Name` | String[] | — | — | 1 | `@('*')` | Nome do arquivo ou padrão a ser pesquisado. O padrão é '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nome do arquivo ou padrão para pesquisar a partir da entrada do pipeline. O padrão é '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | Padrão de expressão regular para pesquisar dentro do conteúdo *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | Caminho base para resolução de caminhos relativos na saída |
| `-Category` | String[] | — | — | Named | — | Only output files belonging to selected categories |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Grau máximo de paralelismo para tarefas de diretório |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Opcional: tempo limite de cancelamento em segundos |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Pesquisar em todas as unidades disponíveis |
| `-Directory` | SwitchParameter | — | — | Named | — | Pesquisar apenas por diretórios |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Inclua arquivos e diretórios |
| `-PassThru` | SwitchParameter | — | — | Named | — | {} |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Incluir fluxos de dados alternativos nos resultados da pesquisa |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Não recorrer a subdiretórios |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Seguir links simbólicos e junctions durante a travessia de diretórios |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Inclua unidades de disco óptico |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Opcional: pesquisar drives específicos |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Opcional: pesquisar drives específicos |
| `-Root` | String[] | — | — | Named | `@()` | Opcional: pesquisar diretórios específicos |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | Impõe a pesquisa apenas em diretórios raiz, removendo componentes de diretório das entradas de nome |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Incluir arquivos não texto ao pesquisar o conteúdo dos arquivos |
| `-NoLinks` | SwitchParameter | — | — | Named | — | Força o modo não supervisionado e não gerará links |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Obtém ou define a diferenciação entre maiúsculas e minúsculas para arquivos e diretórios |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Quando definido, realiza a busca de conteúdo em fluxos de dados alternativos (ADS) |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profundidade máxima de recursão para travessia de diretórios. 0 significa ilimitado. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profundidade máxima de recursão para busca de continuação subindo na árvore. 0 significa desabilitado. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Tamanho máximo do arquivo em bytes a ser incluído nos resultados. 0 significa ilimitado. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Tamanho mínimo de arquivo em bytes para incluir nos resultados. 0 significa sem mínimo. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Incluir apenas arquivos modificados após esta data/hora (UTC) |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Incluir apenas arquivos modificados antes desta data/hora (UTC) |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Atributos de arquivo a pular (ex.: Sistema, Oculto ou Nenhum) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | Excluir arquivos ou diretórios que correspondam a esses padrões curinga |
| `-AllMatches` | SwitchParameter | — | — | Named | — | Procurar mais de uma correspondência em cada linha de texto *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Correspondências diferenciam maiúsculas de minúsculas *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Captura linhas de contexto ao redor das correspondências *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Nome da cultura usado para correspondência de padrões *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | Especifica a codificação para arquivos de destino *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | Apenas a primeira correspondência por arquivo é retornada *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | Desativa o destaque de strings correspondentes na saída *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | O parâmetro NotMatch encontra texto que não corresponde ao padrão *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | Output only matching strings instead of MatchInfo objects *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Use simple string matching instead of regex *(Parameter set: )* |
| `-DeleteEmptyDirs` | SwitchParameter | — | — | Named | — | Excluir diretórios de origem vazios após a movimentação de arquivos |
| `-TargetFolderNameDateSyntax` | String | — | — | Named | `'Year + Month'` | Sintaxe de data do nome da pasta de destino |

## Related Links

- [Move-FilesToDateFolder on GitHub](https://github.com/genXdev/genXdev)
