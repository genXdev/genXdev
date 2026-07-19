# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l

## Synopsis

> Pesquise arquivos e diretórios com opções de filtragem avançadas.

## Description

* Encontre arquivos com Find-Item -> l
        * Pesquisa rápida e multi-thread: utiliza processamento IO paralelo e assíncrono
              com grau máximo de paralelismo configurável (padrão baseado em núcleos da CPU) para varredura eficiente de arquivos e diretórios.
        * Correspondência de Padrões Avançada: Suporta curingas (*, ?), padrões recursivos
              como **, e estruturas de caminho complexas para consultas precisas de arquivos e diretórios.
              **/filename só recorrerá até que o nome do arquivo seja correspondido. vários desses
              padrões são permitidos, desde que sejam precedidos por um nome de arquivo ou
              diretório para corresponder.
              Este analisador de padrões tem o poder do Resolve-Path, mas possui recursos de recursão,
              e suporta apenas * e ? como curingas,
              prevenindo bugs com caminhos com colchetes [ ], eliminando
              a necessidade do parâmetro -LiteralPath, mantendo a integridade
              para seções de caminho sem curingas, ao contrário de uma correspondência curinga no
              caminho completo.
        * Pesquisa de Conteúdo Aprimorada: Integração abrangente de Select-String
              com padrões de expressão regular dentro do conteúdo de arquivos usando o
              parâmetro -Content.
            * Otimização para Arquivos Grandes: Lida com arquivos extremamente grandes com buffers
                  sobrepostos inteligentes e alocação mínima de heap
            * Múltiplas Opções de Correspondência: Encontra todas as correspondências por linha (-AllMatches) ou
                  apenas a primeira correspondência por arquivo (-List)
            * Controle de Sensibilidade a Maiúsculas/Minúsculas: Correspondência sensível a maiúsculas/minúsculas (-CaseSensitive)
                  com opções específicas de cultura (-Culture)
            * Captura de Contexto: Mostra linhas antes e depois das correspondências (-Context) para
                  melhor compreensão
            *Correspondência Inversa: Encontra arquivos que não contêm o padrão (-NotMatch)
            * Formatos de Saída: Saída de string bruta (-Raw), resposta booleana silenciosa (-Quiet),
                  ou objetos MatchInfo completos
            * Tipos de Padrão: Expressões regulares (padrão) ou correspondência de string literal simples
                  (-SimpleMatch)
            * Suporte a Codificação: Especifica codificação de arquivo (-Encoding) para processamento de texto preciso
        * Flexibilidade de Tipo de Caminho: Lida com caminhos relativos, absolutos, UNC, com raiz, e
              fluxos de dados alternativos NTFS (ADS) com pesquisa de conteúdo opcional em fluxos.
        * Suporte a Múltiplas Unidades: Pesquisa em todas as unidades com -AllDrives ou unidades
              específicas via -SearchDrives, incluindo discos ópticos se especificado.
        * Filtragem de Diretórios e Arquivos: Opções para pesquisar apenas diretórios (-Directory),
              ambos arquivos e diretórios (-FilesAndDirectories), ou arquivos com correspondência de conteúdo.
        * Exclusão e Limites: Padrões de exclusão com -Exclude, definir profundidade máxima de recursão
              (-MaxRecursionDepth), limites de tamanho de arquivo (-MaxFileSize, -MinFileSize), e filtros
              de data de modificação (-ModifiedAfter, -ModifiedBefore).
        * Personalização de Saída: Suporta PassThru para objetos FileInfo/DirectoryInfo,
              caminhos relativos, hyperlinks em modo atendido, ou caminhos simples em modo não atendido
              (use -NoLinks em caso de imprevistos para forçar modo não atendido).
        * Otimizações de Performance: Ignora arquivos não texto por padrão para pesquisa de conteúdo
              (substitua com -IncludeNonTextFileMatching), lida com caminhos longos (>260 caracteres),
              e segue symlinks/junctions.
        * Recursos de Segurança: Suporte a timeout (-TimeoutSeconds), ignora itens inacessíveis,
              ignora atributos de sistema por padrão, e previne loops infinitos com rastreamento de nós visitados.

## Syntax

```powershell
Find-Item [[-Name] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [<CommonParameters>]

Find-Item [[-Name] <string[]>] [[-Content] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [-AllMatches] [-CaseSensitive] [-Context <int[]>] [-Culture <string>] [-Encoding <string>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Nome do arquivo ou padrão a ser pesquisado. O padrão é '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nome do arquivo ou padrão a ser pesquisado. O padrão é '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Padrão de expressão regular para pesquisar dentro do conteúdo *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Caminho base para resolução de caminhos relativos na saída |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Grau máximo de paralelismo para tarefas de diretório |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Opcional: tempo limite de cancelamento em segundos |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Pesquisar em todas as unidades disponíveis |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Pesquisar apenas por diretórios |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Inclua arquivos e diretórios |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | {} |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Incluir fluxos de dados alternativos nos resultados da pesquisa |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Não recorrer a subdiretórios |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Seguir links simbólicos e junctions durante a travessia de diretórios |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Inclua unidades de disco óptico |
| `-SearchDrives` | String[] | — | — | Named | — | Opcional: pesquisar drives específicos |
| `-DriveLetter` | Char[] | — | — | Named | — | Opcional: pesquisar drives específicos |
| `-Root` | String[] | — | — | Named | — | Opcional: pesquisar diretórios específicos |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Impõe a pesquisa apenas em diretórios raiz, removendo componentes de diretório das entradas de nome |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Incluir arquivos não texto ao pesquisar o conteúdo dos arquivos |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Força o modo não supervisionado e não gerará links |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Obtém ou define a diferenciação entre maiúsculas e minúsculas para arquivos e diretórios |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | Quando definido, realiza a pesquisa de conteúdo em streams de dados alternativos (ADS). Quando não definido, exibe as informações dos arquivos ADS sem pesquisar seu conteúdo. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profundidade máxima de recursão para travessia de diretórios. 0 significa ilimitado. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profundidade máxima de recursão para continuar pesquisando para cima na árvore em buscas relativas, enquanto nenhum item é encontrado. 0 significa desativado. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Tamanho máximo do arquivo em bytes a ser incluído nos resultados. 0 significa ilimitado. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Tamanho mínimo de arquivo em bytes para incluir nos resultados. 0 significa sem mínimo. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Incluir apenas arquivos modificados após esta data/hora (UTC). |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Incluir apenas arquivos modificados antes desta data/hora (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Atributos de arquivo a serem ignorados (por exemplo, Sistema, Oculto ou Nenhum). |
| `-Exclude` | String[] | — | — | Named | — | Excluir arquivos ou diretórios que correspondam a esses padrões curinga (ex.: *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Indica que o cmdlet procura mais de uma correspondência em cada linha de texto. Sem este parâmetro, Select-String encontra apenas a primeira correspondência em cada linha de texto. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Indica que as correspondências do cmdlet diferenciam maiúsculas de minúsculas. Por padrão, as correspondências não diferenciam maiúsculas de minúsculas. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Captura o número especificado de linhas antes e depois da linha que corresponde ao padrão. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Especifica um nome de cultura para corresponder ao padrão especificado. O parâmetro Culture deve ser usado com o parâmetro SimpleMatch. O comportamento padrão usa a cultura do runspace atual do PowerShell (sessão). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Especifica o tipo de codificação para o arquivo de destino. Suporta valores compatíveis com Select-String e codificações .NET estendidas. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Apenas a primeira instância de texto correspondente é retornada de cada arquivo de entrada. Esta é a maneira mais eficiente de recuperar uma lista de arquivos cujo conteúdo corresponde à expressão regular. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Desativa o destaque de strings correspondentes na saída. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | O parâmetro NotMatch encontra texto que não corresponde ao padrão especificado. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Indica que o cmdlet retorna uma resposta simples em vez de um objeto MatchInfo. O valor retornado é $true se o padrão for encontrado ou $null se o padrão não for encontrado. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Faz com que o cmdlet retorne apenas as strings correspondentes, em vez de objetos MatchInfo. Esse é o comportamento que mais se assemelha aos comandos Unix grep ou Windows findstr.exe. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Indica que o cmdlet usa uma correspondência simples em vez de uma correspondência de expressão regular. Em uma correspondência simples, o Select-String pesquisa a entrada pelo texto no parâmetro Pattern. Ele não interpreta o valor do parâmetro Pattern como uma instrução de expressão regular. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

Encontre arquivos contendo uma palavra específica
Pesquise todos os arquivos no diretório atual e subdiretórios que contenham a palavra "translation".

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Encontre arquivos JavaScript com uma string de versão
Procure por arquivos JavaScript contendo uma string de versão no formato "Versão == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

Liste todos os diretórios
Encontre todos os diretórios no diretório atual e seus subdiretórios.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Encontre arquivos XML e passe objetos
Pesquise todos os arquivos .xml e passe os resultados como objetos através do pipeline.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Incluir fluxos de dados alternados
Pesquise todos os arquivos e inclua seus fluxos de dados alternados nos resultados.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

Pesquisar em todas as unidades
Pesquisar todos os arquivos PDF em todas as unidades disponíveis.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Tempo limite personalizado e paralelismo
Pesquise por arquivos de log com um tempo limite de 5 minutos e paralelismo limitado.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Entrada do pipeline
Passe os caminhos de arquivos do Get-ChildItem para pesquisar arquivos contendo "error".

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Limitar profundidade de recursão
Procurar por arquivos de texto, mas limitar a recursão a 2 níveis de diretório.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Filtrar por tamanho do arquivo
Encontre arquivos maiores que 1MB, mas menores que 10MB.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

Filtrar por data de modificação
Encontre arquivos modificados após 1º de janeiro de 2025.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

Excluir padrões específicos
Pesquisar todos os arquivos, mas excluir arquivos temporários e diretórios bin.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

Pesquisar unidades específicas
Pesquisar por arquivos .docx apenas nas unidades C: e D:.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Pesquisa de conteúdo sensível a maiúsculas/minúsculas
Pesquise arquivos que contenham "Error" (sensível a maiúsculas/minúsculas) em seu conteúdo.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Pesquisar conteúdo de fluxo de dados alternativo
Pesquise arquivos com fluxos de dados alternativos contendo "secret".

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Encontre todas as correspondências por linha
Pesquise todas as ocorrências de "function" em cada linha, não apenas a primeira correspondência.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Mostrar contexto ao redor das correspondências
Exibir 2 linhas antes e 3 linhas depois de cada correspondência para melhor compreensão.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Obter apenas strings correspondentes
Retorne apenas as strings de texto correspondentes, em vez de objetos de correspondência completos.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Verificação booleana simples
Retorne verdadeiro/falso em vez de detalhes de correspondência para verificar se o padrão existe.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Encontrar apenas a primeira correspondência por arquivo
Pare na primeira correspondência em cada arquivo para uma listagem eficiente.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Correspondência literal de string
Pesquise texto exato sem interpretação de regex usando SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Encontre arquivos que NÃO contenham o padrão
Use NotMatch para encontrar arquivos que não contenham o padrão especificado.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Especificar codificação de arquivo
Pesquisar arquivos com codificação específica para processamento preciso de texto.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Comparação textual cultural
Use correspondência específica de cultura com SimpleMatch para texto internacional.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Pesquisa de conteúdo complexa com filtros de arquivo
Combine filtros de tamanho de arquivo, data e conteúdo para pesquisas precisas.

## Related Links

- [Find-Item on GitHub](https://github.com/genXdev/genXdev)
