# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> Pesquise arquivos e diretórios com opções de filtragem avançadas.

## Description

```text
* Encontre arquivos com Find-Item -> l
        * Pesquisa rápida multi-thread: utiliza processamento IO paralelo e assíncrono
              com grau máximo configurável de paralelismo
              (padrão baseado em núcleos de CPU) para varredura eficiente de arquivos e diretórios.
        * Correspondência de Padrões Avançada: Suporta curingas (*, ?), padrões recursivos
              como **, e estruturas de caminho complexas para consultas precisas de arquivos e diretórios.
              **/nome_do_arquivo só irá recorrer até que o nome do arquivo seja correspondido. múltiplos desses
              padrões são permitidos, desde que sejam precedidos por um nome de arquivo ou
              nome de diretório para corresponder.
              Este analisador de padrões tem o poder do Resolve-Path, mas possui recursos
              de recursão, e só suporta * e ? como curingas,
              prevenindo bugs com caminhos com colchetes [ ] neles, eliminando
              a necessidade do parâmetro -LiteralPath, enquanto mantém a integridade
              para seções de caminho sem curingas, ao contrário de uma correspondência curinga no
              caminho completo.
        * Pesquisa Aprimorada de Conteúdo: Integração abrangente do Select-String
              com padrões de expressão regular dentro do conteúdo de arquivos usando o
              parâmetro -Content.
            * Otimização para Arquivos Grandes: Lida com arquivos extremamente grandes com buffers
                  sobrepostos inteligentes e alocação mínima de heap
            * Múltiplas Opções de Correspondência: Encontra todas as correspondências por linha (-AllMatches) ou
                  apenas a primeira correspondência por arquivo (-List)
            * Controle de Sensibilidade a Maiúsculas/Minúsculas: Correspondência com diferenciação de maiúsculas/minúsculas (-CaseSensitive)
                  com opções específicas de cultura (-Culture)
            * Captura de Contexto: Mostra linhas antes e depois das correspondências (-Context) para
                  melhor compreensão
            * Correspondência Inversa: Encontra arquivos que não contêm o padrão (-NotMatch)
            * Formatos de Saída: Saída de string bruta (-Raw), resposta booleana silenciosa (-Quiet),
                  ou objetos MatchInfo completos
            * Tipos de Padrão: Expressões regulares (padrão) ou correspondência simples de string literal
                  (-SimpleMatch)
            * Suporte a Codificação: Especifica codificação de arquivo (-Encoding) para processamento preciso de texto
        * Flexibilidade de Tipo de Caminho: Lida com caminhos relativos, absolutos, UNC, enraizados, e
              fluxos de dados alternativos NTFS (ADS) com pesquisa opcional de conteúdo em fluxos.
        * Suporte a Múltiplas Unidades: Pesquisa em todas as unidades com -AllDrives ou unidades
              específicas via -SearchDrives, incluindo discos ópticos se especificado.
        * Filtragem de Diretório e Arquivo: Opções para pesquisar apenas diretórios (-Directory),
              tanto arquivos quanto diretórios (-FilesAndDirectories), ou arquivos com conteúdo correspondente.
        * Exclusão e Limites: Padrões de exclusão com -Exclude, definir profundidade máxima de recursão
              (-MaxRecursionDepth), limites de tamanho de arquivo (-MaxFileSize, -MinFileSize), e filtros
              de data de modificação (-ModifiedAfter, -ModifiedBefore).
        * Customização de Saída: Suporta PassThru para objetos FileInfo/DirectoryInfo,
              caminhos relativos, hyperlinks em modo assistido, ou caminhos simples em modo não assistido
              (use -NoLinks em caso de imprevistos para forçar o modo não assistido).
        * Otimizações de Desempenho: Ignora arquivos não-texto por padrão para pesquisa de conteúdo
              (substitua com -IncludeNonTextFileMatching), lida com caminhos longos (>260 caracteres),
              e segue symlinks/junctions.
        * Recursos de Segurança: Suporte a timeout (-TimeoutSeconds), ignora itens inacessíveis,
              pula atributos de sistema por padrão, e previne loops infinitos com rastreamento de nós visitados.

        * Categorias válidas para o parâmetro -Category são: Imagens, Vídeos, Música, Documentos, Planilhas, Apresentações, Arquivos, Instaladores, Executáveis, Bancos de Dados, Arquivos de Design, Ebooks, Legendas, Fontes, Arquivos de Email, Modelos 3D, Ativos de Jogos, Arquivos Médicos, Arquivos Financeiros, Arquivos Legais, Código Fonte, Scripts, Marcação e Dados, Configuração, Logs, Arquivos de Texto, Arquivos da Web, Letras e Acordes de Música, Escrita Criativa, Receitas, Arquivos de Pesquisa
```
## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Nome do arquivo ou padrão a ser procurado. O padrão é '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nome do arquivo ou padrão a ser procurado. O padrão é '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Padrão de expressão regular para pesquisar no conteúdo *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Caminho base para resolver caminhos relativos na saída |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Grau máximo de paralelismo para tarefas de diretório |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Opcional: tempo limite de cancelamento em segundos |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Pesquisar em todas as unidades disponíveis |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Pesquise apenas diretórios |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Inclua tanto arquivos quanto diretórios |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Analisar entradas de log de eventos que correspondem a itens específicos como objetos |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Incluir fluxos de dados alternativos nos resultados da pesquisa |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Não recorrer a subdiretórios |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Siga links simbólicos e junções durante a travessia de diretórios |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Incluir unidades de disco óptico |
| `-SearchDrives` | String[] | — | — | Named | — | Opcional: pesquisar unidades específicas |
| `-DriveLetter` | Char[] | — | — | Named | — | Opcional: pesquisar unidades específicas |
| `-Root` | String[] | — | — | Named | — | Opcional: pesquisar diretórios específicos |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Impõe a pesquisa apenas em diretórios Raiz, removendo componentes de diretório das entradas de Nome |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Incluir arquivos não texto ao pesquisar conteúdo de arquivos |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Força o modo não assistido e não gerará links |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Obtém ou define a diferenciação entre maiúsculas e minúsculas para arquivos e diretórios |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | Quando definido, realiza pesquisa de conteúdo em fluxos de dados alternativos (ADS). Quando não definido, exibe informações do arquivo ADS sem pesquisar seu conteúdo. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profundidade máxima de recursão para travessia de diretório. 0 significa ilimitado. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profundidade máxima de recursão para continuar pesquisando acima na árvore para pesquisas relativas, enquanto nenhum item é encontrado. 0 significa desabilitado. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Tamanho máximo do arquivo em bytes para incluir nos resultados. 0 significa ilimitado. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Tamanho mínimo do arquivo em bytes a incluir nos resultados. 0 significa sem mínimo. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Incluir apenas arquivos modificados após esta data/hora (UTC). |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Inclua apenas arquivos modificados antes desta data/hora (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Atributos de arquivo a ignorar (por exemplo, Sistema, Oculto ou Nenhum). |
| `-Exclude` | String[] | — | — | Named | — | Exclua arquivos ou diretórios que correspondam a esses padrões curinga (por exemplo, *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Indica que o cmdlet procura por mais de uma correspondência em cada linha de texto. Sem esse parâmetro, Select-String encontra apenas a primeira correspondência em cada linha de texto. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Indica que as correspondências do cmdlet diferenciam maiúsculas de minúsculas. Por padrão, as correspondências não diferenciam maiúsculas de minúsculas. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Captura o número especificado de linhas antes e depois da linha que corresponde ao padrão. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Especifica um nome de cultura para corresponder ao padrão especificado. O parâmetro Culture deve ser usado com o parâmetro SimpleMatch. O comportamento padrão usa a cultura do espaço de execução (sessão) atual do PowerShell. *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Especifica o tipo de codificação para o arquivo de destino. Suporta valores compatíveis com Select-String e codificações .NET estendidas. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Apenas a primeira instância do texto correspondente é retornada de cada arquivo de entrada. Esta é a maneira mais eficiente de obter uma lista de arquivos que possuem conteúdo correspondente à expressão regular. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Desabilita o realce de strings correspondentes na saída. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | O parâmetro NotMatch localiza texto que não corresponde ao padrão especificado. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Indica que o cmdlet retorna uma resposta simples em vez de um objeto MatchInfo. O valor retornado é $true se o padrão for encontrado ou $null se o padrão não for encontrado. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Faz com que o cmdlet gere apenas as strings correspondentes, em vez de objetos MatchInfo. Esse é o resultado que mais se assemelha ao comportamento dos comandos Unix grep ou Windows findstr.exe. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Indica que o cmdlet usa uma correspondência simples, em vez de uma correspondência de expressão regular. Em uma correspondência simples, o Select-String pesquisa a entrada pelo texto no parâmetro Pattern. Ele não interpreta o valor do parâmetro Pattern como uma instrução de expressão regular. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

Encontre arquivos contendo uma palavra específica
Pesquise todos os arquivos no diretório atual e subdiretórios que contenham a palavra "tradução".

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Encontrar arquivos JavaScript com uma string de versão
Pesquise por arquivos JavaScript contendo uma string de versão no formato "Version == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

Listar todos os diretórios
Encontre todos os diretórios no diretório atual e seus subdiretórios.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Localizar arquivos XML e passar objetos
Procure por todos os arquivos .xml e passe os resultados como objetos pelo pipeline.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Incluir fluxos de dados alternativos
Pesquise todos os arquivos e inclua seus fluxos de dados alternativos nos resultados.

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

Tempo limite e paralelismo personalizados
Pesquise arquivos de log com um tempo limite de 5 minutos e paralelismo limitado.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Entrada de pipeline
Passe caminhos de arquivos do Get-ChildItem para pesquisar arquivos contendo "error".

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Limitar profundidade de recursão
Pesquisar arquivos de texto, mas limitar a recursão a 2 níveis de diretório.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Filtrar por tamanho de arquivo
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
Pesquise todos os arquivos, mas exclua arquivos temporários e diretórios bin.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

Pesquisar unidades específicas
Pesquise arquivos .docx apenas nas unidades C: e D:.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Pesquisa de conteúdo com diferenciação de maiúsculas e minúsculas
Pesquisar arquivos que contenham "Error" (diferenciando maiúsculas de minúsculas) em seu conteúdo.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Pesquisar conteúdo de fluxo de dados alternativo
Procurar por arquivos com fluxos de dados alternativos contendo "segredo".

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Encontre todas as correspondências por linha
Procure por todas as ocorrências de "function" em cada linha, não apenas a primeira correspondência.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Mostrar contexto ao redor das correspondências
Exibir 2 linhas antes e 3 linhas após cada correspondência para melhor compreensão.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Obter apenas strings correspondentes
Retorna apenas as strings de texto correspondentes em vez de objetos de correspondência completos.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Verificação booleana simples
Retorna verdadeiro/falso em vez de detalhes de correspondência para verificar se o padrão existe.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Encontre apenas a primeira correspondência por arquivo
Pare na primeira correspondência em cada arquivo para listagem eficiente de arquivos.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Correspondência de string literal
Pesquise por texto exato sem interpretação de regex usando SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Encontrar arquivos que NÃO contenham um padrão
Use o parâmetro NotMatch para encontrar arquivos que não contêm o padrão especificado.

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

Comparação de texto cultural
Use correspondência específica de cultura com SimpleMatch para texto internacional.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Pesquisa de conteúdo complexa com filtros de arquivo
Combine filtros de tamanho de arquivo, data e conteúdo para pesquisas precisas.

## Parameter Details

### `-Name <String[]>`

> Nome do arquivo ou padrão a ser procurado. O padrão é '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> Nome do arquivo ou padrão a ser procurado. O padrão é '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Content <String[]>`

> Padrão de expressão regular para pesquisar no conteúdo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> Caminho base para resolver caminhos relativos na saída

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> The `-Category` parameter.

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
### `-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Directory`

> Pesquise apenas diretórios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesAndDirectories`

> Inclua tanto arquivos quanto diretórios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `DirectoriesAndFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Analisar entradas de log de eventos que correspondem a itens específicos como objetos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> Incluir fluxos de dados alternativos nos resultados da pesquisa

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> Opcional: pesquisar diretórios específicos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LimitToRoot`

> Impõe a pesquisa apenas em diretórios Raiz, removendo componentes de diretório das entradas de Nome

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `limit` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Incluir arquivos não texto ao pesquisar conteúdo de arquivos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLinks`

> Força o modo não assistido e não gerará links

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `nl`, `ForceUnattenedMode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Obtém ou define a diferenciação entre maiúsculas e minúsculas para arquivos e diretórios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching ` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Quando definido, realiza pesquisa de conteúdo em fluxos de dados alternativos (ADS). Quando não definido, exibe informações do arquivo ADS sem pesquisar seu conteúdo.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
### `-MaxSearchUpDepth <Int32>`

> Profundidade máxima de recursão para continuar pesquisando acima na árvore para pesquisas relativas, enquanto nenhum item é encontrado. 0 significa desabilitado.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxupward` |
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
### `-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
### `-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `None` |
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
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> Indica que o cmdlet procura por mais de uma correspondência em cada linha de texto. Sem esse parâmetro, Select-String encontra apenas a primeira correspondência em cada linha de texto.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-CaseSensitive`

> Indica que as correspondências do cmdlet diferenciam maiúsculas de minúsculas. Por padrão, as correspondências não diferenciam maiúsculas de minúsculas.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Context <Int32[]>`

> Captura o número especificado de linhas antes e depois da linha que corresponde ao padrão.

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

> Especifica o tipo de codificação para o arquivo de destino. Suporta valores compatíveis com Select-String e codificações .NET estendidas.

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
### `-List`

> Apenas a primeira instância do texto correspondente é retornada de cada arquivo de entrada. Esta é a maneira mais eficiente de obter uma lista de arquivos que possuem conteúdo correspondente à expressão regular.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NoEmphasis`

> Desabilita o realce de strings correspondentes na saída.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Quiet`

> Indica que o cmdlet retorna uma resposta simples em vez de um objeto MatchInfo. O valor retornado é $true se o padrão for encontrado ou $null se o padrão não for encontrado.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Raw`

> Faz com que o cmdlet gere apenas as strings correspondentes, em vez de objetos MatchInfo. Esse é o resultado que mais se assemelha ao comportamento dos comandos Unix grep ou Windows findstr.exe.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Find-DuplicateFiles.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Write-TextFileAtomic.md)
