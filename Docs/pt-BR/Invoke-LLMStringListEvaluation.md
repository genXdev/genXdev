# Invoke-LLMStringListEvaluation

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getlist`, `getstring`

## Synopsis

> Extrai ou gera uma lista de strings relevantes do texto de entrada usando análise de IA.

## Description

Esta função utiliza modelos de IA para analisar texto de entrada e extrair ou gerar uma lista de strings relevantes. Ela pode processar texto para identificar pontos-chave, extrair itens de listas ou gerar conceitos relacionados. A entrada pode ser fornecida diretamente por meio de parâmetros, do pipeline ou da área de transferência do sistema. A função retorna uma matriz de strings e, opcionalmente, copia os resultados para a área de transferência.

## Syntax

```powershell
Invoke-LLMStringListEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | O texto a ser analisado e extraído de strings |
| `-Instructions` | String | — | — | 1 | `''` | Instruções para o modelo de IA sobre como gerar a lista de strings |
| `-Attachments` | String[] | — | — | 2 | `@()` | Matriz de caminhos de arquivo para anexar |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para aleatoriedade da resposta (0,0-1,0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nível de detalhe da imagem |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Matriz de definições de função |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Matriz de definições de comandos PowerShell para usar como ferramentas |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Matriz de nomes de comando que não exigem confirmação |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | O tipo da consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão de modelo a ser usado para operações de IA |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indica que o LLM não tem suporte para schemas JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copiar o resultado para a área de transferência |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Não adicione os pensamentos do modelo ao histórico da conversa |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .EXTERNALHELP do CommonParameters.help.xml |
| `-Speak` | SwitchParameter | — | — | Named | — | Ativar texto para fala nas respostas da IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Habilite texto para fala para respostas de pensamento da IA |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Não armazenar sessão no cache de sessão |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Habilitar ferramentas padrão para o modelo de IA |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usar configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar configurações alternativas armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas nas preferências persistentes sem afetar a sessão |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | <topic>Obter ajuda detalhada para cmdlets do PowerShell</topic>
<command>Tópico: Get-Help
    Atalho: man
    Atalho: help

    SINTAXE
        Get-Help [[-Nome] <String>] [-Path <String>] [-Categoria <String[]>] [-Componente <String[]>] [-Função <String[]>] [-Função] [-Acaso *] [-Pesquisar <String>] [-Parâmetro <String>] [-Exemplos] [-Online] [-MostrarJanelaDeAjuda] [-RestritoA <String[]>] [<CommonParameters>]

        Ajuda [-Nome <String>] [-Categoria <String[]>] [-Componente <String[]>] [-Função <String[]>] [-Função] [-Acaso *] [-Pesquisar <String>] [-Parâmetro <String>] [-Exemplos] [-Online] [-MostrarJanelaDeAjuda] [-RestritoA <String[]>] [<CommonParameters>]

    DESCRIÇÃO
        O cmdlet Get-Help exibe informações sobre cmdlets, funções, scripts, fluxos de trabalho e provedores do PowerShell.
        Para obter ajuda para um provedor do PowerShell, digite "Get-Help" seguido do nome do provedor e, em seguida, digite o comando específico.
        Por exemplo, "Get-Help about_Providers" para obter ajuda sobre provedores e "Get-Help about_Function" para obter ajuda sobre funções.

    PARÂMETROS
        -Nome <String>
            Obtém ajuda detalhada sobre o comando ou tópico especificado. Você pode usar curingas.
            Se você não especificar um parâmetro, Get-Help exibirá informações sobre como obter ajuda no PowerShell.

        -Categoria <String[]>
            Especifica a categoria do comando para o qual a ajuda é exibida. Os valores válidos são:
                Alias, Cmdlet, Provider, Função, FluxoDeTrabalho, Script, FunçãoExterna, Comando. O valor padrão é Todos.

        -Componente <String[]>
            Exibe comandos com o nome do componente especificado, como "Exchange". Curingas são permitidos.
            Este parâmetro é válido apenas quando exibindo ajuda para cmdlets que incluem um nome de componente.

        -Função <String[]>
            Exibe comandos com base no nome da função especificada. Curingas são permitidos.
            Este parâmetro é válido apenas quando exibindo ajuda para cmdlets que incluem um nome de função.

        -Função [<SwitchParameter>]
            Exibe apenas ajuda sobre funções.

        -Acaso <String[]>
            Exibe ajuda com base no padrão curinga especificado. Use este parâmetro para pesquisar palavras-chave ou frases.
            Você também pode usar curingas comuns como * e ?.

        -Pesquisar <String>
            Pesquisa a ajuda pelos termos especificados. Use este parâmetro para pesquisar palavras-chave ou frases.

        -Parâmetro <String>
            Exibe a descrição detalhada do parâmetro especificado. Curingas são permitidos.
            Este parâmetro é válido apenas quando exibindo ajuda para um comando específico.

        -Exemplos [<SwitchParameter>]
            Exibe exemplos de uso do comando.

        -Online [<SwitchParameter>]
            Abre o arquivo de ajuda online no navegador da web padrão.

        -MostrarJanelaDeAjuda [<SwitchParameter>]
            Exibe a ajuda em uma janela separada.

        -RestritoA <String[]>
            Exibe ajuda apenas para comandos que podem ser executados com as permissões atuais.
            Os valores válidos são: CurrentUser, AllUsers.

        -Path <String>
            Especifica o caminho para o arquivo de ajuda. Use este parâmetro para obter ajuda de um arquivo .help.txt ou .help.xml.

        <CommonParameters>
            Este cmdlet oferece suporte aos parâmetros comuns: -Verbose, -Debug, -ErrorAction, -WarningAction, -InformationAction, -ErrorVariable, -WarningVariable, -OutVariable, -OutBuffer, e -PipelineVariable.

    ENTRADAS
        System.String
            Você pode canalizar um nome de comando para Get-Help.

    SAÍDAS
        Microsoft.PowerShell.Help.HelpInfo
            Get-Help retorna um objeto HelpInfo que contém as informações de ajuda.

    NOTAS
        Para obter ajuda sobre um provedor, digite "Get-Help ProviderName".
        Para obter ajuda sobre um tópico conceitual, digite "Get-Help about_TopicName".
        A ajuda online pode não estar disponível para todos os comandos.

    EXEMPLOS
        Exemplo 1: Exibir ajuda para um cmdlet
            Get-Help Get-Process

        Exemplo 2: Exibir ajuda detalhada
            Get-Help Get-Process -Detailed

        Exemplo 3: Exibir exemplos
            Get-Help Get-Process -Examples

        Exemplo 4: Exibir ajuda online
            Get-Help Get-Process -Online

        Exemplo 5: Pesquisar ajuda
            Get-Help -Search "parâmetros"

    LINKS RELACIONADOS
        about_CommonParameters
        about_Providers
        about_Functions
        about_Help
</command> |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtre por tipos específicos de blocos de marcação. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para aleatoriedade na resposta de áudio. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para aleatoriedade da resposta de texto. |
| `-Language` | String | — | — | Named | — | pt-BR |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de threads da CPU a serem usados. |
| `-SuppressRegex` | String | — | — | Named | — | Expressão regular para suprimir certas saídas. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamanho do contexto de áudio para processamento. |
| `-SilenceThreshold` | Double | — | — | Named | — | Limite de silêncio para detecção de áudio. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalidade de comprimento para geração de sequência. |
| `-EntropyThreshold` | Double | — | — | Named | — | Limiar de entropia para filtragem de saída. |
| `-LogProbThreshold` | Double | — | — | Named | — | Limite de probabilidade logarítmica para filtragem de saída. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Nenhum limiar de fala para detecção de áudio. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Desabilitar a saída de fala. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Desative a saída de fala para pensamentos. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desabilitar VOX (ativação por voz). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use captura de áudio da área de trabalho. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Desabilitar o uso de contexto. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use a estratégia de amostragem por feixe. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | .EXTERNALHELP Stop-AzAppServicePlan (AzureRM) -help.xml |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Comprimento máximo de retorno de chamada para chamadas de ferramentas. |

## Examples

### PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +     "pipeline, integrated scripting environment, backwards compatibility, " +     "and enterprise management.") Returns: @("Object-based pipeline", "Integrated scripting environment",          "Backwards compatibility", "Enterprise management")

```powershell
PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +
    "pipeline, integrated scripting environment, backwards compatibility, " +
    "and enterprise management.")
Returns: @("Object-based pipeline", "Integrated scripting environment",
         "Backwards compatibility", "Enterprise management")
```

### PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |     Invoke-LLMStringListEvaluation Returns: @("Keyboard", "Mouse", "Monitor", "Headset")

```powershell
PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |
    Invoke-LLMStringListEvaluation
Returns: @("Keyboard", "Mouse", "Monitor", "Headset")
```

### PS> getlist "List common PowerShell commands for file operations" -SetClipboard Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",                                   "Remove-Item", "Set-Content", "Get-Content") ##############################################################################

```powershell
PS> getlist "List common PowerShell commands for file operations" -SetClipboard
Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",
                                  "Remove-Item", "Set-Content", "Get-Content")
##############################################################################
```

## Parameter Details

### `-Text <String>`

> O texto a ser analisado e extraído de strings

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> Instruções para o modelo de IA sobre como gerar a lista de strings

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
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
### `-Functions <Collections.Hashtable[]>`

> Matriz de definições de função

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-NoConfirmationToolFunctionNames <String[]>`

> Matriz de nomes de comando que não exigem confirmação

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> O tipo da consulta LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Knowledge'` |
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
### `-SetClipboard`

> Copiar o resultado para a área de transferência

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

> Não adicione os pensamentos do modelo ao histórico da conversa

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
### `-Speak`

> Ativar texto para fala nas respostas da IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpeakThoughts`

> Habilite texto para fala para respostas de pensamento da IA

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
### `-AllowDefaultTools`

> Habilitar ferramentas padrão para o modelo de IA

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
### `-OutputMarkdownBlocksOnly`

> <topic>Obter ajuda detalhada para cmdlets do PowerShell</topic>
<command>Tópico: Get-Help
    Atalho: man
    Atalho: help

    SINTAXE
        Get-Help [[-Nome] <String>] [-Path <String>] [-Categoria <String[]>] [-Componente <String[]>] [-Função <String[]>] [-Função] [-Acaso *] [-Pesquisar <String>] [-Parâmetro <String>] [-Exemplos] [-Online] [-MostrarJanelaDeAjuda] [-RestritoA <String[]>] [<CommonParameters>]

        Ajuda [-Nome <String>] [-Categoria <String[]>] [-Componente <String[]>] [-Função <String[]>] [-Função] [-Acaso *] [-Pesquisar <String>] [-Parâmetro <String>] [-Exemplos] [-Online] [-MostrarJanelaDeAjuda] [-RestritoA <String[]>] [<CommonParameters>]

    DESCRIÇÃO
        O cmdlet Get-Help exibe informações sobre cmdlets, funções, scripts, fluxos de trabalho e provedores do PowerShell.
        Para obter ajuda para um provedor do PowerShell, digite "Get-Help" seguido do nome do provedor e, em seguida, digite o comando específico.
        Por exemplo, "Get-Help about_Providers" para obter ajuda sobre provedores e "Get-Help about_Function" para obter ajuda sobre funções.

    PARÂMETROS
        -Nome <String>
            Obtém ajuda detalhada sobre o comando ou tópico especificado. Você pode usar curingas.
            Se você não especificar um parâmetro, Get-Help exibirá informações sobre como obter ajuda no PowerShell.

        -Categoria <String[]>
            Especifica a categoria do comando para o qual a ajuda é exibida. Os valores válidos são:
                Alias, Cmdlet, Provider, Função, FluxoDeTrabalho, Script, FunçãoExterna, Comando. O valor padrão é Todos.

        -Componente <String[]>
            Exibe comandos com o nome do componente especificado, como "Exchange". Curingas são permitidos.
            Este parâmetro é válido apenas quando exibindo ajuda para cmdlets que incluem um nome de componente.

        -Função <String[]>
            Exibe comandos com base no nome da função especificada. Curingas são permitidos.
            Este parâmetro é válido apenas quando exibindo ajuda para cmdlets que incluem um nome de função.

        -Função [<SwitchParameter>]
            Exibe apenas ajuda sobre funções.

        -Acaso <String[]>
            Exibe ajuda com base no padrão curinga especificado. Use este parâmetro para pesquisar palavras-chave ou frases.
            Você também pode usar curingas comuns como * e ?.

        -Pesquisar <String>
            Pesquisa a ajuda pelos termos especificados. Use este parâmetro para pesquisar palavras-chave ou frases.

        -Parâmetro <String>
            Exibe a descrição detalhada do parâmetro especificado. Curingas são permitidos.
            Este parâmetro é válido apenas quando exibindo ajuda para um comando específico.

        -Exemplos [<SwitchParameter>]
            Exibe exemplos de uso do comando.

        -Online [<SwitchParameter>]
            Abre o arquivo de ajuda online no navegador da web padrão.

        -MostrarJanelaDeAjuda [<SwitchParameter>]
            Exibe a ajuda em uma janela separada.

        -RestritoA <String[]>
            Exibe ajuda apenas para comandos que podem ser executados com as permissões atuais.
            Os valores válidos são: CurrentUser, AllUsers.

        -Path <String>
            Especifica o caminho para o arquivo de ajuda. Use este parâmetro para obter ajuda de um arquivo .help.txt ou .help.xml.

        <CommonParameters>
            Este cmdlet oferece suporte aos parâmetros comuns: -Verbose, -Debug, -ErrorAction, -WarningAction, -InformationAction, -ErrorVariable, -WarningVariable, -OutVariable, -OutBuffer, e -PipelineVariable.

    ENTRADAS
        System.String
            Você pode canalizar um nome de comando para Get-Help.

    SAÍDAS
        Microsoft.PowerShell.Help.HelpInfo
            Get-Help retorna um objeto HelpInfo que contém as informações de ajuda.

    NOTAS
        Para obter ajuda sobre um provedor, digite "Get-Help ProviderName".
        Para obter ajuda sobre um tópico conceitual, digite "Get-Help about_TopicName".
        A ajuda online pode não estar disponível para todos os comandos.

    EXEMPLOS
        Exemplo 1: Exibir ajuda para um cmdlet
            Get-Help Get-Process

        Exemplo 2: Exibir ajuda detalhada
            Get-Help Get-Process -Detailed

        Exemplo 3: Exibir exemplos
            Get-Help Get-Process -Examples

        Exemplo 4: Exibir ajuda online
            Get-Help Get-Process -Online

        Exemplo 5: Pesquisar ajuda
            Get-Help -Search "parâmetros"

    LINKS RELACIONADOS
        about_CommonParameters
        about_Providers
        about_Functions
        about_Help
</command>

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> Filtre por tipos específicos de blocos de marcação.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Temperatura para aleatoriedade na resposta de áudio.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> Temperatura para aleatoriedade da resposta de texto.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> pt-BR

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> Número de threads da CPU a serem usados.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Expressão regular para suprimir certas saídas.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> Tamanho do contexto de áudio para processamento.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Double>`

> Limite de silêncio para detecção de áudio.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Double>`

> Penalidade de comprimento para geração de sequência.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Double>`

> Limiar de entropia para filtragem de saída.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Double>`

> Limite de probabilidade logarítmica para filtragem de saída.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Double>`

> Nenhum limiar de fala para detecção de áudio.

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

> Desabilitar a saída de fala.

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

> Desative a saída de fala para pensamentos.

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

> Desabilitar VOX (ativação por voz).

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

> Use captura de áudio da área de trabalho.

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

> Desabilitar o uso de contexto.

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

> Use a estratégia de amostragem por feixe.

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

> .EXTERNALHELP Stop-AzAppServicePlan (AzureRM) -help.xml

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Comprimento máximo de retorno de chamada para chamadas de ferramentas.

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

- `String[]`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-LLMQuery.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Update-AllImageMetaData.md)
