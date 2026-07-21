# Invoke-LLMBooleanEvaluation

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `equalstrue`

## Synopsis

> Avalia uma declaração usando IA para determinar se é verdadeira ou falsa.

## Description

Esta função utiliza modelos de IA para avaliar afirmações e determinar seu valor de verdade. Ela pode aceitar entrada diretamente através de parâmetros, do pipeline ou da área de transferência do sistema. A função retorna um resultado booleano juntamente com o nível de confiança e o raciocínio do modelo de IA.

## Syntax

```powershell
Invoke-LLMBooleanEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | @{response=Declaração a ser avaliada} |
| `-Instructions` | String | — | — | 1 | `''` | Instruções para o modelo de IA sobre como avaliar a declaração |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | .DESCRIPTION
O cmdlet Get-PSImagingToolsImage exibe as imagens carregadas atualmente no módulo PSImagingTools em um DataGridView. Após selecionar uma imagem, clique no botão OK; clique em Cancelar para fechar a janela sem selecionar uma imagem. Este cmdlet é destinado a ser utilizado em scripts avançados do PSImagingTools. Se o módulo de scripts não tiver sido carregado, este cmdlet carregará o módulo. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .EXTERNALHELP do CommonParameters.help.xml |
| `-Speak` | SwitchParameter | — | — | Named | — | Ativar texto para fala nas respostas da IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Habilite texto para fala para respostas de pensamento da IA |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Não armazenar sessão no cache de sessão |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Permitir que a IA use ferramentas e capacidades padrão |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usar configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar configurações alternativas armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas nas preferências persistentes sem afetar a sessão |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | @{response=Responda apenas com blocos de marcação na saída.} |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtrar por tipos específicos de blocos de marcação |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para aleatoriedade da resposta de áudio |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para geração de resposta |
| `-Language` | String | — | — | Named | — | Português (Brasil) |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de threads da CPU a serem usados para processamento |
| `-SuppressRegex` | String | — | — | Named | — | Expressão regular para suprimir da saída |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamanho do contexto de áudio para processamento |
| `-SilenceThreshold` | Double | — | — | Named | — | Limite de silêncio para detecção de áudio |
| `-LengthPenalty` | Double | — | — | Named | — | Penalidade de comprimento para geração de sequência |
| `-EntropyThreshold` | Double | — | — | Named | — | Limiar de entropia para filtragem de saída |
| `-LogProbThreshold` | Double | — | — | Named | — | Limiar de probabilidade logarítmica para filtragem de saída |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Nenhum limite de fala para detecção de áudio |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Desabilitar a saída de fala |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Desativar a saída de fala para pensamentos |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desabilitar VOX (ativação por voz) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Usar captura de áudio da área de trabalho como entrada |
| `-NoContext` | SwitchParameter | — | — | Named | — | Não use contexto na consulta |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use a estratégia de amostragem por feixe |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Se você não especificar nenhum parâmetro, `Get-WinEvent` retornará eventos de log de erro dos logs de eventos clássicos, como o Log do Aplicativo. O comportamento é o mesmo que `Get-WinEvent -ListLog * | ForEach-Object { Get-WinEvent -LogName $_.LogName }`. No Windows Vista e em sistemas operacionais posteriores, `Get-WinEvent` também obtém eventos em logs criados pelo Windows Event Technology (Crimson). |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | The `-MaxToolcallBackLength` parameter. |

## Examples

### Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"

```powershell
Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"
```

### "Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation

```powershell
"Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation
```

### equalstrue "2 + 2 = 4" ##############################################################################

```powershell
equalstrue "2 + 2 = 4"
##############################################################################
```

## Parameter Details

### `-Text <String>`

> @{response=Declaração a ser avaliada}

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

> Instruções para o modelo de IA sobre como avaliar a declaração

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

> .DESCRIPTION
O cmdlet Get-PSImagingToolsImage exibe as imagens carregadas atualmente no módulo PSImagingTools em um DataGridView. Após selecionar uma imagem, clique no botão OK; clique em Cancelar para fechar a janela sem selecionar uma imagem. Este cmdlet é destinado a ser utilizado em scripts avançados do PSImagingTools. Se o módulo de scripts não tiver sido carregado, este cmdlet carregará o módulo.

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

> Permitir que a IA use ferramentas e capacidades padrão

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

> @{response=Responda apenas com blocos de marcação na saída.}

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

> Filtrar por tipos específicos de blocos de marcação

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

> Temperatura para aleatoriedade da resposta de áudio

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

> Temperatura para geração de resposta

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

> Português (Brasil)

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

> Número de threads da CPU a serem usados para processamento

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

> Expressão regular para suprimir da saída

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

> Tamanho do contexto de áudio para processamento

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

> Limite de silêncio para detecção de áudio

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

> Penalidade de comprimento para geração de sequência

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

> Limiar de entropia para filtragem de saída

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

> Limiar de probabilidade logarítmica para filtragem de saída

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

> Nenhum limite de fala para detecção de áudio

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

> Desabilitar a saída de fala

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

> Desativar a saída de fala para pensamentos

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

> Desabilitar VOX (ativação por voz)

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

> Usar captura de áudio da área de trabalho como entrada

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

> Não use contexto na consulta

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

> Se você não especificar nenhum parâmetro, `Get-WinEvent` retornará eventos de log de erro dos logs de eventos clássicos, como o Log do Aplicativo. O comportamento é o mesmo que `Get-WinEvent -ListLog * | ForEach-Object { Get-WinEvent -LogName $_.LogName }`. No Windows Vista e em sistemas operacionais posteriores, `Get-WinEvent` também obtém eventos em logs criados pelo Windows Event Technology (Crimson).

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

> The `-MaxToolcallBackLength` parameter.

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

- `Boolean`

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
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-LLMStringListEvaluation.md)
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
