# Invoke-ImageKeywordUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagekeywordgeneration`

## Synopsis

> Atualiza metadados de imagem com descrições e palavras-chave geradas por IA.

## Description

A função Invoke-ImageKeywordUpdate analisa imagens usando IA para gerar descrições, palavras-chave e outros metadados. Ela cria um arquivo JSON complementar para cada imagem contendo essas informações. A função pode processar apenas novas imagens ou atualizar metadados existentes, e suporta varredura recursiva de diretórios.

## Syntax

```powershell
Invoke-ImageKeywordUpdate [[-ImageDirectories] <String[]>] [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ExposedCmdLets <String[]>] [-FacesDirectory <String>] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LLMQueryType <String>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSupportForJsonSchema <String>] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-ResponseFormat <String>] [-RetryFailed] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Os caminhos de diretório contendo imagens a serem processadas |
| `-Recurse` | SwitchParameter | — | — | Named | — | Processa imagens no diretório especificado e todos os subdiretórios |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Processe apenas imagens que ainda não possuem arquivos de metadados faciais |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Tentará novamente as atualizações de palavras-chave de imagem que falharam anteriormente |
| `-Language` | String | — | — | Named | — | O idioma para descrições e palavras-chave geradas |
| `-FacesDirectory` | String | — | — | Named | — | O diretório contendo imagens de rosto organizadas por pastas de pessoas. Se não especificado, usa a preferência de diretório de rostos configurada. |
| `-Instructions` | String | — | — | 2 | — | ---
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
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para aleatoriedade da resposta (0,0-1,0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Nível de detalhe da imagem |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | O tipo da consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão de modelo a ser usado para operações de IA |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indica que o LLM não tem suporte para schemas JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
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
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usar configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar configurações alternativas armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas nas preferências persistentes sem afetar a sessão |
| `-Functions` | String[] | — | — | Named | — | Especifica as funções a serem usadas para a operação de IA. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Especifica os cmdlets expostos para a operação de IA. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Especifica nomes de funções de ferramenta que não exigem confirmação. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Se especificado, desativa o uso de contexto. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Comprimento máximo de retorno de chamada para chamadas de ferramentas. |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru para retornar objetos estruturados em vez de exibir no console |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Detecta alterações no diretório de faces e registra novamente as faces se necessário |

## Examples

### Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew

```powershell
Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew
```

### updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"

```powershell
updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"
```

## Parameter Details

### `-ImageDirectories <String[]>`

> Os caminhos de diretório contendo imagens a serem processadas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@('.\')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Recurse`

> Processa imagens no diretório especificado e todos os subdiretórios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyNew`

> Processe apenas imagens que ainda não possuem arquivos de metadados faciais

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryFailed`

> Tentará novamente as atualizações de palavras-chave de imagem que falharam anteriormente

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

> O idioma para descrições e palavras-chave geradas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FacesDirectory <String>`

> O diretório contendo imagens de rosto organizadas por pastas de pessoas. Se não especificado, usa a preferência de diretório de rostos configurada.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
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
| **Position?** | 2 |
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
| **Default value** | `'high'` |
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
| **Default value** | `'Pictures'` |
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
### `-Functions <String[]>`

> Especifica as funções a serem usadas para a operação de IA.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <String[]>`

> Especifica os cmdlets expostos para a operação de IA.

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

> Especifica nomes de funções de ferramenta que não exigem confirmação.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> Se especificado, desativa o uso de contexto.

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
### `-PassThru`

> PassThru para retornar objetos estruturados em vez de exibir no console

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoUpdateFaces`

> Detecta alterações no diretório de faces e registra novamente as faces se necessário

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
