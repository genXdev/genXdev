# Remove-JSONComments

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Usuwa komentarze z zawartości JSON.

## Description

* Przetwarza zawartość JSON i usuwa zarówno komentarze jednowierszowe, jak i wielowierszowe, zachowując strukturę JSON.
* Przydatne do czyszczenia plików JSON zawierających komentarze dokumentacyjne przed parsowaniem.
* Obsługuje zarówno komentarze jednowierszowe (//), jak i wielowierszowe (/* */).

## Syntax

```powershell
Remove-JSONComments -Json <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Json` | String | ✅ | — | 0 | — | #### Get-WinEvent
Pobiera zdarzenia z dzienników zdarzeń i śledzenia zdarzeń na komputerach lokalnych i zdalnych.

#### Syntax
```powershell
Get-WinEvent
   [-LogName] <String[]>
   [-MaxEvents] <Int64>
   [-Oldest]
   [<CommonParameters>]
```
```powershell
Get-WinEvent
   [[-Path] <String[]>]
   [-MaxEvents] <Int64>
   [-Oldest]
   [<CommonParameters>]
```
```powershell
Get-WinEvent
   [[-Provider] <String[]>]
   [-MaxEvents] <Int64>
   [-Oldest]
   [<CommonParameters>]
```
```powershell
Get-WinEvent
   [-FilterHashtable] <Hashtable>
   [-MaxEvents] <Int64>
   [-Oldest]
   [<CommonParameters>]
```
```powershell
Get-WinEvent
   [-FilterXml] <XmlDocument>
   [-MaxEvents] <Int64>
   [-Oldest]
   [<CommonParameters>]
```
```powershell
Get-WinEvent
   [-FilterXPath] <String>
   [-MaxEvents] <Int64>
   [-Oldest]
   [<CommonParameters>]
```

#### Description
Polecenie `Get-WinEvent` pobiera zdarzenia z dzienników zdarzeń, w tym z klasycznych dzienników, takich jak System i Application, oraz z dzienników zdarzeń utworzonych przez technologię Windows Eventing Technology (ETW). Polecenie to domyślnie wyświetla zdarzenia w odwrotnej kolejności chronologicznej (najnowsze na górze).

Zdarzenia zawierają znacznik czasu i dane o zdarzeniu. Znacznik czasu w rekordzie zdarzenia jest w czasie UTC. Wyświetlanie znacznika czasu w konsoli jest konwertowane na czas lokalny, ale obiekty są w UTC. Zaleca się filtrowanie zdarzeń według czasu przy użyciu czasu UTC, aby uniknąć problemów z konwersją stref czasowych.

Polecenie `Get-WinEvent` może pobierać zdarzenia z:

- Dzienniki zdarzeń (dzienniki zdarzeń Windows i klasyczne dzienniki zdarzeń, takie jak System i Application)
- Pliki dzienników zdarzeń wygenerowane przez `Export-Counter` lub zapisane jako pliki dziennika zdarzeń
- Śledzenie zdarzeń (ETW), które generują dane dziennika zdarzeń śledzenia zdarzeń
- Pliki dziennika z plików .evtx, .etl i .evt

Parametr `-ListLog` wyświetla wszystkie nazwy dzienników zdarzeń dostępnych w systemie, co ułatwia wybór odpowiedniego dziennika.

Ponadto `Get-WinEvent` obsługuje szereg parametrów filtrujących do kontrolowania rozmiaru i zawartości danych zdarzeń zwracanych z dziennika.

Przy pracy z dziennikami zdarzeń, które mają dużą liczbę zdarzeń, zaleca się użycie parametrów FilterHashtable, FilterXML lub FilterXPath, aby odfiltrować odpowiednie zdarzenia na wczesnym etapie, unikając pobierania wszystkich zdarzeń, a następnie filtrowania ich za pomocą polecenia `Where-Object`.

Gdy używasz polecenia `Get-WinEvent` na komputerze zdalnym, musisz mieć dostęp do zasobu, który może zezwalać na dostęp tylko do kont z grupy Administratorzy lub zdarzenia dziennika klasycznego mogą być dostępne w trybie tylko do odczytu.

W systemach Windows Vista i nowszych wersjach domyślna konfiguracja grupy zabezpieczeń dla dziennika zdarzeń to dostęp odczytu z grupy Aby uzyskać więcej informacji, zobacz Zarządzanie dostępem do dziennika zdarzeń (Event Log Access Management).

#### Sample
##### Example 1
Pobiera zdarzenia z dziennika aplikacji na komputerze lokalnym.

```powershell
Get-WinEvent -LogName 'Application'
```

##### Example 2
Pobiera ostatnie 5 zdarzeń z dziennika aplikacji.

```powershell
Get-WinEvent -LogName 'Application' -MaxEvents 5
```

##### Example 3
Pobiera zdarzenia z pliku dziennika działania.

```powershell
Get-WinEvent -Path 'C:\Logs\AppLog.evtx'
```

##### Example 4
Pobiera zdarzenia z dziennika systemowego przy użyciu XPath do filtrowania według ID zdarzenia 4624.

```powershell
Get-WinEvent -LogName 'Security' -FilterXPath '*[System[EventID=4624]]'
```

##### Example 5
Pobiera zdarzenia z dziennika aplikacji w ciągu ostatnich 24 godzin przy użyciu FilterHashtable.

```powershell
$StartTime = (Get-Date).AddDays(-1)
Get-WinEvent -FilterHashtable @{LogName='Application'; StartTime=$StartTime}
```

#### Related Links
- [Online Version: Get-WinEvent](https://go.microsoft.com/fwlink/?linkid=2174393)
- [Export-Counter](https://go.microsoft.com/fwlink/?linkid=2174254)
- [Where-Object](https://go.microsoft.com/fwlink/?linkid=2174255)
- [New-WinEvent](https://go.microsoft.com/fwlink/?linkid=2174256)
- [Get-Counter](https://go.microsoft.com/fwlink/?linkid=2174257)

#### Remarks
Aby uzyskać więcej informacji, wpisz `Get-Help Get-WinEvent -Detailed`. Aby wyświetlić pomoc techniczną, wpisz `Get-Help Get-WinEvent -Online`. |

## Examples

### Example 1

```powershell
$jsonContent = @'
{
    // This is a comment
    "name": "test", /* inline comment */
    "value": 123
}
'@ -split "`n"
Remove-JSONComments -Json $jsonContent
```

Usuwa komentarze z zawartości JSON przechowywanej w zmiennej.

### Example 2

```powershell
$jsonContent | Remove-JSONComments
```

Przetwarza zawartość JSON z potoku.

## Parameter Details

### `-Json <String>`

> #### Get-WinEvent
Pobiera zdarzenia z dzienników zdarzeń i śledzenia zdarzeń na komputerach lokalnych i zdalnych.

#### Syntax
```powershell
Get-WinEvent
   [-LogName] <String[]>
   [-MaxEvents] <Int64>
   [-Oldest]
   [<CommonParameters>]
```
```powershell
Get-WinEvent
   [[-Path] <String[]>]
   [-MaxEvents] <Int64>
   [-Oldest]
   [<CommonParameters>]
```
```powershell
Get-WinEvent
   [[-Provider] <String[]>]
   [-MaxEvents] <Int64>
   [-Oldest]
   [<CommonParameters>]
```
```powershell
Get-WinEvent
   [-FilterHashtable] <Hashtable>
   [-MaxEvents] <Int64>
   [-Oldest]
   [<CommonParameters>]
```
```powershell
Get-WinEvent
   [-FilterXml] <XmlDocument>
   [-MaxEvents] <Int64>
   [-Oldest]
   [<CommonParameters>]
```
```powershell
Get-WinEvent
   [-FilterXPath] <String>
   [-MaxEvents] <Int64>
   [-Oldest]
   [<CommonParameters>]
```

#### Description
Polecenie `Get-WinEvent` pobiera zdarzenia z dzienników zdarzeń, w tym z klasycznych dzienników, takich jak System i Application, oraz z dzienników zdarzeń utworzonych przez technologię Windows Eventing Technology (ETW). Polecenie to domyślnie wyświetla zdarzenia w odwrotnej kolejności chronologicznej (najnowsze na górze).

Zdarzenia zawierają znacznik czasu i dane o zdarzeniu. Znacznik czasu w rekordzie zdarzenia jest w czasie UTC. Wyświetlanie znacznika czasu w konsoli jest konwertowane na czas lokalny, ale obiekty są w UTC. Zaleca się filtrowanie zdarzeń według czasu przy użyciu czasu UTC, aby uniknąć problemów z konwersją stref czasowych.

Polecenie `Get-WinEvent` może pobierać zdarzenia z:

- Dzienniki zdarzeń (dzienniki zdarzeń Windows i klasyczne dzienniki zdarzeń, takie jak System i Application)
- Pliki dzienników zdarzeń wygenerowane przez `Export-Counter` lub zapisane jako pliki dziennika zdarzeń
- Śledzenie zdarzeń (ETW), które generują dane dziennika zdarzeń śledzenia zdarzeń
- Pliki dziennika z plików .evtx, .etl i .evt

Parametr `-ListLog` wyświetla wszystkie nazwy dzienników zdarzeń dostępnych w systemie, co ułatwia wybór odpowiedniego dziennika.

Ponadto `Get-WinEvent` obsługuje szereg parametrów filtrujących do kontrolowania rozmiaru i zawartości danych zdarzeń zwracanych z dziennika.

Przy pracy z dziennikami zdarzeń, które mają dużą liczbę zdarzeń, zaleca się użycie parametrów FilterHashtable, FilterXML lub FilterXPath, aby odfiltrować odpowiednie zdarzenia na wczesnym etapie, unikając pobierania wszystkich zdarzeń, a następnie filtrowania ich za pomocą polecenia `Where-Object`.

Gdy używasz polecenia `Get-WinEvent` na komputerze zdalnym, musisz mieć dostęp do zasobu, który może zezwalać na dostęp tylko do kont z grupy Administratorzy lub zdarzenia dziennika klasycznego mogą być dostępne w trybie tylko do odczytu.

W systemach Windows Vista i nowszych wersjach domyślna konfiguracja grupy zabezpieczeń dla dziennika zdarzeń to dostęp odczytu z grupy Aby uzyskać więcej informacji, zobacz Zarządzanie dostępem do dziennika zdarzeń (Event Log Access Management).

#### Sample
##### Example 1
Pobiera zdarzenia z dziennika aplikacji na komputerze lokalnym.

```powershell
Get-WinEvent -LogName 'Application'
```

##### Example 2
Pobiera ostatnie 5 zdarzeń z dziennika aplikacji.

```powershell
Get-WinEvent -LogName 'Application' -MaxEvents 5
```

##### Example 3
Pobiera zdarzenia z pliku dziennika działania.

```powershell
Get-WinEvent -Path 'C:\Logs\AppLog.evtx'
```

##### Example 4
Pobiera zdarzenia z dziennika systemowego przy użyciu XPath do filtrowania według ID zdarzenia 4624.

```powershell
Get-WinEvent -LogName 'Security' -FilterXPath '*[System[EventID=4624]]'
```

##### Example 5
Pobiera zdarzenia z dziennika aplikacji w ciągu ostatnich 24 godzin przy użyciu FilterHashtable.

```powershell
$StartTime = (Get-Date).AddDays(-1)
Get-WinEvent -FilterHashtable @{LogName='Application'; StartTime=$StartTime}
```

#### Related Links
- [Online Version: Get-WinEvent](https://go.microsoft.com/fwlink/?linkid=2174393)
- [Export-Counter](https://go.microsoft.com/fwlink/?linkid=2174254)
- [Where-Object](https://go.microsoft.com/fwlink/?linkid=2174255)
- [New-WinEvent](https://go.microsoft.com/fwlink/?linkid=2174256)
- [Get-Counter](https://go.microsoft.com/fwlink/?linkid=2174257)

#### Remarks
Aby uzyskać więcej informacji, wpisz `Get-Help Get-WinEvent -Detailed`. Aby wyświetlić pomoc techniczną, wpisz `Get-Help Get-WinEvent -Online`.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
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
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-OnEachGenXdevModule.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/WriteFileOutput.md)
