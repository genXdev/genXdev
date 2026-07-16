# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Schrijft atomair tekst naar een bestand om corruptie te voorkomen.

## Description

* Atomic write: gebruikt een tijdelijk bestand + hernoemstrategie om ervoor te zorgen dat het doelbestand nooit in een beschadigde staat achterblijft als het proces wordt onderbroken.
* Retry-logica: probeert het schrijven maximaal MaxRetries keer, met een vertraging van RetryDelayMs milliseconden tussen pogingen.
* Codering ondersteuning: accepteert een System.Text.Encoding parameter om de uitvoercodering te beheren. Standaard wordt UTF-8 gebruikt.
* Debounce-ondersteuning: wanneer DebounceMs > 0, worden snelle opeenvolgende schrijfbewerkingen naar hetzelfde bestand samengevoegd — alleen de laatste payload wordt geschreven zodra het bestand gedurende DebounceMs ms niet is aangeraakt.
* Aanmaken van mappen: maakt automatisch bovenliggende mappen aan als ze niet bestaan.

## Syntax

```powershell
Write-TextFileAtomic [-FilePath] <string> [[-Data] <string>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-Encoding <Encoding>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Het pad naar het bestand om naar te schrijven. |
| `-Data` | String | — | — | 1 | — | The text content to write to the file. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Het maximale aantal herhaalpogingen voor de atomaire schrijfbewerking. Standaard is 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | De vertraging in milliseconden tussen herpogingen. Standaard is 200. |
| `-Encoding` | Text.Encoding | — | — | Named | — | De tekstcodering die moet worden gebruikt bij het schrijven van het bestand. Standaard is UTF-8. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Indien groter dan 0, schrijft debounce naar dit bestand. Standaard is 0 (uitgeschakeld). |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

Write a string to config.txt using UTF-8 encoding atomically.

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

Pipes 50 lines snel; alleen de laatste regel wordt bewaard na een stille periode van 2 seconden.

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

Schrijft atomair een string naar data.csv met ASCII-codering.

### Example 4

```powershell
# Debounce with custom retry: coalesce UI state saves
$watcher = Start-ThreadJob -ScriptBlock {
    param($path)
    while ($true) {
        Write-TextFileAtomic -FilePath $path `
            -Data (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') `
            -DebounceMs 1000 -MaxRetries 3
        Start-Sleep -Milliseconds 100
    }
} -ArgumentList "timestamp.txt"
```

Een achtergrondtaak schrijft elke 100ms tijdstempels, maar debounce voegt ze samen — slechts één schrijfactie per seconde bereikt daadwerkelijk de schijf.

## Related Links

- [Write-TextFileAtomic on GitHub](https://github.com/genXdev/genXdev)
