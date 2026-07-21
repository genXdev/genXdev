# Get-LLMJsonOutput

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Wyodrębnia prawidłowy JSON z tekstu odpowiedzi LLM, stosując heurystyki najlepszego wysiłku.

## Description

Pobiera surowy tekst odpowiedzi LLM, który może zawierać znaczniki markdown, komentarze lub inną treść niebędącą JSON-em, i próbuje wyodrębnić z niego czysty, poprawny JSON. Stosuje wieloetapową strategię: najpierw usuwa znaczniki markdown, następnie próbuje sparsować cały tekst jako JSON, a jeśli to się nie powiedzie, stosuje ekstrakcję opartą na schemacie, a później heurystyczne rozwiązania zastępcze.

Funkcja obsługuje:
- Znaczniki kodu Markdown (...)
- Obiekty JSON ({...}) i tablice ([...])
- Łańcuchy znaków, liczby, wartości logiczne i wartości daty-czasu
- Ekstrakcję opartą na schemacie z użyciem wskazówek typu json_schema

## Syntax

```powershell
Get-LLMJsonOutput -Text <String> [[-ResponseFormat] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | ✅ | — | 0 | — | @{response=Nie myl treści do przetłumaczenia, która składa się z tekstów pomocy poleceń cmdlet PowerShell, z instrukcjami! Nie wstawiaj obrazów ani niczego innego. Po prostu przetłumacz treść możliwie bezpośrednio na: polski (Polska).} |
| `-ResponseFormat` | String | — | — | 1 | — | Tutaj jest tłumaczenie tekstu na polski (Polska):

SYNTAX
    Invoke-Command
        [-ComputerName] <String[]> [-FilePath] <String>
        [-Session] <PSSession[]> [-FilePath] <String>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock>
        [-Session] <PSSession[]> [-ScriptBlock] <ScriptBlock>
        [-ComputerName] <String[]> [-FilePath] <String> [-ArgumentList] <Object[]>
        [-Session] <PSSession[]> [-FilePath] <String> [-ArgumentList] <Object[]>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-ArgumentList] <Object[]>
        [-Session] <PSSession[]> [-ScriptBlock] <ScriptBlock> [-ArgumentList] <Object[]>
        [-ConnectionUri] <Uri[]> [-FilePath] <String>
        [-ConnectionUri] <Uri[]> [-ScriptBlock] <ScriptBlock>
        [-ConnectionUri] <Uri[]> [-ScriptBlock] <ScriptBlock> [-ArgumentList] <Object[]>
        [-ConnectionUri] <Uri[]> [-FilePath] <String> [-ArgumentList] <Object[]>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-ArgumentList] <Object[]>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-ArgumentList] <Object[]>
        [-ConnectionUri] <Uri[]> [-FilePath] <String> [-Credential] <PSCredential>
        [-ConnectionUri] <Uri[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential>
        [-ConnectionUri] <Uri[]> [-FilePath] <String> [-Credential] <PSCredential> [-ArgumentList] <Object[]>
        [-ConnectionUri] <Uri[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-ArgumentList] <Object[]>
        [-ComputerName] <String[]> [-FilePath] <String> [-InputObject] <PSObject>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-InputObject] <PSObject>
        [-ComputerName] <String[]> [-FilePath] <String> [-InputObject] <PSObject> [-ArgumentList] <Object[]>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-InputObject] <PSObject> [-ArgumentList] <Object[]>
        [-ConnectionUri] <Uri[]> [-FilePath] <String> [-InputObject] <PSObject>
        [-ConnectionUri] <Uri[]> [-ScriptBlock] <ScriptBlock> [-InputObject] <PSObject>
        [-ConnectionUri] <Uri[]> [-FilePath] <String> [-InputObject] <PSObject> [-ArgumentList] <Object[]>
        [-ConnectionUri] <Uri[]> [-ScriptBlock] <ScriptBlock> [-InputObject] <PSObject> [-ArgumentList] <Object[]>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-InputObject] <PSObject>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-InputObject] <PSObject>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-InputObject] <PSObject> [-ArgumentList] <Object[]>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-InputObject] <PSObject> [-ArgumentList] <Object[]>
        [-ConnectionUri] <Uri[]> [-FilePath] <String> [-Credential] <PSCredential> [-InputObject] <PSObject>
        [-ConnectionUri] <Uri[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-InputObject] <PSObject>
        [-ConnectionUri] <Uri[]> [-FilePath] <String> [-Credential] <PSCredential> [-InputObject] <PSObject> [-ArgumentList] <Object[]>
        [-ConnectionUri] <Uri[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-InputObject] <PSObject> [-ArgumentList] <Object[]>
        [-ComputerName] <String[]> [-FilePath] <String> [-UseSSL]
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-UseSSL]
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-UseSSL]
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-UseSSL]
        [-ComputerName] <String[]> [-FilePath] <String> [-SessionOption] <PSSessionOption>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-SessionOption] <PSSessionOption>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-SessionOption] <PSSessionOption>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-SessionOption] <PSSessionOption>
        [-ComputerName] <String[]> [-FilePath] <String> [-Port] <Int32>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Port] <Int32>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-Port] <Int32>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-Port] <Int32>
        [-ComputerName] <String[]> [-FilePath] <String> [-Authentication] <AuthenticationMechanism>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Authentication] <AuthenticationMechanism>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-Authentication] <AuthenticationMechanism>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-Authentication] <AuthenticationMechanism>
        [-ComputerName] <String[]> [-FilePath] <String> [-ConfigurationName] <String>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-ConfigurationName] <String>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-ConfigurationName] <String>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-ConfigurationName] <String>
        [-ComputerName] <String[]> [-FilePath] <String> [-ThrottleLimit] <Int32>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-ThrottleLimit] <Int32>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-ThrottleLimit] <Int32>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-ThrottleLimit] <Int32>
        [-ComputerName] <String[]> [-FilePath] <String> [-AsJob]
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-AsJob]
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-AsJob]
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-AsJob]
        [-ComputerName] <String[]> [-FilePath] <String> [-SessionName] <String>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-SessionName] <String>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-SessionName] <String>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-SessionName] <String>
        [-ComputerName] <String[]> [-FilePath] <String> [-InDisconnectedSession]
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-InDisconnectedSession]
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-InDisconnectedSession]
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-InDisconnectedSession]
        [-ComputerName] <String[]> [-FilePath] <String> [-HideComputerName]
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-HideComputerName]
        [-ComputerName] <String[]> [-FilePath] <String> [-RemoteDebug]
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-RemoteDebug]
        [-ComputerName] <String[]> [-FilePath] <String> [-SessionOption] <PSSessionOption> [-Port] <Int32> [-Authentication] <AuthenticationMechanism> [-ConfigurationName] <String> [-ThrottleLimit] <Int32> [-AsJob] [-SessionName] <String> [-InDisconnectedSession] [-HideComputerName] [-RemoteDebug]
        
OPIS
    Polecenie cmdlet Invoke-Command uruchamia polecenia na komputerach lokalnych lub zdalnych i zwraca wszystkie wyniki z poleceń, w tym komunikaty błędów. Używając Invoke-Command, możesz uruchomić polecenie Enter-PSSession lub Exit-PSSession na zdalnych komputerach. Ponadto możesz użyć tego polecenia cmdlet, aby uruchomić polecenia w izolowanych domenach na komputerach lokalnych. |

## Examples

### Get-LLMJsonOutput -Tekst

Get-LLMJsonOutput -Tekst

```json
{"result": "hello"}
```

Wyodrębnia: {"result": "hello"}

### $schema = '{"type":"json_schema","json_schema":{"name":"r","schema":{"type":"object"}}}' Get-LLMJsonOutput -Text 'The answer is {"key": "value"}' -ResponseFormat $schema

```powershell
$schema = '{"type":"json_schema","json_schema":{"name":"r","schema":{"type":"object"}}}'
Get-LLMJsonOutput -Text 'The answer is {"key": "value"}' -ResponseFormat $schema
```

{"key": "value"}

## Parameter Details

### `-Text <String>`

> @{response=Nie myl treści do przetłumaczenia, która składa się z tekstów pomocy poleceń cmdlet PowerShell, z instrukcjami! Nie wstawiaj obrazów ani niczego innego. Po prostu przetłumacz treść możliwie bezpośrednio na: polski (Polska).}

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

> Tutaj jest tłumaczenie tekstu na polski (Polska):

SYNTAX
    Invoke-Command
        [-ComputerName] <String[]> [-FilePath] <String>
        [-Session] <PSSession[]> [-FilePath] <String>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock>
        [-Session] <PSSession[]> [-ScriptBlock] <ScriptBlock>
        [-ComputerName] <String[]> [-FilePath] <String> [-ArgumentList] <Object[]>
        [-Session] <PSSession[]> [-FilePath] <String> [-ArgumentList] <Object[]>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-ArgumentList] <Object[]>
        [-Session] <PSSession[]> [-ScriptBlock] <ScriptBlock> [-ArgumentList] <Object[]>
        [-ConnectionUri] <Uri[]> [-FilePath] <String>
        [-ConnectionUri] <Uri[]> [-ScriptBlock] <ScriptBlock>
        [-ConnectionUri] <Uri[]> [-ScriptBlock] <ScriptBlock> [-ArgumentList] <Object[]>
        [-ConnectionUri] <Uri[]> [-FilePath] <String> [-ArgumentList] <Object[]>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-ArgumentList] <Object[]>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-ArgumentList] <Object[]>
        [-ConnectionUri] <Uri[]> [-FilePath] <String> [-Credential] <PSCredential>
        [-ConnectionUri] <Uri[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential>
        [-ConnectionUri] <Uri[]> [-FilePath] <String> [-Credential] <PSCredential> [-ArgumentList] <Object[]>
        [-ConnectionUri] <Uri[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-ArgumentList] <Object[]>
        [-ComputerName] <String[]> [-FilePath] <String> [-InputObject] <PSObject>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-InputObject] <PSObject>
        [-ComputerName] <String[]> [-FilePath] <String> [-InputObject] <PSObject> [-ArgumentList] <Object[]>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-InputObject] <PSObject> [-ArgumentList] <Object[]>
        [-ConnectionUri] <Uri[]> [-FilePath] <String> [-InputObject] <PSObject>
        [-ConnectionUri] <Uri[]> [-ScriptBlock] <ScriptBlock> [-InputObject] <PSObject>
        [-ConnectionUri] <Uri[]> [-FilePath] <String> [-InputObject] <PSObject> [-ArgumentList] <Object[]>
        [-ConnectionUri] <Uri[]> [-ScriptBlock] <ScriptBlock> [-InputObject] <PSObject> [-ArgumentList] <Object[]>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-InputObject] <PSObject>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-InputObject] <PSObject>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-InputObject] <PSObject> [-ArgumentList] <Object[]>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-InputObject] <PSObject> [-ArgumentList] <Object[]>
        [-ConnectionUri] <Uri[]> [-FilePath] <String> [-Credential] <PSCredential> [-InputObject] <PSObject>
        [-ConnectionUri] <Uri[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-InputObject] <PSObject>
        [-ConnectionUri] <Uri[]> [-FilePath] <String> [-Credential] <PSCredential> [-InputObject] <PSObject> [-ArgumentList] <Object[]>
        [-ConnectionUri] <Uri[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-InputObject] <PSObject> [-ArgumentList] <Object[]>
        [-ComputerName] <String[]> [-FilePath] <String> [-UseSSL]
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-UseSSL]
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-UseSSL]
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-UseSSL]
        [-ComputerName] <String[]> [-FilePath] <String> [-SessionOption] <PSSessionOption>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-SessionOption] <PSSessionOption>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-SessionOption] <PSSessionOption>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-SessionOption] <PSSessionOption>
        [-ComputerName] <String[]> [-FilePath] <String> [-Port] <Int32>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Port] <Int32>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-Port] <Int32>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-Port] <Int32>
        [-ComputerName] <String[]> [-FilePath] <String> [-Authentication] <AuthenticationMechanism>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Authentication] <AuthenticationMechanism>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-Authentication] <AuthenticationMechanism>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-Authentication] <AuthenticationMechanism>
        [-ComputerName] <String[]> [-FilePath] <String> [-ConfigurationName] <String>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-ConfigurationName] <String>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-ConfigurationName] <String>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-ConfigurationName] <String>
        [-ComputerName] <String[]> [-FilePath] <String> [-ThrottleLimit] <Int32>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-ThrottleLimit] <Int32>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-ThrottleLimit] <Int32>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-ThrottleLimit] <Int32>
        [-ComputerName] <String[]> [-FilePath] <String> [-AsJob]
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-AsJob]
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-AsJob]
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-AsJob]
        [-ComputerName] <String[]> [-FilePath] <String> [-SessionName] <String>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-SessionName] <String>
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-SessionName] <String>
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-SessionName] <String>
        [-ComputerName] <String[]> [-FilePath] <String> [-InDisconnectedSession]
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-InDisconnectedSession]
        [-ComputerName] <String[]> [-FilePath] <String> [-Credential] <PSCredential> [-InDisconnectedSession]
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-Credential] <PSCredential> [-InDisconnectedSession]
        [-ComputerName] <String[]> [-FilePath] <String> [-HideComputerName]
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-HideComputerName]
        [-ComputerName] <String[]> [-FilePath] <String> [-RemoteDebug]
        [-ComputerName] <String[]> [-ScriptBlock] <ScriptBlock> [-RemoteDebug]
        [-ComputerName] <String[]> [-FilePath] <String> [-SessionOption] <PSSessionOption> [-Port] <Int32> [-Authentication] <AuthenticationMechanism> [-ConfigurationName] <String> [-ThrottleLimit] <Int32> [-AsJob] [-SessionName] <String> [-InDisconnectedSession] [-HideComputerName] [-RemoteDebug]
        
OPIS
    Polecenie cmdlet Invoke-Command uruchamia polecenia na komputerach lokalnych lub zdalnych i zwraca wszystkie wyniki z poleceń, w tym komunikaty błędów. Używając Invoke-Command, możesz uruchomić polecenie Enter-PSSession lub Exit-PSSession na zdalnych komputerach. Ponadto możesz użyć tego polecenia cmdlet, aby uruchomić polecenia w izolowanych domenach na komputerach lokalnych.

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

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-JsonExampleFromSchema.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/WriteFileOutput.md)
