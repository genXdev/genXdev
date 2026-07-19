# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Schrijft een object atomair als JSON naar een bestand om corruptie te voorkomen.

## Description

* Atomisch schrijven: gebruikt een tijdelijke bestand + hernoemstrategie om te voorkomen dat het doelbestand in een beschadigde toestand achterblijft als het proces wordt onderbroken.
* Herhaallogica: probeert het schrijven tot MaxRetries keer met een vertraging van RetryDelayMs milliseconden tussen pogingen.
* Objectondersteuning: accepteert elk object, niet alleen Hashtable. Serialiseert via System.Text.Json met terugval naar ConvertTo-Json voor complexe .NET-types die niet native kunnen worden geserialiseerd.
* Antibonsondersteuning: wanneer DebounceMs > 0, worden snelle opeenvolgende schrijfbewerkingen naar hetzelfde bestand samengevoegd — alleen de laatste payload wordt geschreven zodra het bestand gedurende DebounceMs ms niet is aangeraakt.
* Directorycreatie: maakt automatisch bovenliggende mappen aan als deze niet bestaan.

## Syntax

```powershell
Write-JsonFileAtomic [-FilePath] <string> [[-Data] <Object>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [-Depth <int>] [-Compress] [-AsArray] [-EnumsAsStrings] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Het pad naar het bestand om naar te schrijven. |
| `-Data` | Object | — | — | 1 | — | Het object dat naar JSON moet worden geserialiseerd en naar het bestand moet worden geschreven. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Het maximale aantal herhaalpogingen voor de atomaire schrijfbewerking. Standaard is 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | De vertraging in milliseconden tussen herpogingen. Standaard is 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Indien groter dan 0, schrijft debounce naar dit bestand. Standaard is 0 (uitgeschakeld). |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | De maximale diepte voor JSON-serialisatie. Standaard is 30. |
| `-Compress` | SwitchParameter | — | — | Named | `False` | Je bent een behulpzame assistent die is ontworpen om JSON uit te voeren.
## Reactieformaat

Antwoord alleen met een JSON-object. |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | Je bent een behulpzame assistent die is ontworpen om JSON uit te voeren.
## Reactieformaat

Antwoord alleen met een JSON-object. |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | Biedt een alternatieve serialisatieoptie die alle opsommingen omzet naar hun tekenreeksrepresentatie. |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

Schrijft een Hashtable als ingesprongen JSON atomair naar config.json.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

Schrijft procesobjecten atomair als Compress JSON.

## Related Links

- [Write-JsonFileAtomic on GitHub](https://github.com/genXdev/genXdev)
