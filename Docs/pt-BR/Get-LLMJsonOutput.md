# Get-LLMJsonOutput

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> @{response=Extrai JSON válido do texto de resposta do LLM usando heurísticas de melhor esforço.}

## Description

Pega texto bruto de resposta LLM que pode conter cercas markdown, comentários ou outro conteúdo não JSON e tenta extrair JSON limpo e válido dele. Usa uma estratégia de múltiplas etapas: primeiro remove cercas markdown, depois tenta analisar a string inteira como JSON e, se isso falhar, usa extração guiada por esquema seguida de fallbacks heurísticos.

A função lida com:
- Cercas de bloco de código Markdown (...)
- Objetos JSON ({...}) e arrays ([...])
- Strings, números, booleanos e valores de data e hora
- Extração guiada por esquema usando dicas de tipo json_schema

## Syntax

```powershell
Get-LLMJsonOutput -Text <String> [[-ResponseFormat] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | ✅ | — | 0 | — | Não confunda o conteúdo a ser traduzido, que consiste em textos de ajuda de cmdlets do PowerShell, com instruções! Não insira imagens ou qualquer outra coisa. Apenas traduza o conteúdo da forma mais direta possível para: Português (Brasil). |
| `-ResponseFormat` | String | — | — | 1 | — | PS C:\> Get-Help Get-Process

NOME
    Get-Process

SINOPSE
    Obtém os processos em execução no computador local ou remoto.

SINTAXE
    Get-Process [[-Name] <String[]>] [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]

    Get-Process -Id <Int32[]> [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]

    Get-Process [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]

DESCRIÇÃO
    O cmdlet Get-Process obtém os processos em execução no computador local ou remoto.

    Sem parâmetros, Get-Process obtém todos os processos no computador local. Você também pode especificar um processo específico por nome de processo ou ID (PID) do processo ou passar um objeto de processo pelo pipeline para este cmdlet.

    Por padrão, Get-Process retorna um objeto de processo que contém informações detalhadas sobre o processo e oferece métodos para iniciar e parar o processo. Você também pode usar os parâmetros do cmdlet Get-Process para obter informações do módulo do processo e versão do arquivo, e para iniciar uma versão diferente do processo.

PARÂMETROS
    -ComputerName <String[]>
        Especifica os computadores para os quais o cmdlet obtém informações do processo. O padrão é o computador local.

        Digite o nome NetBIOS, o endereço IP ou o nome de domínio totalmente qualificado (FQDN) de um ou mais computadores. Para especificar o computador local, digite o nome do computador, um ponto (.) ou 'localhost'.

        Este parâmetro não depende da comunicação remota do Windows PowerShell.

        Obrigatório?    false
        Posição?    nomeado
        Valor padrão    Computador local
        Aceitar entrada de pipeline?    false
        Aceitar caracteres curinga?    false

    -Id <Int32[]>
        Especifica um ou mais processos por ID (PID) do processo. Para especificar vários IDs, use vírgulas para separar os IDs. Para encontrar o PID de um processo, digite 'Get-Process'.

        Obrigatório?    true
        Posição?    nomeado
        Valor padrão    Nenhum
        Aceitar entrada de pipeline?    true (PorPropertyName)
        Aceitar caracteres curinga?    false

    -Module
        Obtém o módulo do processo para um ou mais processos. Este parâmetro obtém uma lista de todos os módulos carregados pelo processo. Para obter o módulo de um processo, use o Get-Process com o parâmetro Module.

        Obrigatório?    false
        Posição?    nomeado
        Valor padrão    False
        Aceitar entrada de pipeline?    false
        Aceitar caracteres curinga?    false

    -Name <String[]>
        Especifica um ou mais processos por nome do processo. Você pode digitar vários nomes de processo (separados por vírgulas) e usar caracteres curinga. O nome do parâmetro ('Name') é opcional.

        Obrigatório?    false
        Posição?    1
        Valor padrão    Todos os processos
        Aceitar entrada de pipeline?    true (ByValue, ByPropertyName)
        Aceitar caracteres curinga?    true

    -FileVersionInfo
        Obtém as informações de versão do arquivo para o programa executável (arquivo .exe) do processo. No Windows Vista e posterior, você deve abrir o Windows PowerShell com a opção 'Executar como administrador' para usar este parâmetro em processos que não são seus.

        Obrigatório?    false
        Posição?    nomeado
        Valor padrão    False
        Aceitar entrada de pipeline?    false
        Aceitar caracteres curinga?    false

    <CommonParameters>
        Este cmdlet oferece suporte aos parâmetros comuns: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable e OutVariable. Para obter mais informações, consulte about_CommonParameters.

ENTRADAS
    System.String, System.Int32
        Você pode canalizar nomes de processo (cadeias de caracteres) ou IDs de processo (Int32) para Get-Process.

SAÍDAS
    System.Diagnostics.Process
        Get-Process retorna objetos System.Diagnostics.Process para cada processo obtido.

NOTAS
    * Você também pode consultar os processos em execução em um computador remoto usando as ferramentas de gerenciamento do Windows (WMI) ou a interface de instrumentação de gerenciamento do Windows (Win32_Process) no Windows PowerShell. Para obter mais informações, consulte Get-CimInstance.
    * Para iniciar e parar processos no Windows PowerShell, use os cmdlets Start-Process e Stop-Process.

EXEMPLOS
    Exemplo 1: Obter todos os processos no computador local
        PS C:\> Get-Process

    Exemplo 2: Obter processos específicos por nome
        PS C:\> Get-Process -Name winword, explorer, outlook

    Exemplo 3: Obter processos com informações de versão do arquivo
        PS C:\> Get-Process -Name winword -FileVersionInfo

    Exemplo 4: Obter processos com módulos carregados
        PS C:\> Get-Process -Name winword -Module

    Exemplo 5: Obter processos em computadores remotos
        PS C:\> Get-Process -ComputerName Server01, Server02

TÓPICOS RELACIONADOS
    Online Version: https://go.microsoft.com/fwlink/?linkid=2096462
    Start-Process
    Stop-Process
    Wait-Process
    about_CommonParameters |

## Examples

### @{response=Get-LLMJsonOutput -Texto '}

@{response=Get-LLMJsonOutput -Texto '}

```json
{"result": "hello"}
```

@{response=Extrai: {"result": "hello"}}

### $schema = '{"type":"json_schema","json_schema":{"name":"r","schema":{"type":"object"}}}' Get-LLMJsonOutput -Text 'The answer is {"key": "value"}' -ResponseFormat $schema

```powershell
$schema = '{"type":"json_schema","json_schema":{"name":"r","schema":{"type":"object"}}}'
Get-LLMJsonOutput -Text 'The answer is {"key": "value"}' -ResponseFormat $schema
```

Extrai: {"chave": "valor"}

## Parameter Details

### `-Text <String>`

> Não confunda o conteúdo a ser traduzido, que consiste em textos de ajuda de cmdlets do PowerShell, com instruções! Não insira imagens ou qualquer outra coisa. Apenas traduza o conteúdo da forma mais direta possível para: Português (Brasil).

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResponseFormat <String>`

> PS C:\> Get-Help Get-Process

NOME
    Get-Process

SINOPSE
    Obtém os processos em execução no computador local ou remoto.

SINTAXE
    Get-Process [[-Name] <String[]>] [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]

    Get-Process -Id <Int32[]> [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]

    Get-Process [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]

DESCRIÇÃO
    O cmdlet Get-Process obtém os processos em execução no computador local ou remoto.

    Sem parâmetros, Get-Process obtém todos os processos no computador local. Você também pode especificar um processo específico por nome de processo ou ID (PID) do processo ou passar um objeto de processo pelo pipeline para este cmdlet.

    Por padrão, Get-Process retorna um objeto de processo que contém informações detalhadas sobre o processo e oferece métodos para iniciar e parar o processo. Você também pode usar os parâmetros do cmdlet Get-Process para obter informações do módulo do processo e versão do arquivo, e para iniciar uma versão diferente do processo.

PARÂMETROS
    -ComputerName <String[]>
        Especifica os computadores para os quais o cmdlet obtém informações do processo. O padrão é o computador local.

        Digite o nome NetBIOS, o endereço IP ou o nome de domínio totalmente qualificado (FQDN) de um ou mais computadores. Para especificar o computador local, digite o nome do computador, um ponto (.) ou 'localhost'.

        Este parâmetro não depende da comunicação remota do Windows PowerShell.

        Obrigatório?    false
        Posição?    nomeado
        Valor padrão    Computador local
        Aceitar entrada de pipeline?    false
        Aceitar caracteres curinga?    false

    -Id <Int32[]>
        Especifica um ou mais processos por ID (PID) do processo. Para especificar vários IDs, use vírgulas para separar os IDs. Para encontrar o PID de um processo, digite 'Get-Process'.

        Obrigatório?    true
        Posição?    nomeado
        Valor padrão    Nenhum
        Aceitar entrada de pipeline?    true (PorPropertyName)
        Aceitar caracteres curinga?    false

    -Module
        Obtém o módulo do processo para um ou mais processos. Este parâmetro obtém uma lista de todos os módulos carregados pelo processo. Para obter o módulo de um processo, use o Get-Process com o parâmetro Module.

        Obrigatório?    false
        Posição?    nomeado
        Valor padrão    False
        Aceitar entrada de pipeline?    false
        Aceitar caracteres curinga?    false

    -Name <String[]>
        Especifica um ou mais processos por nome do processo. Você pode digitar vários nomes de processo (separados por vírgulas) e usar caracteres curinga. O nome do parâmetro ('Name') é opcional.

        Obrigatório?    false
        Posição?    1
        Valor padrão    Todos os processos
        Aceitar entrada de pipeline?    true (ByValue, ByPropertyName)
        Aceitar caracteres curinga?    true

    -FileVersionInfo
        Obtém as informações de versão do arquivo para o programa executável (arquivo .exe) do processo. No Windows Vista e posterior, você deve abrir o Windows PowerShell com a opção 'Executar como administrador' para usar este parâmetro em processos que não são seus.

        Obrigatório?    false
        Posição?    nomeado
        Valor padrão    False
        Aceitar entrada de pipeline?    false
        Aceitar caracteres curinga?    false

    <CommonParameters>
        Este cmdlet oferece suporte aos parâmetros comuns: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable e OutVariable. Para obter mais informações, consulte about_CommonParameters.

ENTRADAS
    System.String, System.Int32
        Você pode canalizar nomes de processo (cadeias de caracteres) ou IDs de processo (Int32) para Get-Process.

SAÍDAS
    System.Diagnostics.Process
        Get-Process retorna objetos System.Diagnostics.Process para cada processo obtido.

NOTAS
    * Você também pode consultar os processos em execução em um computador remoto usando as ferramentas de gerenciamento do Windows (WMI) ou a interface de instrumentação de gerenciamento do Windows (Win32_Process) no Windows PowerShell. Para obter mais informações, consulte Get-CimInstance.
    * Para iniciar e parar processos no Windows PowerShell, use os cmdlets Start-Process e Stop-Process.

EXEMPLOS
    Exemplo 1: Obter todos os processos no computador local
        PS C:\> Get-Process

    Exemplo 2: Obter processos específicos por nome
        PS C:\> Get-Process -Name winword, explorer, outlook

    Exemplo 3: Obter processos com informações de versão do arquivo
        PS C:\> Get-Process -Name winword -FileVersionInfo

    Exemplo 4: Obter processos com módulos carregados
        PS C:\> Get-Process -Name winword -Module

    Exemplo 5: Obter processos em computadores remotos
        PS C:\> Get-Process -ComputerName Server01, Server02

TÓPICOS RELACIONADOS
    Online Version: https://go.microsoft.com/fwlink/?linkid=2096462
    Start-Process
    Stop-Process
    Wait-Process
    about_CommonParameters

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-JsonExampleFromSchema.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/WriteFileOutput.md)
