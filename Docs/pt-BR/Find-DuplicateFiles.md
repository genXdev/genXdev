# Find-DuplicateFiles

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fdf

## Synopsis

> Encontre arquivos duplicados em vários diretórios com base em critérios configuráveis.

## Description

Pesquisa recursivamente em diretórios específicos por arquivos duplicados. Os arquivos são considerados duplicados se o conteúdo for exatamente o mesmo ou se começar com o mesmo conteúdo (para comparação parcial usando o switch -ComparePartial). O cmdlet usa um hash rápido dos bytes iniciais do arquivo para agrupamento eficiente antes de realizar comparações completas de conteúdo. O tamanho desse hash rápido pode ser configurado com o parâmetro -CompareByteLength, permitindo um equilíbrio entre desempenho e precisão na detecção de duplicatas. Apenas arquivos que tenham um comprimento mínimo desse valor CompareByteLength serão considerados para detecção de duplicatas; arquivos menores serão agrupados apenas pelo nome do arquivo.

## Syntax

```powershell
Find-DuplicateFiles [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-CompareByteLength <Int32>] [-ComparePartial] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Find-DuplicateFiles [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
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
| `-ComparePartial` | SwitchParameter | — | — | Named | — | Retornará arquivos com diferentes tamanhos, desde que comecem com o mesmo nome e conteúdo; isso detecta downloads/operações de cópia corrompidos. |
| `-CompareByteLength` | Int32 | — | — | Named | `65536` | Comparação rápida do tamanho em bytes de arquivos, usado para indexação rápida e busca de duplicatas, isso não irá comparar o conteúdo dos arquivos |

## Examples

### Find duplicate text files in the Documents folder based on exact content: Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial

```powershell
Find duplicate text files in the Documents folder based on exact content:
Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial
```

### Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set: (Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose

```powershell
Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set:
(Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose
```

## Related Links

- [Find-DuplicateFiles on GitHub](https://github.com/genXdev/genXdev)
