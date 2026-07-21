# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Scrive il testo in un file in modo atomico per prevenire corruzione.

## Description

* Scrittura atomica: utilizza una strategia con file temporaneo e rinomina per garantire che il file di destinazione non venga mai lasciato in uno stato corrotto in caso di interruzione del processo.
* Logica di ripetizione: riprova la scrittura fino a MaxRetries volte con un ritardo di RetryDelayMs millisecondi tra i tentativi.
* Supporto codifica: accetta un parametro System.Text.Encoding per controllare la codifica di output. Il valore predefinito è UTF-8.
* Supporto debounce: quando DebounceMs > 0, scritture consecutive rapide allo stesso file vengono unite: solo l'ultimo payload viene scritto dopo che il file non è stato toccato per DebounceMs ms.
* Creazione directory: crea automaticamente le directory padre se non esistono.

## Syntax

```powershell
Write-TextFileAtomic -FilePath <String> [[-Data] <String>] [-DebounceMs <Int32>] [-Encoding <Text.Encoding>] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Il percorso del file in cui scrivere. |
| `-Data` | String | — | — | 1 | — | Il contenuto di testo da scrivere nel file. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Il numero massimo di tentativi di ripetizione per l'operazione di scrittura atomica. Il valore predefinito è 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Il ritardo in millisecondi tra i tentativi di ripetizione. Il valore predefinito è 200. |
| `-Encoding` | Text.Encoding | — | — | Named | — | La codifica del testo da utilizzare durante la scrittura del file. Il valore predefinito è UTF-8. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Se maggiore di 0, rimbalzo scritture su questo file. Il valore predefinito è 0 (disabilitato). |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

Scrive una stringa in config.txt utilizzando la codifica UTF-8 in modo atomico.

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

Invia rapidamente 50 righe; solo l'ultima riga viene conservata dopo un periodo di quiete di 2 secondi.

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

Scrive una stringa in data.csv usando la codifica ASCII atomicamente.

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

Un processo in background scrive timestamp ogni 100ms ma il debounce li raggruppa — solo una scrittura al secondo raggiunge effettivamente il disco.

## Parameter Details

### `-FilePath <String>`

> Il percorso del file in cui scrivere.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Data <String>`

> Il contenuto di testo da scrivere nel file.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> Il numero massimo di tentativi di ripetizione per l'operazione di scrittura atomica. Il valore predefinito è 4.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryDelayMs <Int32>`

> Il ritardo in millisecondi tra i tentativi di ripetizione. Il valore predefinito è 200.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Encoding <Text.Encoding>`

> La codifica del testo da utilizzare durante la scrittura del file. Il valore predefinito è UTF-8.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DebounceMs <Int32>`

> Se maggiore di 0, rimbalzo scritture su questo file. Il valore predefinito è 0 (disabilitato).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Write-JsonFileAtomic.md)
