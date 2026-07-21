# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize`

## Synopsis

> Converte linguagem diplomática ou tática em linguagem direta, clara e direta ao ponto.

## Description

Esta função pega o discurso diplomático e o traduz para revelar o verdadeiro significado por trás de uma linguagem educada ou politicamente correta. Ela usa modelos de linguagem de IA para transformar expressões eufemísticas em declarações diretas, tornando a comunicação inequívoca e fácil de entender. A função é particularmente útil para analisar declarações políticas, comunicações empresariais ou qualquer texto onde o significado real possa estar obscurecido por uma linguagem diplomática.

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | O texto a converter do discurso diplomático |
| `-Instructions` | String | — | — | 1 | `''` | O cmdlet `Disconnect-VpnS2SInterface` desconecta uma interface VPN site a site que foi conectada usando um perfil de conexão VPN. Você deve especificar o nome da interface VPN que deseja desconectar usando o parâmetro `Name`. Se a interface não estiver conectada, o cmdlet não fará nada.

Este cmdlet é útil para gerenciar conexões VPN site a site, especialmente em cenários onde você precisa desconectar manualmente uma interface VPN para manutenção ou solução de problemas. O cmdlet não remove a interface VPN; ele apenas desconecta a sessão ativa.

Exemplo:
```powershell
Disconnect-VpnS2SInterface -Name "VPN1"
```
Desconecta a interface VPN chamada "VPN1". |
| `-Temperature` | Double | — | — | Named | `0.0` | Temperatura para aleatoriedade da resposta (0,0-1,0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | O tipo da consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão de modelo a ser usado para operações de IA |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indica que o LLM não tem suporte para schemas JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copie o texto transformado para a área de transferência |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usar configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar configurações alternativas armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas nas preferências persistentes sem afetar a sessão |
| `-Attachments` | Object[] | — | — | Named | — | Anexos a serem incluídos na operação de IA. |
| `-ImageDetail` | String | — | — | Named | — | Nível de detalhe da imagem para processamento de IA. |
| `-Functions` | Object[] | — | — | Named | — | Funções a serem expostas ao modelo de IA. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | Cmdlets para expor ao modelo de IA. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Nomes de funções de ferramenta que não requerem confirmação. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | NÃO adicione pensamentos ao histórico da IA. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Continue da última operação da IA. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Pense em voz alta durante o processamento da IA. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Desabilite o cache de sessão para esta operação. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Permitir o uso de ferramentas padrão na operação de IA. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura de áudio para geração de áudio por IA. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para geração de resposta de IA. |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de threads da CPU a serem usados para operação de IA. |
| `-SuppressRegex` | String[] | — | — | Named | — | Regex para suprimir na saída da IA. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamanho do contexto de áudio para processamento de áudio por IA. |
| `-SilenceThreshold` | Double | — | — | Named | — | Limiar de silêncio para processamento de áudio de IA. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalidade de comprimento para geração de sequência por IA. |
| `-EntropyThreshold` | Double | — | — | Named | — | Limiar de entropia para saída de IA. |
| `-LogProbThreshold` | Double | — | — | Named | — | Limiar de probabilidade logarítmica para saída de IA. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Nenhum limite de fala para processamento de áudio por IA. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | .DESCRIÇÃO
    O cmdlet Remove-AzStorageContainer exclui um contêiner de armazenamento do Azure.

    O cmdlet Remove-AzStorageContainer exclui um contêiner de armazenamento do Azure.

.PARÂMETROS
    -Name <String>
        Especifica o nome do contêiner a ser excluído.

        Nomes de contêineres de blob do Azure devem ter entre 3 e 63 caracteres de comprimento e conter apenas letras minúsculas, números e hífens.

    -Force <SwitchParameter>
        Indica que este cmdlet não solicita confirmação.

        Este cmdlet solicita confirmação antes de excluir o contêiner, a menos que você especifique este parâmetro.

    -PassThru <SwitchParameter>
        Indica que este cmdlet retorna um objeto Boolean que reflete a operação.
        Por padrão, este cmdlet não retorna nenhum valor.

    -Context <IStorageContext>
        Especifica o contexto de armazenamento para o contêiner a ser removido.

    -ServerTimeoutPerRequest <Int32>
        Especifica o lado do serviço, em segundos, o tempo limite para cada solicitação.
        Use este parâmetro se demorar muito para o serviço concluir a solicitação.

    -ClientTimeoutPerRequest <Int32>
        Especifica o lado do cliente, em segundos, o tempo limite para cada solicitação.

    -ConcurrentTaskCount <Int32>
        Especifica as chamadas de rede simultâneas máximas.
        Use este parâmetro para limitar a concorrência.

    -DefaultProfile <IAzureContextContainer>
        As credenciais, conta, locatário e assinatura usados para comunicação com o Azure.

    -WhatIf <SwitchParameter>
        Mostra o que aconteceria se o cmdlet for executado.
        O cmdlet não é executado.

    -Confirm <SwitchParameter>
        Solicita sua confirmação antes de executar o cmdlet.

.EXEMPLOS 1: Excluir um contêiner de blob do Azure
    Este exemplo exclui um contêiner de armazenamento com base no nome do contêiner.

        PS C:\>Remove-AzStorageContainer -Name "mycontainer"

.EXEMPLOS 2: Excluir todos os contêineres de blob do Azure por pipeline
    Este exemplo exclui todos os contêineres de armazenamento cujo nome começa com "test".

        PS C:\>Get-AzStorageContainer -Prefix "test" | Remove-AzStorageContainer

.EXEMPLOS 3: Excluir um contêiner de blob do Azure sem confirmação
    Este exemplo exclui um contêiner de armazenamento sem confirmação.

        PS C:\>Remove-AzStorageContainer -Name "mycontainer" -Force

.SAÍDAS
    System.Boolean

.NOTAS
    Microsoft Azure PowerShell: cmdlets de armazenamento

.LINKS RELACIONADOS
    Online version: https://learn.microsoft.com/en-us/powershell/module/az.storage/remove-azstoragecontainer
    Get-AzStorageContainer
    New-AzStorageContainer |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Então, estou prestes a pedir para você executar algumas tarefas repetitivas como parte do nosso processo de tradução. Este é um grande projeto, então sua ajuda é muito apreciada! Segue as instruções a seguir, não há necessidade de adicionar nada extra. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desabilitar VOX para saída de áudio de IA. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use captura de áudio da área de trabalho para áudio de IA. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Não use o contexto para a operação de IA. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use a estratégia de busca por feixe (beam search) para IA. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Sobre o cmdlet Get-Help

SINOPSE
    Exibe informações sobre comandos e conceitos do PowerShell.

SINTAXE
    Get-Help [[-Name] <String>] [-Path <String>] [-Category <String[]>] [-Component <String[]>] [-Functionality <String[]>] [-Role <String[]>] [-Full] [-Online] [-Parameter <String>] [-ShowWindow] [<CommonParameters>]

DESCRIÇÃO
    O cmdlet Get-Help exibe informações sobre conceitos e comandos do PowerShell, incluindo cmdlets, funções, fluxos de trabalho, provedores, aliases e scripts.
    Para obter ajuda sobre um comando do PowerShell, digite Get-Help seguido do nome do comando.
    Você pode exibir a página de tópico de ajuda completa ou pesquisar parâmetros específicos. Você também pode obter ajuda online.

    Os tópicos de ajuda do PowerShell são arquivos no formato de texto formatado (XML) chamados de arquivos de ajuda baseados em comentários.

PARÂMETROS
    -Name <String>
        Obtém ajuda sobre o comando ou tópico de conceito especificado. Insira o nome de um cmdlet, função, provedor, script ou fluxo de trabalho, ou um tópico de ajuda conceitual, como about_Objects. Caracteres curinga são permitidos em nomes de cmdlets e funções, mas não em nomes de tópicos de ajuda conceitual.

        Para obter ajuda sobre um provedor do PowerShell, insira "Get-Help about_Provider".

    -Path <String>
        Obtém a ajuda que explica como o comando aparece no caminho especificado. Insira um caminho para um módulo.
        Este parâmetro foi projetado para obter ajuda sobre comandos que são fornecidos por um provedor.

    -Category <String[]>
        Exibe ajuda apenas para itens na categoria especificada e seus aliases. Os valores válidos são: Alias, Cmdlet, Provider, General, FAQ, Glossary, HelpFile, ScriptCommand, Function, Filter, ExternalScript, All, DefaultWorkflow, Workflow, ExternalWorkflow, Class, Configuration. O valor padrão é Default.

    -Component <String[]>
        Exibe comandos com o valor do componente especificado, como "Exchange".

    -Functionality <String[]>
        Exibe comandos com a funcionalidade especificada.

    -Role <String[]>
        Exibe ajuda personalizada para a função de usuário especificada.

    -Full
        Exibe o tópico de ajuda completo para um comando, incluindo descrições de parâmetros, exemplos e informações sobre tipos de entrada e saída.

    -Online
        Exibe a versão online do tópico de ajuda no seu navegador padrão.

    -Parameter <String>
        Exibe a descrição detalhada do parâmetro especificado. Caracteres curinga não são permitidos.

    -ShowWindow
        Exibe o tópico de ajuda em uma janela separada.

    <CommonParameters>
        Este cmdlet oferece suporte aos parâmetros comuns: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable e OutVariable. Para obter mais informações, consulte about_CommonParameters.

ENTRADAS
    String
        Você pode canalizar um nome de comando para Get-Help.

SAÍDAS
    Microsoft.PowerShell.Commands.HelpInfoItem
        Get-Help retorna uma HelpInfoItem para comando.

NOTAS
    Para obter exemplos, digite "Get-Help Get-Help -Examples" ou "Get-Help Get-Help -Full".
    Para obter a lista completa de cmdlets, digite "Get-Command -CommandType Cmdlet".

EXEMPLOS
    -------------------------- EXEMPLO 1 --------------------------
    PS C:\> Get-Help Get-ChildItem

    Este comando exibe o tópico de ajuda para o cmdlet Get-ChildItem.

    -------------------------- EXEMPLO 2 --------------------------
    PS C:\> Get-Help *service*

    Este comando exibe a ajuda sobre tópicos que incluem "service" no nome.

    -------------------------- EXEMPLO 3 --------------------------
    PS C:\> Get-Help about_Modules

    Este comando exibe o tópico de ajuda sobre Módulos do PowerShell.

    -------------------------- EXEMPLO 4 --------------------------
    PS C:\> Get-Help Get-Help -Full

    Este comando exibe o tópico de ajuda completo para o cmdlet Get-Help.

    -------------------------- EXEMPLO 5 --------------------------
    PS C:\> Get-Help Get-Help -Parameter Name

    Este comando exibe a descrição detalhada do parâmetro Name do cmdlet Get-Help.

    -------------------------- EXEMPLO 6 --------------------------
    PS C:\> Get-Help Get-Help -Online

    Este comando abre a versão online do tópico de ajuda para o cmdlet Get-Help no seu navegador padrão.

    -------------------------- EXEMPLO 7 --------------------------
    PS C:\> Get-Help Get-Help -ShowWindow

    Este comando exibe o tópico de ajuda para o cmdlet Get-Help em uma janela separada.

TÓPICOS RELACIONADOS
    about_Comment_Based_Help
    Get-Command
    Get-Member
    Updatable-Help
    Save-Help
    Update-Help |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Reinicie à vontade até considerar não ser mais um problema. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtrar tipos de bloco de marcação na saída da IA. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Comprimento máximo de retorno de chamada para chamadas de ferramentas. |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Parameter Details

### `-Text <String>`

> O texto a converter do discurso diplomático

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

> O cmdlet `Disconnect-VpnS2SInterface` desconecta uma interface VPN site a site que foi conectada usando um perfil de conexão VPN. Você deve especificar o nome da interface VPN que deseja desconectar usando o parâmetro `Name`. Se a interface não estiver conectada, o cmdlet não fará nada.

Este cmdlet é útil para gerenciar conexões VPN site a site, especialmente em cenários onde você precisa desconectar manualmente uma interface VPN para manutenção ou solução de problemas. O cmdlet não remove a interface VPN; ele apenas desconecta a sessão ativa.

Exemplo:
```powershell
Disconnect-VpnS2SInterface -Name "VPN1"
```
Desconecta a interface VPN chamada "VPN1".

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
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
| **Default value** | `0.0` |
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

> Copie o texto transformado para a área de transferência

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
### `-Attachments <Object[]>`

> Anexos a serem incluídos na operação de IA.

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

> Nível de detalhe da imagem para processamento de IA.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Object[]>`

> Funções a serem expostas ao modelo de IA.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <Object[]>`

> Cmdlets para expor ao modelo de IA.

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

> Nomes de funções de ferramenta que não requerem confirmação.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> NÃO adicione pensamentos ao histórico da IA.

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

> Continue da última operação da IA.

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

> Pense em voz alta durante o processamento da IA.

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

> Desabilite o cache de sessão para esta operação.

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

> Permitir o uso de ferramentas padrão na operação de IA.

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

> Temperatura de áudio para geração de áudio por IA.

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

> Temperatura para geração de resposta de IA.

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

> Número de threads da CPU a serem usados para operação de IA.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String[]>`

> Regex para suprimir na saída da IA.

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

> Tamanho do contexto de áudio para processamento de áudio por IA.

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

> Limiar de silêncio para processamento de áudio de IA.

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

> Penalidade de comprimento para geração de sequência por IA.

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

> Limiar de entropia para saída de IA.

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

> Limiar de probabilidade logarítmica para saída de IA.

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

> Nenhum limite de fala para processamento de áudio por IA.

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

> .DESCRIÇÃO
    O cmdlet Remove-AzStorageContainer exclui um contêiner de armazenamento do Azure.

    O cmdlet Remove-AzStorageContainer exclui um contêiner de armazenamento do Azure.

.PARÂMETROS
    -Name <String>
        Especifica o nome do contêiner a ser excluído.

        Nomes de contêineres de blob do Azure devem ter entre 3 e 63 caracteres de comprimento e conter apenas letras minúsculas, números e hífens.

    -Force <SwitchParameter>
        Indica que este cmdlet não solicita confirmação.

        Este cmdlet solicita confirmação antes de excluir o contêiner, a menos que você especifique este parâmetro.

    -PassThru <SwitchParameter>
        Indica que este cmdlet retorna um objeto Boolean que reflete a operação.
        Por padrão, este cmdlet não retorna nenhum valor.

    -Context <IStorageContext>
        Especifica o contexto de armazenamento para o contêiner a ser removido.

    -ServerTimeoutPerRequest <Int32>
        Especifica o lado do serviço, em segundos, o tempo limite para cada solicitação.
        Use este parâmetro se demorar muito para o serviço concluir a solicitação.

    -ClientTimeoutPerRequest <Int32>
        Especifica o lado do cliente, em segundos, o tempo limite para cada solicitação.

    -ConcurrentTaskCount <Int32>
        Especifica as chamadas de rede simultâneas máximas.
        Use este parâmetro para limitar a concorrência.

    -DefaultProfile <IAzureContextContainer>
        As credenciais, conta, locatário e assinatura usados para comunicação com o Azure.

    -WhatIf <SwitchParameter>
        Mostra o que aconteceria se o cmdlet for executado.
        O cmdlet não é executado.

    -Confirm <SwitchParameter>
        Solicita sua confirmação antes de executar o cmdlet.

.EXEMPLOS 1: Excluir um contêiner de blob do Azure
    Este exemplo exclui um contêiner de armazenamento com base no nome do contêiner.

        PS C:\>Remove-AzStorageContainer -Name "mycontainer"

.EXEMPLOS 2: Excluir todos os contêineres de blob do Azure por pipeline
    Este exemplo exclui todos os contêineres de armazenamento cujo nome começa com "test".

        PS C:\>Get-AzStorageContainer -Prefix "test" | Remove-AzStorageContainer

.EXEMPLOS 3: Excluir um contêiner de blob do Azure sem confirmação
    Este exemplo exclui um contêiner de armazenamento sem confirmação.

        PS C:\>Remove-AzStorageContainer -Name "mycontainer" -Force

.SAÍDAS
    System.Boolean

.NOTAS
    Microsoft Azure PowerShell: cmdlets de armazenamento

.LINKS RELACIONADOS
    Online version: https://learn.microsoft.com/en-us/powershell/module/az.storage/remove-azstoragecontainer
    Get-AzStorageContainer
    New-AzStorageContainer

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

> Então, estou prestes a pedir para você executar algumas tarefas repetitivas como parte do nosso processo de tradução. Este é um grande projeto, então sua ajuda é muito apreciada! Segue as instruções a seguir, não há necessidade de adicionar nada extra.

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

> Desabilitar VOX para saída de áudio de IA.

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

> Use captura de áudio da área de trabalho para áudio de IA.

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

> Não use o contexto para a operação de IA.

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

> Use a estratégia de busca por feixe (beam search) para IA.

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

> Sobre o cmdlet Get-Help

SINOPSE
    Exibe informações sobre comandos e conceitos do PowerShell.

SINTAXE
    Get-Help [[-Name] <String>] [-Path <String>] [-Category <String[]>] [-Component <String[]>] [-Functionality <String[]>] [-Role <String[]>] [-Full] [-Online] [-Parameter <String>] [-ShowWindow] [<CommonParameters>]

DESCRIÇÃO
    O cmdlet Get-Help exibe informações sobre conceitos e comandos do PowerShell, incluindo cmdlets, funções, fluxos de trabalho, provedores, aliases e scripts.
    Para obter ajuda sobre um comando do PowerShell, digite Get-Help seguido do nome do comando.
    Você pode exibir a página de tópico de ajuda completa ou pesquisar parâmetros específicos. Você também pode obter ajuda online.

    Os tópicos de ajuda do PowerShell são arquivos no formato de texto formatado (XML) chamados de arquivos de ajuda baseados em comentários.

PARÂMETROS
    -Name <String>
        Obtém ajuda sobre o comando ou tópico de conceito especificado. Insira o nome de um cmdlet, função, provedor, script ou fluxo de trabalho, ou um tópico de ajuda conceitual, como about_Objects. Caracteres curinga são permitidos em nomes de cmdlets e funções, mas não em nomes de tópicos de ajuda conceitual.

        Para obter ajuda sobre um provedor do PowerShell, insira "Get-Help about_Provider".

    -Path <String>
        Obtém a ajuda que explica como o comando aparece no caminho especificado. Insira um caminho para um módulo.
        Este parâmetro foi projetado para obter ajuda sobre comandos que são fornecidos por um provedor.

    -Category <String[]>
        Exibe ajuda apenas para itens na categoria especificada e seus aliases. Os valores válidos são: Alias, Cmdlet, Provider, General, FAQ, Glossary, HelpFile, ScriptCommand, Function, Filter, ExternalScript, All, DefaultWorkflow, Workflow, ExternalWorkflow, Class, Configuration. O valor padrão é Default.

    -Component <String[]>
        Exibe comandos com o valor do componente especificado, como "Exchange".

    -Functionality <String[]>
        Exibe comandos com a funcionalidade especificada.

    -Role <String[]>
        Exibe ajuda personalizada para a função de usuário especificada.

    -Full
        Exibe o tópico de ajuda completo para um comando, incluindo descrições de parâmetros, exemplos e informações sobre tipos de entrada e saída.

    -Online
        Exibe a versão online do tópico de ajuda no seu navegador padrão.

    -Parameter <String>
        Exibe a descrição detalhada do parâmetro especificado. Caracteres curinga não são permitidos.

    -ShowWindow
        Exibe o tópico de ajuda em uma janela separada.

    <CommonParameters>
        Este cmdlet oferece suporte aos parâmetros comuns: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable e OutVariable. Para obter mais informações, consulte about_CommonParameters.

ENTRADAS
    String
        Você pode canalizar um nome de comando para Get-Help.

SAÍDAS
    Microsoft.PowerShell.Commands.HelpInfoItem
        Get-Help retorna uma HelpInfoItem para comando.

NOTAS
    Para obter exemplos, digite "Get-Help Get-Help -Examples" ou "Get-Help Get-Help -Full".
    Para obter a lista completa de cmdlets, digite "Get-Command -CommandType Cmdlet".

EXEMPLOS
    -------------------------- EXEMPLO 1 --------------------------
    PS C:\> Get-Help Get-ChildItem

    Este comando exibe o tópico de ajuda para o cmdlet Get-ChildItem.

    -------------------------- EXEMPLO 2 --------------------------
    PS C:\> Get-Help *service*

    Este comando exibe a ajuda sobre tópicos que incluem "service" no nome.

    -------------------------- EXEMPLO 3 --------------------------
    PS C:\> Get-Help about_Modules

    Este comando exibe o tópico de ajuda sobre Módulos do PowerShell.

    -------------------------- EXEMPLO 4 --------------------------
    PS C:\> Get-Help Get-Help -Full

    Este comando exibe o tópico de ajuda completo para o cmdlet Get-Help.

    -------------------------- EXEMPLO 5 --------------------------
    PS C:\> Get-Help Get-Help -Parameter Name

    Este comando exibe a descrição detalhada do parâmetro Name do cmdlet Get-Help.

    -------------------------- EXEMPLO 6 --------------------------
    PS C:\> Get-Help Get-Help -Online

    Este comando abre a versão online do tópico de ajuda para o cmdlet Get-Help no seu navegador padrão.

    -------------------------- EXEMPLO 7 --------------------------
    PS C:\> Get-Help Get-Help -ShowWindow

    Este comando exibe o tópico de ajuda para o cmdlet Get-Help em uma janela separada.

TÓPICOS RELACIONADOS
    about_Comment_Based_Help
    Get-Command
    Get-Member
    Updatable-Help
    Save-Help
    Update-Help

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

> Reinicie à vontade até considerar não ser mais um problema.

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

> Filtrar tipos de bloco de marcação na saída da IA.

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

- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/ConvertFrom-CorporateSpeak.md)
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
