# New-LLMAudioChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmaudiochat`

## Synopsis

> Cria uma sessão de chat de áudio interativa com um modelo LLM.

## Description

Inicia uma conversa baseada em voz com um modelo de linguagem, suportando entrada e saída de áudio. A função lida com gravação de áudio, transcrição, consultas ao modelo e respostas de texto-para-fala. Suporta vários modelos de linguagem e diversas opções de configuração, incluindo gerenciamento de janelas, aceleração de GPU e recursos avançados de processamento de áudio.

## Syntax

```powershell
New-LLMAudioChat [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Single>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <ScriptBlock[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LanguageIn <String>] [-LengthPenalty <Single>] [-LLMQueryType <String>] [-LogProbThreshold <Single>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-ModelType <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Single>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-ShowToolChainInvocations] [-SilenceThreshold <Int32>] [-SkipSession] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | ---
external help file: Microsoft.PowerShell.Commands.Utility.dll-Help.xml
Locale: pt-BR
Module Name: Microsoft.PowerShell.Utility
online version: https://aka.ms/powershell-101/reference/5.1/Microsoft.PowerShell.Utility/Get-FileHash
schema: 2.0.0
---

# Get-FileHash

## SINOPSE
Calcula o valor de hash de um arquivo usando um algoritmo de hash especificado.

## SINTAXE

### Caminho (Padrão)
```
Get-FileHash [-Path] <CaminhoDoArquivo[]> [[-Algorithm] <CadeiaDeCaracteres>] [<CommonParameters>]
```

### LiteralPath
```
Get-FileHash -LiteralPath <CadeiaDeCaracteres[]> [[-Algorithm] <CadeiaDeCaracteres>] [<CommonParameters>]
```

### Stream (Stream)
```
Get-FileHash -InputStream <Fluxo> [[-Algorithm] <CadeiaDeCaracteres>] [<CommonParameters>]
```

## DESCRIÇÃO

O cmdlet `Get-FileHash` calcula o valor de hash de um arquivo usando um algoritmo de hash especificado. Um valor de hash é um valor único que corresponde ao conteúdo do arquivo. Em vez de identificar o conteúdo de um arquivo pelo seu nome de arquivo, extensão ou outra designação, um hash atribui um valor único ao conteúdo de um arquivo. Nomes de arquivo e extensões podem ser alterados sem alterar o conteúdo do arquivo e sem alterar o valor de hash. Da mesma forma, alterar o conteúdo do arquivo, mas não o nome do arquivo ou extensão, alterará o valor de hash.

`Get-FileHash` produz um valor de hash para um arquivo específico. Você pode executar um comando `Get-FileHash` em um arquivo baixado da Internet para verificar se o hash corresponde ao valor publicado pelo editor do download. Se os valores de hash corresponderem, o arquivo provavelmente não foi alterado. No entanto, se os valores de hash não corresponderem, o arquivo pode ter sido adulterado.

`Get-FileHash` usa os seguintes algoritmos de hash: SHA1, SHA256, SHA384, SHA512, MD5.

## EXEMPLOS

### Exemplo 1: Calcular o valor de hash de um arquivo

Este comando calcula o valor de hash do arquivo `/etc/apt/sources.list` usando o algoritmo SHA256. A saída é enviada para o pipeline. `Get-FileHash` calcula o hash de um arquivo e o `Out-File` grava o valor de hash em um arquivo.

```powershell
Get-FileHash /etc/apt/sources.list | Out-File -FilePath .\hash.md
```

### Exemplo 2: Calcular o valor de hash de um fluxo

Este comando calcula o valor de hash de um fluxo usando o algoritmo MD5. O fluxo é criado usando `[System.IO.MemoryStream]::new()`. O valor de hash é exibido no console.

```powershell
$stream = [System.IO.MemoryStream]::new()
Get-FileHash -InputStream $stream -Algorithm MD5
```

## PARÂMETROS

### -Algorithm

Especifica a função de hash criptográfica a ser usada para calcular o valor de hash de um arquivo. Os valores aceitáveis para este parâmetro são:

- SHA1
- SHA256
- SHA384
- SHA512
- MD5

Se nenhum valor for especificado, ou se o parâmetro for omitido, o valor padrão é SHA256.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: SHA1, SHA256, SHA384, SHA512, MD5

Required: False
Position: 1
Default value: SHA256
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputStream

Especifica o fluxo de entrada.

```yaml
Type: Stream
Parameter Sets: Stream
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LiteralPath

Especifica o caminho para um arquivo. Ao contrário do parâmetro **Path**, o valor do parâmetro **LiteralPath** é usado exatamente como foi digitado. Nenhum caractere é interpretado como caractere curinga. Se o caminho incluir caracteres de escape, coloque-o entre aspas simples.

```yaml
Type: String[]
Parameter Sets: LiteralPath
Aliases: PSPath

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Path

Especifica o caminho para um ou mais arquivos como uma matriz. Caracteres curinga são permitidos.

```yaml
Type: String[]
Parameter Sets: Path
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: True
```

### CommonParameters

Este cmdlet suporta os parâmetros comuns: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction e -WarningVariable. Para mais informações, consulte about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216).

## ENTRADAS

### System.String

Você pode canalizar uma cadeia de caracteres contendo um caminho para um arquivo para `Get-FileHash`.

## SAÍDAS

### Microsoft.Powershell.Utility.FileHash

`Get-FileHash` retorna um objeto que representa o valor de hash calculado do arquivo.

## NOTAS

Para obter mais informações, consulte about_Hash e Funções hash.

## TÓPICOS RELACIONADOS

- about_Hash
- Funções hash
- Format-List
- Out-File |
| `-Instructions` | String | — | — | 1 | — | ---
external help file: Pode-help.xml
Module Name: Pode
online version:
PodeType: classes
schema: 2.0.0
---

# LimitEntry

## SINOPSE
Define um modelo para limites de taxa.

## DESCRIÇÃO
Define um modelo para limites de taxa. Usado com `Add-PodeRouteLimit`.

## EXEMPLO

### Exemplo 1
```powershell
$entry = [Pode.Models.LimitEntry]@{
    Name = 'ApiLimit'
    Feature = 'Pode.Web'
    Route = @{
        Methods = @('GET', 'POST')
        Path = '/api/users'
    }
    Limit = @{
        Type = 'FixedWindow'
        MaxRequests = 1000
        WindowDuration = @{
            Value = 1
            Type = 'Hour'
        }
    }
}
```

## PROPRIEDADES

- `Name`: O nome do limite.
- `Feature`: O nome do recurso ao qual o limite será aplicado.
- `Route`: Objeto da rota com `Methods` e `Path`.
- `Limit`: As configurações do limite com `Type`, `MaxRequests` e `WindowDuration` (`Value` e `Type`).
- `Type`: Define o tipo de limite (`IP`, `Route`, `User`, `Header`).
- `Value`: O valor correspondente ao tipo. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Matriz de caminhos de arquivo para anexar |
| `-ModelType` | String | — | — | Named | `'SmallEn'` | Tipo de modelo Whisper a usar, padrão é LargeV3Turbo |
| `-AudioTemperature` | Double | — | — | Named | `0.5` | Temperatura para reconhecimento de entrada de áudio (0,0-1,0) |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para aleatoriedade da resposta (0,0-1,0) |
| `-TemperatureResponse` | Double | — | — | Named | `0.01` | O parâmetro de temperatura para controlar a aleatoriedade da resposta. |
| `-LanguageIn` | String | — | — | Named | — | Define o idioma a ser detectado |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Número de threads de CPU a serem usados, o padrão é 0 (automático) |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex para suprimir tokens da saída |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamanho do contexto de áudio |
| `-SilenceThreshold` | Int32 | — | — | Named | `30` | Limiar de detecção de silêncio (0..32767, padrão é 30) |
| `-LengthPenalty` | Single | — | — | Named | — | Penalidade de comprimento |
| `-EntropyThreshold` | Single | — | — | Named | — | Limite de entropia |
| `-LogProbThreshold` | Single | — | — | Named | — | Limiar de probabilidade logarítmica |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Limiar de fala |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | O tipo da consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão de modelo a ser usado para operações de IA |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nível de detalhe da imagem |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indica que o LLM não tem suporte para schemas JSON |
| `-ShowToolChainInvocations` | SwitchParameter | — | — | Named | — | Mostra invocações da cadeia de ferramentas no console |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
| `-ResponseFormat` | String | — | — | Named | `$null` | Abaixo está o texto traduzido para português (Brasil), preservando a estrutura e os elementos técnicos sem alterar comandos, variáveis ou identificadores:

```powershell
# Get-Help Get-Process -Full

NOME
    Get-Process

SINOPSE
    Obtém todos os processos em execução no computador local ou em um computador remoto, ou um processo específico.

SINTAXE
    Get-Process [[-Name] <string[]>] [-ComputerName <string[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]
    
    Get-Process -Id <int[]> [-ComputerName <string[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]
    
    Get-Process [-InputObject <Process[]>] [-ComputerName <string[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]

DESCRIÇÃO
    O cmdlet Get-Process obtém um ou mais processos em execução no computador local ou em um computador remoto. Especificando o nome do processo ou o ID do processo (PID), você pode obter um processo específico. Você também pode canalizar um objeto de processo para este cmdlet.

    Por padrão, este cmdlet retorna um objeto de processo que contém informações detalhadas sobre o processo, como o nome do processo, ID, classe de prioridade, memória de trabalho, etc. Você pode usar os parâmetros -Module e -FileVersionInfo para obter informações adicionais sobre o processo.

    Este cmdlet é semelhante ao comando 'tasklist' do Windows, mas fornece mais funcionalidades e integração com o PowerShell.

PARÂMETROS
    -ComputerName <string[]>
        Especifica os computadores nos quais obter os processos. O padrão é o computador local.

        Digite o nome NetBIOS, o endereço IP ou o nome de domínio totalmente qualificado de um ou mais computadores. Para especificar o computador local, digite o nome do computador, um ponto (.) ou 'localhost'.

        Este parâmetro não depende da comunicação remota do Windows PowerShell. Você pode usar o parâmetro ComputerName de Get-Process mesmo se o computador não estiver configurado para execução remota.

    -FileVersionInfo [<SwitchParameter>]
        Indica que este cmdlet obtém as informações de versão do arquivo para o arquivo do processo.

        Para obter as informações de versão do arquivo de um processo, você deve ter permissão de Administrador no computador.

        Este parâmetro foi introduzido no Windows PowerShell 3.0.

    -Id <int[]>
        Especifica um ou mais processos pelo ID do processo (PID). Para especificar vários IDs, use vírgulas para separá-los. Para encontrar o PID de um processo, digite 'tasklist' no prompt de comando ou use Get-Process sem parâmetros.

    -InputObject <Process[]>
        Especifica um ou mais objetos de processo. Insira uma variável que contenha os objetos, ou digite um comando ou expressão que obtenha os objetos.

    -Module [<SwitchParameter>]
        Indica que este cmdlet obtém os módulos carregados pelo processo.

        Para obter os módulos de um processo, você deve ter permissão de Administrador no computador.

        Este parâmetro foi introduzido no Windows PowerShell 3.0.

    -Name <string[]>
        Especifica um ou mais nomes de processos. Você pode digitar vários nomes de processos (separados por vírgulas) e usar curingas. O nome do parâmetro ('Name') é opcional.

    <CommonParameters>
        Este cmdlet suporta os parâmetros comuns: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable e OutVariable. Para obter mais informações, consulte about_CommonParameters.

ENTRADAS
    System.Diagnostics.Process
        Você pode canalizar um objeto de processo para este cmdlet.

SAÍDAS
    System.Diagnostics.Process
        Por padrão, este cmdlet retorna um objeto System.Diagnostics.Process para cada processo.

    System.Diagnostics.FileVersionInfo
        Se você usar o parâmetro FileVersionInfo, este cmdlet retornará um objeto FileVersionInfo para cada processo.

    System.Diagnostics.ProcessModule
        Se você usar o parâmetro Module, este cmdlet retornará um objeto ProcessModule para cada processo.

NOTAS
    * A saída padrão de Get-Process é uma tabela que mostra o identificador do processo (Handles), a Contagem de threads (NPM(K)), a Memória de trabalho (PM(K)), a Memória virtual (WS(K)), a Memória privada (VM(M)), a CPU (CPU(s)) e o ID do processo (Id).
    * Você pode obter ajuda detalhada sobre este cmdlet digitando 'Get-Help Get-Process -Full'.

EXEMPLOS
    Exemplo 1: Obtém todos os processos em execução no computador local
        Get-Process

    Exemplo 2: Obtém um processo específico pelo nome
        Get-Process -Name notepad

    Exemplo 3: Obtém um processo pelo seu ID
        Get-Process -Id 1234

    Exemplo 4: Obtém informações de versão do arquivo
        Get-Process -Name notepad -FileVersionInfo

    Exemplo 5: Obtém módulos carregados por um processo
        Get-Process -Name notepad -Module

    Exemplo 6: Obtém processos de um computador remoto
        Get-Process -ComputerName Server01

    Exemplo 7: Usa um objeto de processo como entrada
        $p = Get-Process -Name notepad
        $p | Get-Process -FileVersionInfo
``` |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` | Irá produzir apenas blocos de marcação dos tipos especificados |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Matriz de definições de comandos PowerShell para usar como ferramentas |
| `-Functions` | ScriptBlock[] | — | — | Named | — | Matriz de ScriptBlock de ferramentas a serem expostas ao LLM (passagem direta para Invoke-LLMQuery) |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Matriz de nomes de funções de ferramenta que não exigem confirmação (passagem direta para Invoke-LLMQuery) |
| `-ChatMode` | String | — | — | Named | — | Modo de chat para consulta LLM (passagem para Invoke-LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Comprimento máximo de retorno da chamada de ferramenta (passagem para Invoke-LLMQuery) |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | # Get-Service

## SINTAXE
```
Get-Service
    [[-Name] <String[]>]
    [-ComputerName <String[]>]
    [-DependentServices]
    [-RequiredServices]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [<CommonParameters>]
```

```
Get-Service
    [-ComputerName <String[]>]
    [-DependentServices]
    [-RequiredServices]
    [-DisplayName <String[]>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [<CommonParameters>]
```

```
Get-Service
    [-ComputerName <String[]>]
    [-DependentServices]
    [-RequiredServices]
    [-InputObject <ServiceController[]>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [<CommonParameters>]
```

## DESCRIÇÃO

O cmdlet `Get-Service` recupera objetos que representam os serviços em um computador, incluindo serviços em execução e serviços parados. Por padrão, quando `Get-Service` é executado sem parâmetros, todos os serviços no computador local são retornados.

Você pode direcionar `Get-Service` pelo nome do serviço ou nome de exibição dos serviços, ou pode canalizar objetos de serviço para `Get-Service`.

## EXEMPLOS

### Exemplo 1: Obter todos os serviços no computador local

```powershell
Get-Service
```

Este comando recupera todos os serviços no computador local. O comportamento é o mesmo que `Get-Service *`. A saída padrão exibe o status do serviço, o nome do serviço e o nome de exibição de cada serviço.

### Exemplo 2: Obter serviços que começam com uma string de pesquisa

```powershell
Get-Service "wmi*"
```

Este comando recupera serviços com nomes de serviço que começam com WMI (Instrumentação de Gerenciamento do Windows).

### Exemplo 3: Exibir serviços que incluem um nome de exibição

```powershell
Get-Service -DisplayName "*rede*"
```

Este comando exibe serviços com um nome de exibição que inclui a palavra rede. Pesquisar pelo nome de exibição pode encontrar serviços com nomes de serviço que você não conhece.

### Exemplo 4: Obter serviços que começam com uma string de pesquisa e os exibe em uma tabela

```powershell
Get-Service "f*" | Format-Table -Auto
```

Este comando exibe serviços que começam com a letra F. O comando canaliza os resultados de `Get-Service` para `Format-Table` para exibir a saída como uma tabela com legendas de coluna.

### Exemplo 5: Obter dependências de um serviço

```powershell
Get-Service "WinRM" -RequiredServices
```

Este comando obtém os serviços de que o serviço WinRM requer.

### Exemplo 6: Obter serviços em um computador remoto

```powershell
Get-Service -ComputerName "Server01"
```

Este comando obtém os serviços no computador remoto Server01.

## PARÂMETROS

### -ComputerName

Obtém os serviços em execução nos computadores especificados. O padrão é o computador local.

Digite o nome NetBIOS, um endereço IP ou um nome de domínio totalmente qualificado de um computador remoto. Para especificar o computador local, digite o nome do computador, um ponto (.) ou 'localhost'.

Este parâmetro não depende da comunicação remota do Windows PowerShell. Você pode usar o parâmetro `ComputerName` de `Get-Service` mesmo que seu computador não esteja configurado para executar comandos remotos.

| Tipo: | String[] |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | True (ByPropertyName) |
| Aceitar caracteres curinga: | False |

### -DependentServices

Indica que este cmdlet obtém apenas os serviços que dependem do serviço especificado. Por padrão, o cmdlet obtém todos os serviços.

| Tipo: | SwitchParameter |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | False |

### -DisplayName

Especifica os nomes de exibição dos serviços a serem recuperados. Caracteres curinga são permitidos. Por padrão, `Get-Service` obtém todos os serviços no computador.

| Tipo: | String[] |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | True |

### -Exclude

Omite os serviços especificados. O valor deste parâmetro qualifica o parâmetro `Name`. Insira um elemento de nome ou padrão, como 's*'. Caracteres curinga são permitidos.

| Tipo: | String[] |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | True |

### -Include

Recupera apenas os serviços especificados. O valor deste parâmetro qualifica o parâmetro `Name`. Insira um elemento de nome ou padrão, como 's*'. Caracteres curinga são permitidos.

| Tipo: | String[] |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | True |

### -InputObject

Especifica objetos `ServiceController` que representam os serviços a serem recuperados. Insira uma variável que contém os objetos ou digite um comando ou expressão que obtém os objetos.

| Tipo: | ServiceController[] |
| Posição: | 0 |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | True (ByValue) |
| Aceitar caracteres curinga: | False |

### -Name

Especifica os nomes de serviço dos serviços a serem recuperados. Caracteres curinga são permitidos. Por padrão, `Get-Service` obtém todos os serviços no computador.

| Tipo: | String[] |
| Posição: | 0 |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | True (ByPropertyName, ByValue) |
| Aceitar caracteres curinga: | True |

### -RequiredServices

Indica que este cmdlet obtém apenas os serviços de que o serviço especificado requer. Este parâmetro obtém os serviços dos quais o serviço especificado depende.

| Tipo: | SwitchParameter |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | False |

### CommonParameters

Este cmdlet suporta os parâmetros comuns: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction e -WarningVariable. Para obter mais informações, consulte [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## ENTRADAS

**System.ServiceProcess.ServiceController, System.String**

Você pode canalizar um objeto de serviço ou um nome de serviço para `Get-Service`.

## SAÍDAS

**System.ServiceProcess.ServiceController**

`Get-Service` retorna objetos que representam os serviços.

## NOTAS

* A partir do Windows PowerShell 3.0, o `Get-Service` usa a classe `ServiceController` do .NET Framework.
* Você também pode usar o centro de administração ou o snap-in de serviços para gerenciar serviços no Windows.
* `Get-Service` pode exibir serviços para os quais o usuário atual não tem permissão para visualizar. Para obter apenas serviços que o usuário atual pode visualizar, use o parâmetro `Include` ou `Exclude`.

## TÓPICOS RELACIONADOS

* [New-Service](New-Service.md)
* [Restart-Service](Restart-Service.md)
* [Resume-Service](Resume-Service.md)
* [Set-Service](Set-Service.md)
* [Start-Service](Start-Service.md)
* [Stop-Service](Stop-Service.md)
* [Suspend-Service](Suspend-Service.md)
* [about_Service_Cmdlets](about_Service_Cmdlets.md) |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | # Get-Service

## SINTAXE
```
Get-Service
    [[-Name] <String[]>]
    [-ComputerName <String[]>]
    [-DependentServices]
    [-RequiredServices]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [<CommonParameters>]
```

```
Get-Service
    [-ComputerName <String[]>]
    [-DependentServices]
    [-RequiredServices]
    [-DisplayName <String[]>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [<CommonParameters>]
```

```
Get-Service
    [-ComputerName <String[]>]
    [-DependentServices]
    [-RequiredServices]
    [-InputObject <ServiceController[]>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [<CommonParameters>]
```

## DESCRIÇÃO

O cmdlet `Get-Service` recupera objetos que representam os serviços em um computador, incluindo serviços em execução e serviços parados. Por padrão, quando `Get-Service` é executado sem parâmetros, todos os serviços no computador local são retornados.

Você pode direcionar `Get-Service` pelo nome do serviço ou nome de exibição dos serviços, ou pode canalizar objetos de serviço para `Get-Service`.

## EXEMPLOS

### Exemplo 1: Obter todos os serviços no computador local

```powershell
Get-Service
```

Este comando recupera todos os serviços no computador local. O comportamento é o mesmo que `Get-Service *`. A saída padrão exibe o status do serviço, o nome do serviço e o nome de exibição de cada serviço.

### Exemplo 2: Obter serviços que começam com uma string de pesquisa

```powershell
Get-Service "wmi*"
```

Este comando recupera serviços com nomes de serviço que começam com WMI (Instrumentação de Gerenciamento do Windows).

### Exemplo 3: Exibir serviços que incluem um nome de exibição

```powershell
Get-Service -DisplayName "*rede*"
```

Este comando exibe serviços com um nome de exibição que inclui a palavra rede. Pesquisar pelo nome de exibição pode encontrar serviços com nomes de serviço que você não conhece.

### Exemplo 4: Obter serviços que começam com uma string de pesquisa e os exibe em uma tabela

```powershell
Get-Service "f*" | Format-Table -Auto
```

Este comando exibe serviços que começam com a letra F. O comando canaliza os resultados de `Get-Service` para `Format-Table` para exibir a saída como uma tabela com legendas de coluna.

### Exemplo 5: Obter dependências de um serviço

```powershell
Get-Service "WinRM" -RequiredServices
```

Este comando obtém os serviços de que o serviço WinRM requer.

### Exemplo 6: Obter serviços em um computador remoto

```powershell
Get-Service -ComputerName "Server01"
```

Este comando obtém os serviços no computador remoto Server01.

## PARÂMETROS

### -ComputerName

Obtém os serviços em execução nos computadores especificados. O padrão é o computador local.

Digite o nome NetBIOS, um endereço IP ou um nome de domínio totalmente qualificado de um computador remoto. Para especificar o computador local, digite o nome do computador, um ponto (.) ou 'localhost'.

Este parâmetro não depende da comunicação remota do Windows PowerShell. Você pode usar o parâmetro `ComputerName` de `Get-Service` mesmo que seu computador não esteja configurado para executar comandos remotos.

| Tipo: | String[] |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | True (ByPropertyName) |
| Aceitar caracteres curinga: | False |

### -DependentServices

Indica que este cmdlet obtém apenas os serviços que dependem do serviço especificado. Por padrão, o cmdlet obtém todos os serviços.

| Tipo: | SwitchParameter |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | False |

### -DisplayName

Especifica os nomes de exibição dos serviços a serem recuperados. Caracteres curinga são permitidos. Por padrão, `Get-Service` obtém todos os serviços no computador.

| Tipo: | String[] |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | True |

### -Exclude

Omite os serviços especificados. O valor deste parâmetro qualifica o parâmetro `Name`. Insira um elemento de nome ou padrão, como 's*'. Caracteres curinga são permitidos.

| Tipo: | String[] |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | True |

### -Include

Recupera apenas os serviços especificados. O valor deste parâmetro qualifica o parâmetro `Name`. Insira um elemento de nome ou padrão, como 's*'. Caracteres curinga são permitidos.

| Tipo: | String[] |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | True |

### -InputObject

Especifica objetos `ServiceController` que representam os serviços a serem recuperados. Insira uma variável que contém os objetos ou digite um comando ou expressão que obtém os objetos.

| Tipo: | ServiceController[] |
| Posição: | 0 |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | True (ByValue) |
| Aceitar caracteres curinga: | False |

### -Name

Especifica os nomes de serviço dos serviços a serem recuperados. Caracteres curinga são permitidos. Por padrão, `Get-Service` obtém todos os serviços no computador.

| Tipo: | String[] |
| Posição: | 0 |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | True (ByPropertyName, ByValue) |
| Aceitar caracteres curinga: | True |

### -RequiredServices

Indica que este cmdlet obtém apenas os serviços de que o serviço especificado requer. Este parâmetro obtém os serviços dos quais o serviço especificado depende.

| Tipo: | SwitchParameter |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | False |

### CommonParameters

Este cmdlet suporta os parâmetros comuns: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction e -WarningVariable. Para obter mais informações, consulte [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## ENTRADAS

**System.ServiceProcess.ServiceController, System.String**

Você pode canalizar um objeto de serviço ou um nome de serviço para `Get-Service`.

## SAÍDAS

**System.ServiceProcess.ServiceController**

`Get-Service` retorna objetos que representam os serviços.

## NOTAS

* A partir do Windows PowerShell 3.0, o `Get-Service` usa a classe `ServiceController` do .NET Framework.
* Você também pode usar o centro de administração ou o snap-in de serviços para gerenciar serviços no Windows.
* `Get-Service` pode exibir serviços para os quais o usuário atual não tem permissão para visualizar. Para obter apenas serviços que o usuário atual pode visualizar, use o parâmetro `Include` ou `Exclude`.

## TÓPICOS RELACIONADOS

* [New-Service](New-Service.md)
* [Restart-Service](Restart-Service.md)
* [Resume-Service](Resume-Service.md)
* [Set-Service](Set-Service.md)
* [Start-Service](Start-Service.md)
* [Stop-Service](Stop-Service.md)
* [Suspend-Service](Suspend-Service.md)
* [about_Service_Cmdlets](about_Service_Cmdlets.md) |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .EXTERNALHELP do CommonParameters.help.xml |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Desativar a conversão de texto em fala para respostas de IA |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Desativar conversão de texto em fala para respostas de pensamento da IA |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Não use a detecção de silêncio para interromper automaticamente a gravação. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Se deve usar a captura de áudio da área de trabalho em vez da entrada do microfone |
| `-AudioDevice` | String | — | — | Named | — | Nome do dispositivo de áudio ou GUID (aceita curingas, seleciona a primeira correspondência) |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Use tanto o computador quanto o dispositivo de gravação |
| `-NoContext` | SwitchParameter | — | — | Named | — | Não use contexto |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use a estratégia de amostragem por feixe |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Se deve suprimir o texto reconhecido na saída |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Não armazenar sessão no cache de sessão |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Só vai gerar respostas em bloco de marcação |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usar configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar configurações alternativas armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas nas preferências persistentes sem afetar a sessão |

## Examples

### New-LLMAudioChat -Query "Tell me about PowerShell" `     -Model "qwen2.5-14b-instruct" `     -Temperature 0.7

```powershell
New-LLMAudioChat -Query "Tell me about PowerShell" `
    -Model "qwen2.5-14b-instruct" `
    -Temperature 0.7
```

### llmaudiochat "What's the weather?" -DontSpeak

```powershell
llmaudiochat "What's the weather?" -DontSpeak
```

## Parameter Details

### `-Query <String>`

> ---
external help file: Microsoft.PowerShell.Commands.Utility.dll-Help.xml
Locale: pt-BR
Module Name: Microsoft.PowerShell.Utility
online version: https://aka.ms/powershell-101/reference/5.1/Microsoft.PowerShell.Utility/Get-FileHash
schema: 2.0.0
---

# Get-FileHash

## SINOPSE
Calcula o valor de hash de um arquivo usando um algoritmo de hash especificado.

## SINTAXE

### Caminho (Padrão)
```
Get-FileHash [-Path] <CaminhoDoArquivo[]> [[-Algorithm] <CadeiaDeCaracteres>] [<CommonParameters>]
```

### LiteralPath
```
Get-FileHash -LiteralPath <CadeiaDeCaracteres[]> [[-Algorithm] <CadeiaDeCaracteres>] [<CommonParameters>]
```

### Stream (Stream)
```
Get-FileHash -InputStream <Fluxo> [[-Algorithm] <CadeiaDeCaracteres>] [<CommonParameters>]
```

## DESCRIÇÃO

O cmdlet `Get-FileHash` calcula o valor de hash de um arquivo usando um algoritmo de hash especificado. Um valor de hash é um valor único que corresponde ao conteúdo do arquivo. Em vez de identificar o conteúdo de um arquivo pelo seu nome de arquivo, extensão ou outra designação, um hash atribui um valor único ao conteúdo de um arquivo. Nomes de arquivo e extensões podem ser alterados sem alterar o conteúdo do arquivo e sem alterar o valor de hash. Da mesma forma, alterar o conteúdo do arquivo, mas não o nome do arquivo ou extensão, alterará o valor de hash.

`Get-FileHash` produz um valor de hash para um arquivo específico. Você pode executar um comando `Get-FileHash` em um arquivo baixado da Internet para verificar se o hash corresponde ao valor publicado pelo editor do download. Se os valores de hash corresponderem, o arquivo provavelmente não foi alterado. No entanto, se os valores de hash não corresponderem, o arquivo pode ter sido adulterado.

`Get-FileHash` usa os seguintes algoritmos de hash: SHA1, SHA256, SHA384, SHA512, MD5.

## EXEMPLOS

### Exemplo 1: Calcular o valor de hash de um arquivo

Este comando calcula o valor de hash do arquivo `/etc/apt/sources.list` usando o algoritmo SHA256. A saída é enviada para o pipeline. `Get-FileHash` calcula o hash de um arquivo e o `Out-File` grava o valor de hash em um arquivo.

```powershell
Get-FileHash /etc/apt/sources.list | Out-File -FilePath .\hash.md
```

### Exemplo 2: Calcular o valor de hash de um fluxo

Este comando calcula o valor de hash de um fluxo usando o algoritmo MD5. O fluxo é criado usando `[System.IO.MemoryStream]::new()`. O valor de hash é exibido no console.

```powershell
$stream = [System.IO.MemoryStream]::new()
Get-FileHash -InputStream $stream -Algorithm MD5
```

## PARÂMETROS

### -Algorithm

Especifica a função de hash criptográfica a ser usada para calcular o valor de hash de um arquivo. Os valores aceitáveis para este parâmetro são:

- SHA1
- SHA256
- SHA384
- SHA512
- MD5

Se nenhum valor for especificado, ou se o parâmetro for omitido, o valor padrão é SHA256.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: SHA1, SHA256, SHA384, SHA512, MD5

Required: False
Position: 1
Default value: SHA256
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputStream

Especifica o fluxo de entrada.

```yaml
Type: Stream
Parameter Sets: Stream
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LiteralPath

Especifica o caminho para um arquivo. Ao contrário do parâmetro **Path**, o valor do parâmetro **LiteralPath** é usado exatamente como foi digitado. Nenhum caractere é interpretado como caractere curinga. Se o caminho incluir caracteres de escape, coloque-o entre aspas simples.

```yaml
Type: String[]
Parameter Sets: LiteralPath
Aliases: PSPath

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Path

Especifica o caminho para um ou mais arquivos como uma matriz. Caracteres curinga são permitidos.

```yaml
Type: String[]
Parameter Sets: Path
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: True
```

### CommonParameters

Este cmdlet suporta os parâmetros comuns: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction e -WarningVariable. Para mais informações, consulte about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216).

## ENTRADAS

### System.String

Você pode canalizar uma cadeia de caracteres contendo um caminho para um arquivo para `Get-FileHash`.

## SAÍDAS

### Microsoft.Powershell.Utility.FileHash

`Get-FileHash` retorna um objeto que representa o valor de hash calculado do arquivo.

## NOTAS

Para obter mais informações, consulte about_Hash e Funções hash.

## TÓPICOS RELACIONADOS

- about_Hash
- Funções hash
- Format-List
- Out-File

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> ---
external help file: Pode-help.xml
Module Name: Pode
online version:
PodeType: classes
schema: 2.0.0
---

# LimitEntry

## SINOPSE
Define um modelo para limites de taxa.

## DESCRIÇÃO
Define um modelo para limites de taxa. Usado com `Add-PodeRouteLimit`.

## EXEMPLO

### Exemplo 1
```powershell
$entry = [Pode.Models.LimitEntry]@{
    Name = 'ApiLimit'
    Feature = 'Pode.Web'
    Route = @{
        Methods = @('GET', 'POST')
        Path = '/api/users'
    }
    Limit = @{
        Type = 'FixedWindow'
        MaxRequests = 1000
        WindowDuration = @{
            Value = 1
            Type = 'Hour'
        }
    }
}
```

## PROPRIEDADES

- `Name`: O nome do limite.
- `Feature`: O nome do recurso ao qual o limite será aplicado.
- `Route`: Objeto da rota com `Methods` e `Path`.
- `Limit`: As configurações do limite com `Type`, `MaxRequests` e `WindowDuration` (`Value` e `Type`).
- `Type`: Define o tipo de limite (`IP`, `Route`, `User`, `Header`).
- `Value`: O valor correspondente ao tipo.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> Matriz de caminhos de arquivo para anexar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModelType <String>`

> Tipo de modelo Whisper a usar, padrão é LargeV3Turbo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'SmallEn'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Temperatura para reconhecimento de entrada de áudio (0,0-1,0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> Temperatura para aleatoriedade da resposta (0,0-1,0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> O parâmetro de temperatura para controlar a aleatoriedade da resposta.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.01` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageIn <String>`

> Define o idioma a ser detectado

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Language` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> Número de threads de CPU a serem usados, o padrão é 0 (automático)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Regex para suprimir tokens da saída

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> Tamanho do contexto de áudio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Int32>`

> Limiar de detecção de silêncio (0..32767, padrão é 30)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `30` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Single>`

> Penalidade de comprimento

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Single>`

> Limite de entropia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Single>`

> Limiar de probabilidade logarítmica

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Single>`

> Limiar de fala

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> O tipo da consulta LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'ToolUse'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> O identificador ou padrão de modelo a ser usado para operações de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> Nível de detalhe da imagem

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'low'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> A URL do endpoint da API para operações de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> A chave de API para operações de IA autenticadas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Indica que o LLM não tem suporte para schemas JSON

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowToolChainInvocations`

> Mostra invocações da cadeia de ferramentas no console

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> O tempo limite em segundos para operações de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResponseFormat <String>`

> Abaixo está o texto traduzido para português (Brasil), preservando a estrutura e os elementos técnicos sem alterar comandos, variáveis ou identificadores:

```powershell
# Get-Help Get-Process -Full

NOME
    Get-Process

SINOPSE
    Obtém todos os processos em execução no computador local ou em um computador remoto, ou um processo específico.

SINTAXE
    Get-Process [[-Name] <string[]>] [-ComputerName <string[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]
    
    Get-Process -Id <int[]> [-ComputerName <string[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]
    
    Get-Process [-InputObject <Process[]>] [-ComputerName <string[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]

DESCRIÇÃO
    O cmdlet Get-Process obtém um ou mais processos em execução no computador local ou em um computador remoto. Especificando o nome do processo ou o ID do processo (PID), você pode obter um processo específico. Você também pode canalizar um objeto de processo para este cmdlet.

    Por padrão, este cmdlet retorna um objeto de processo que contém informações detalhadas sobre o processo, como o nome do processo, ID, classe de prioridade, memória de trabalho, etc. Você pode usar os parâmetros -Module e -FileVersionInfo para obter informações adicionais sobre o processo.

    Este cmdlet é semelhante ao comando 'tasklist' do Windows, mas fornece mais funcionalidades e integração com o PowerShell.

PARÂMETROS
    -ComputerName <string[]>
        Especifica os computadores nos quais obter os processos. O padrão é o computador local.

        Digite o nome NetBIOS, o endereço IP ou o nome de domínio totalmente qualificado de um ou mais computadores. Para especificar o computador local, digite o nome do computador, um ponto (.) ou 'localhost'.

        Este parâmetro não depende da comunicação remota do Windows PowerShell. Você pode usar o parâmetro ComputerName de Get-Process mesmo se o computador não estiver configurado para execução remota.

    -FileVersionInfo [<SwitchParameter>]
        Indica que este cmdlet obtém as informações de versão do arquivo para o arquivo do processo.

        Para obter as informações de versão do arquivo de um processo, você deve ter permissão de Administrador no computador.

        Este parâmetro foi introduzido no Windows PowerShell 3.0.

    -Id <int[]>
        Especifica um ou mais processos pelo ID do processo (PID). Para especificar vários IDs, use vírgulas para separá-los. Para encontrar o PID de um processo, digite 'tasklist' no prompt de comando ou use Get-Process sem parâmetros.

    -InputObject <Process[]>
        Especifica um ou mais objetos de processo. Insira uma variável que contenha os objetos, ou digite um comando ou expressão que obtenha os objetos.

    -Module [<SwitchParameter>]
        Indica que este cmdlet obtém os módulos carregados pelo processo.

        Para obter os módulos de um processo, você deve ter permissão de Administrador no computador.

        Este parâmetro foi introduzido no Windows PowerShell 3.0.

    -Name <string[]>
        Especifica um ou mais nomes de processos. Você pode digitar vários nomes de processos (separados por vírgulas) e usar curingas. O nome do parâmetro ('Name') é opcional.

    <CommonParameters>
        Este cmdlet suporta os parâmetros comuns: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable e OutVariable. Para obter mais informações, consulte about_CommonParameters.

ENTRADAS
    System.Diagnostics.Process
        Você pode canalizar um objeto de processo para este cmdlet.

SAÍDAS
    System.Diagnostics.Process
        Por padrão, este cmdlet retorna um objeto System.Diagnostics.Process para cada processo.

    System.Diagnostics.FileVersionInfo
        Se você usar o parâmetro FileVersionInfo, este cmdlet retornará um objeto FileVersionInfo para cada processo.

    System.Diagnostics.ProcessModule
        Se você usar o parâmetro Module, este cmdlet retornará um objeto ProcessModule para cada processo.

NOTAS
    * A saída padrão de Get-Process é uma tabela que mostra o identificador do processo (Handles), a Contagem de threads (NPM(K)), a Memória de trabalho (PM(K)), a Memória virtual (WS(K)), a Memória privada (VM(M)), a CPU (CPU(s)) e o ID do processo (Id).
    * Você pode obter ajuda detalhada sobre este cmdlet digitando 'Get-Help Get-Process -Full'.

EXEMPLOS
    Exemplo 1: Obtém todos os processos em execução no computador local
        Get-Process

    Exemplo 2: Obtém um processo específico pelo nome
        Get-Process -Name notepad

    Exemplo 3: Obtém um processo pelo seu ID
        Get-Process -Id 1234

    Exemplo 4: Obtém informações de versão do arquivo
        Get-Process -Name notepad -FileVersionInfo

    Exemplo 5: Obtém módulos carregados por um processo
        Get-Process -Name notepad -Module

    Exemplo 6: Obtém processos de um computador remoto
        Get-Process -ComputerName Server01

    Exemplo 7: Usa um objeto de processo como entrada
        $p = Get-Process -Name notepad
        $p | Get-Process -FileVersionInfo
```

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> Irá produzir apenas blocos de marcação dos tipos especificados

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Caminho do banco de dados para arquivos de dados de preferência

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Matriz de definições de comandos PowerShell para usar como ferramentas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <ScriptBlock[]>`

> Matriz de ScriptBlock de ferramentas a serem expostas ao LLM (passagem direta para Invoke-LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Matriz de nomes de funções de ferramenta que não exigem confirmação (passagem direta para Invoke-LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatMode <String>`

> Modo de chat para consulta LLM (passagem para Invoke-LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `chat` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Comprimento máximo de retorno da chamada de ferramenta (passagem para Invoke-LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts`

> # Get-Service

## SINTAXE
```
Get-Service
    [[-Name] <String[]>]
    [-ComputerName <String[]>]
    [-DependentServices]
    [-RequiredServices]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [<CommonParameters>]
```

```
Get-Service
    [-ComputerName <String[]>]
    [-DependentServices]
    [-RequiredServices]
    [-DisplayName <String[]>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [<CommonParameters>]
```

```
Get-Service
    [-ComputerName <String[]>]
    [-DependentServices]
    [-RequiredServices]
    [-InputObject <ServiceController[]>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [<CommonParameters>]
```

## DESCRIÇÃO

O cmdlet `Get-Service` recupera objetos que representam os serviços em um computador, incluindo serviços em execução e serviços parados. Por padrão, quando `Get-Service` é executado sem parâmetros, todos os serviços no computador local são retornados.

Você pode direcionar `Get-Service` pelo nome do serviço ou nome de exibição dos serviços, ou pode canalizar objetos de serviço para `Get-Service`.

## EXEMPLOS

### Exemplo 1: Obter todos os serviços no computador local

```powershell
Get-Service
```

Este comando recupera todos os serviços no computador local. O comportamento é o mesmo que `Get-Service *`. A saída padrão exibe o status do serviço, o nome do serviço e o nome de exibição de cada serviço.

### Exemplo 2: Obter serviços que começam com uma string de pesquisa

```powershell
Get-Service "wmi*"
```

Este comando recupera serviços com nomes de serviço que começam com WMI (Instrumentação de Gerenciamento do Windows).

### Exemplo 3: Exibir serviços que incluem um nome de exibição

```powershell
Get-Service -DisplayName "*rede*"
```

Este comando exibe serviços com um nome de exibição que inclui a palavra rede. Pesquisar pelo nome de exibição pode encontrar serviços com nomes de serviço que você não conhece.

### Exemplo 4: Obter serviços que começam com uma string de pesquisa e os exibe em uma tabela

```powershell
Get-Service "f*" | Format-Table -Auto
```

Este comando exibe serviços que começam com a letra F. O comando canaliza os resultados de `Get-Service` para `Format-Table` para exibir a saída como uma tabela com legendas de coluna.

### Exemplo 5: Obter dependências de um serviço

```powershell
Get-Service "WinRM" -RequiredServices
```

Este comando obtém os serviços de que o serviço WinRM requer.

### Exemplo 6: Obter serviços em um computador remoto

```powershell
Get-Service -ComputerName "Server01"
```

Este comando obtém os serviços no computador remoto Server01.

## PARÂMETROS

### -ComputerName

Obtém os serviços em execução nos computadores especificados. O padrão é o computador local.

Digite o nome NetBIOS, um endereço IP ou um nome de domínio totalmente qualificado de um computador remoto. Para especificar o computador local, digite o nome do computador, um ponto (.) ou 'localhost'.

Este parâmetro não depende da comunicação remota do Windows PowerShell. Você pode usar o parâmetro `ComputerName` de `Get-Service` mesmo que seu computador não esteja configurado para executar comandos remotos.

| Tipo: | String[] |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | True (ByPropertyName) |
| Aceitar caracteres curinga: | False |

### -DependentServices

Indica que este cmdlet obtém apenas os serviços que dependem do serviço especificado. Por padrão, o cmdlet obtém todos os serviços.

| Tipo: | SwitchParameter |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | False |

### -DisplayName

Especifica os nomes de exibição dos serviços a serem recuperados. Caracteres curinga são permitidos. Por padrão, `Get-Service` obtém todos os serviços no computador.

| Tipo: | String[] |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | True |

### -Exclude

Omite os serviços especificados. O valor deste parâmetro qualifica o parâmetro `Name`. Insira um elemento de nome ou padrão, como 's*'. Caracteres curinga são permitidos.

| Tipo: | String[] |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | True |

### -Include

Recupera apenas os serviços especificados. O valor deste parâmetro qualifica o parâmetro `Name`. Insira um elemento de nome ou padrão, como 's*'. Caracteres curinga são permitidos.

| Tipo: | String[] |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | True |

### -InputObject

Especifica objetos `ServiceController` que representam os serviços a serem recuperados. Insira uma variável que contém os objetos ou digite um comando ou expressão que obtém os objetos.

| Tipo: | ServiceController[] |
| Posição: | 0 |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | True (ByValue) |
| Aceitar caracteres curinga: | False |

### -Name

Especifica os nomes de serviço dos serviços a serem recuperados. Caracteres curinga são permitidos. Por padrão, `Get-Service` obtém todos os serviços no computador.

| Tipo: | String[] |
| Posição: | 0 |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | True (ByPropertyName, ByValue) |
| Aceitar caracteres curinga: | True |

### -RequiredServices

Indica que este cmdlet obtém apenas os serviços de que o serviço especificado requer. Este parâmetro obtém os serviços dos quais o serviço especificado depende.

| Tipo: | SwitchParameter |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | False |

### CommonParameters

Este cmdlet suporta os parâmetros comuns: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction e -WarningVariable. Para obter mais informações, consulte [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## ENTRADAS

**System.ServiceProcess.ServiceController, System.String**

Você pode canalizar um objeto de serviço ou um nome de serviço para `Get-Service`.

## SAÍDAS

**System.ServiceProcess.ServiceController**

`Get-Service` retorna objetos que representam os serviços.

## NOTAS

* A partir do Windows PowerShell 3.0, o `Get-Service` usa a classe `ServiceController` do .NET Framework.
* Você também pode usar o centro de administração ou o snap-in de serviços para gerenciar serviços no Windows.
* `Get-Service` pode exibir serviços para os quais o usuário atual não tem permissão para visualizar. Para obter apenas serviços que o usuário atual pode visualizar, use o parâmetro `Include` ou `Exclude`.

## TÓPICOS RELACIONADOS

* [New-Service](New-Service.md)
* [Restart-Service](Restart-Service.md)
* [Resume-Service](Resume-Service.md)
* [Set-Service](Set-Service.md)
* [Start-Service](Start-Service.md)
* [Stop-Service](Stop-Service.md)
* [Suspend-Service](Suspend-Service.md)
* [about_Service_Cmdlets](about_Service_Cmdlets.md)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> # Get-Service

## SINTAXE
```
Get-Service
    [[-Name] <String[]>]
    [-ComputerName <String[]>]
    [-DependentServices]
    [-RequiredServices]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [<CommonParameters>]
```

```
Get-Service
    [-ComputerName <String[]>]
    [-DependentServices]
    [-RequiredServices]
    [-DisplayName <String[]>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [<CommonParameters>]
```

```
Get-Service
    [-ComputerName <String[]>]
    [-DependentServices]
    [-RequiredServices]
    [-InputObject <ServiceController[]>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [<CommonParameters>]
```

## DESCRIÇÃO

O cmdlet `Get-Service` recupera objetos que representam os serviços em um computador, incluindo serviços em execução e serviços parados. Por padrão, quando `Get-Service` é executado sem parâmetros, todos os serviços no computador local são retornados.

Você pode direcionar `Get-Service` pelo nome do serviço ou nome de exibição dos serviços, ou pode canalizar objetos de serviço para `Get-Service`.

## EXEMPLOS

### Exemplo 1: Obter todos os serviços no computador local

```powershell
Get-Service
```

Este comando recupera todos os serviços no computador local. O comportamento é o mesmo que `Get-Service *`. A saída padrão exibe o status do serviço, o nome do serviço e o nome de exibição de cada serviço.

### Exemplo 2: Obter serviços que começam com uma string de pesquisa

```powershell
Get-Service "wmi*"
```

Este comando recupera serviços com nomes de serviço que começam com WMI (Instrumentação de Gerenciamento do Windows).

### Exemplo 3: Exibir serviços que incluem um nome de exibição

```powershell
Get-Service -DisplayName "*rede*"
```

Este comando exibe serviços com um nome de exibição que inclui a palavra rede. Pesquisar pelo nome de exibição pode encontrar serviços com nomes de serviço que você não conhece.

### Exemplo 4: Obter serviços que começam com uma string de pesquisa e os exibe em uma tabela

```powershell
Get-Service "f*" | Format-Table -Auto
```

Este comando exibe serviços que começam com a letra F. O comando canaliza os resultados de `Get-Service` para `Format-Table` para exibir a saída como uma tabela com legendas de coluna.

### Exemplo 5: Obter dependências de um serviço

```powershell
Get-Service "WinRM" -RequiredServices
```

Este comando obtém os serviços de que o serviço WinRM requer.

### Exemplo 6: Obter serviços em um computador remoto

```powershell
Get-Service -ComputerName "Server01"
```

Este comando obtém os serviços no computador remoto Server01.

## PARÂMETROS

### -ComputerName

Obtém os serviços em execução nos computadores especificados. O padrão é o computador local.

Digite o nome NetBIOS, um endereço IP ou um nome de domínio totalmente qualificado de um computador remoto. Para especificar o computador local, digite o nome do computador, um ponto (.) ou 'localhost'.

Este parâmetro não depende da comunicação remota do Windows PowerShell. Você pode usar o parâmetro `ComputerName` de `Get-Service` mesmo que seu computador não esteja configurado para executar comandos remotos.

| Tipo: | String[] |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | True (ByPropertyName) |
| Aceitar caracteres curinga: | False |

### -DependentServices

Indica que este cmdlet obtém apenas os serviços que dependem do serviço especificado. Por padrão, o cmdlet obtém todos os serviços.

| Tipo: | SwitchParameter |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | False |

### -DisplayName

Especifica os nomes de exibição dos serviços a serem recuperados. Caracteres curinga são permitidos. Por padrão, `Get-Service` obtém todos os serviços no computador.

| Tipo: | String[] |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | True |

### -Exclude

Omite os serviços especificados. O valor deste parâmetro qualifica o parâmetro `Name`. Insira um elemento de nome ou padrão, como 's*'. Caracteres curinga são permitidos.

| Tipo: | String[] |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | True |

### -Include

Recupera apenas os serviços especificados. O valor deste parâmetro qualifica o parâmetro `Name`. Insira um elemento de nome ou padrão, como 's*'. Caracteres curinga são permitidos.

| Tipo: | String[] |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | True |

### -InputObject

Especifica objetos `ServiceController` que representam os serviços a serem recuperados. Insira uma variável que contém os objetos ou digite um comando ou expressão que obtém os objetos.

| Tipo: | ServiceController[] |
| Posição: | 0 |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | True (ByValue) |
| Aceitar caracteres curinga: | False |

### -Name

Especifica os nomes de serviço dos serviços a serem recuperados. Caracteres curinga são permitidos. Por padrão, `Get-Service` obtém todos os serviços no computador.

| Tipo: | String[] |
| Posição: | 0 |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | True (ByPropertyName, ByValue) |
| Aceitar caracteres curinga: | True |

### -RequiredServices

Indica que este cmdlet obtém apenas os serviços de que o serviço especificado requer. Este parâmetro obtém os serviços dos quais o serviço especificado depende.

| Tipo: | SwitchParameter |
| Posição: | Nomeado |
| Valor padrão: | Nenhum |
| Aceitar pipeline: | False |
| Aceitar caracteres curinga: | False |

### CommonParameters

Este cmdlet suporta os parâmetros comuns: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction e -WarningVariable. Para obter mais informações, consulte [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## ENTRADAS

**System.ServiceProcess.ServiceController, System.String**

Você pode canalizar um objeto de serviço ou um nome de serviço para `Get-Service`.

## SAÍDAS

**System.ServiceProcess.ServiceController**

`Get-Service` retorna objetos que representam os serviços.

## NOTAS

* A partir do Windows PowerShell 3.0, o `Get-Service` usa a classe `ServiceController` do .NET Framework.
* Você também pode usar o centro de administração ou o snap-in de serviços para gerenciar serviços no Windows.
* `Get-Service` pode exibir serviços para os quais o usuário atual não tem permissão para visualizar. Para obter apenas serviços que o usuário atual pode visualizar, use o parâmetro `Include` ou `Exclude`.

## TÓPICOS RELACIONADOS

* [New-Service](New-Service.md)
* [Restart-Service](Restart-Service.md)
* [Resume-Service](Resume-Service.md)
* [Set-Service](Set-Service.md)
* [Start-Service](Start-Service.md)
* [Stop-Service](Stop-Service.md)
* [Suspend-Service](Suspend-Service.md)
* [about_Service_Cmdlets](about_Service_Cmdlets.md)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContinueLast`

> .EXTERNALHELP do CommonParameters.help.xml

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak`

> Desativar a conversão de texto em fala para respostas de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts`

> Desativar conversão de texto em fala para respostas de pensamento da IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX`

> Não use a detecção de silêncio para interromper automaticamente a gravação.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> Se deve usar a captura de áudio da área de trabalho em vez da entrada do microfone

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioDevice <String>`

> Nome do dispositivo de áudio ou GUID (aceita curingas, seleciona a primeira correspondência)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAndRecordingDevice`

> Use tanto o computador quanto o dispositivo de gravação

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> Não use contexto

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> Use a estratégia de amostragem por feixe

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses`

> Se deve suprimir o texto reconhecido na saída

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSessionCaching`

> Não armazenar sessão no cache de sessão

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly`

> Só vai gerar respostas em bloco de marcação

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Usar configurações alternativas armazenadas na sessão para preferências de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Limpar configurações alternativas armazenadas na sessão para preferências de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Armazenar configurações apenas nas preferências persistentes sem afetar a sessão

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/New-GenXdevMCPToken.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Test-DeepLinkImageFile.md)
