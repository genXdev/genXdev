# Write-FileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Schrijft bytes atomair naar een bestand om beschadiging te voorkomen.

## Description

* Atomisch schrijven: maakt gebruik van een tijdelijke bestand + hernoem strategie om ervoor te zorgen dat het doelbestand nooit in een beschadigde staat achterblijft als het proces wordt onderbroken.
* Pogingen: herhaalt het schrijven tot MaxRetries keer met een vertraging van RetryDelayMs milliseconden tussen pogingen.
* Debounce-ondersteuning: wanneer DebounceMs > 0, worden snelle opeenvolgende schrijfbewerkingen naar hetzelfde bestand samengevoegd — alleen de laatste inhoud wordt geschreven zodra het bestand voor DebounceMs ms niet is aangeraakt.
* Map aanmaken: maakt automatisch bovenliggende mappen aan als deze niet bestaan.

## Syntax

```powershell
Write-FileAtomic [-FilePath] <string> [[-Data] <byte[]>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Het pad naar het bestand om naar te schrijven. |
| `-Data` | Byte[] | — | — | 1 | — | De byte-array om naar het bestand te schrijven. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Het maximale aantal herhaalpogingen voor de atomaire schrijfbewerking. Standaard is 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | De vertraging in milliseconden tussen herpogingen. Standaard is 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Indien groter dan 0, schrijft debounce naar dit bestand. Standaard is 0 (uitgeschakeld). |

## Examples

### Example 1

```powershell
Write-FileAtomic -FilePath "data.bin" -Data $bytes
```

Schrijft een byte-array atomair naar data.bin met standaardinstellingen voor nieuwe pogingen.

### Example 2

```powershell
# Debounce: only the LAST write within 5 seconds actually hits disk
1..100 | ForEach-Object {
    Write-FileAtomic -FilePath "state.bin" -Data $_ `
        -DebounceMs 5000
}
Start-Sleep -Seconds 6
```

Schrijft snel 100 keer, maar alleen de laatste payload (100) wordt na een stilteperiode van 5 seconden naar de schijf weggeschreven.

### Example 3

```powershell
Write-FileAtomic -FilePath "cache.dat" -Data $buffer `
    -MaxRetries 10 -RetryDelayMs 500
```

Schrijft met aangepaste herhaling: tot 10 pogingen met 500ms tussen elke poging.

## Related Links

- [Write-FileAtomic on GitHub](https://github.com/genXdev/genXdev)
