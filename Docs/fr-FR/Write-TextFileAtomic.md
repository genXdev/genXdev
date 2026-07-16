# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Écrit un fichier de manière atomique pour éviter la corruption.

## Description

* Écriture atomique : utilise une stratégie de fichier temporaire + renommage pour garantir que le fichier cible ne se retrouve jamais dans un état corrompu en cas d'interruption du processus.
* Logique de tentative : réessaie l'écriture jusqu'à MaxRetries fois avec un délai de RetryDelayMs millisecondes entre les tentatives.
* Prise en charge de l'encodage : accepte un paramètre System.Text.Encoding pour contrôler l'encodage de sortie. Par défaut : UTF-8.
* Prise en charge du débord : lorsque DebounceMs > 0, les écritures consécutives rapides vers le même fichier sont fusionnées — seul le dernier contenu est écrit une fois que le fichier n'a pas été touché pendant DebounceMs ms.
* Création de répertoires : crée automatiquement les répertoires parents s'ils n'existent pas.

## Syntax

```powershell
Write-TextFileAtomic [-FilePath] <string> [[-Data] <string>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-Encoding <Encoding>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Le chemin vers le fichier à écrire. |
| `-Data` | String | — | — | 1 | — | Le contenu textuel à écrire dans le fichier. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Le nombre maximal de tentatives de réessai pour l'opération d'écriture atomique. La valeur par défaut est 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Le délai en millisecondes entre les tentatives de reprise. La valeur par défaut est 200. |
| `-Encoding` | Text.Encoding | — | — | Named | — | L'encodage de texte à utiliser lors de l'écriture du fichier. Par défaut, UTF-8. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Si supérieur à 0, le debounce écrit dans ce fichier. La valeur par défaut est 0 (désactivé). |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

Écrit une chaîne dans config.txt en utilisant l'encodage UTF-8 de manière atomique.

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

Les tuyaux produisent 50 lignes rapidement ; seule la dernière ligne est conservée après une période de silence de 2 secondes.

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

Écrit une chaîne dans data.csv en utilisant l'encodage ASCII de manière atomique.

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

Un travail d'arrière-plan écrit des horodatages toutes les 100 ms mais la temporisation les regroupe — une seule écriture par seconde touche réellement le disque.

## Related Links

- [Write-TextFileAtomic on GitHub](https://github.com/genXdev/genXdev)
