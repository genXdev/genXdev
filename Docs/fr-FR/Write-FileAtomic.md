# Write-FileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Écrit atomiquement des bytes dans un fichier pour éviter la corruption.

## Description

* Écriture atomique : utilise une stratégie de fichier temporaire + renommage pour garantir que le fichier cible ne soit jamais laissé dans un état corrompu si le processus est interrompu.
* Logique de réessai : réessaie l'écriture jusqu'à MaxRetries fois avec un délai de RetryDelayMs millisecondes entre les tentatives.
* Support du débouncing : lorsque DebounceMs > 0, les écritures rapides et consécutives vers le même fichier sont regroupées — seul le dernier contenu est écrit une fois que le fichier n'a pas été touché pendant DebounceMs ms.
* Création de répertoires : crée automatiquement les répertoires parents s'ils n'existent pas.

## Syntax

```powershell
Write-FileAtomic [-FilePath] <string> [[-Data] <byte[]>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Le chemin vers le fichier à écrire. |
| `-Data` | Byte[] | — | — | 1 | — | Le tableau d'octets à écrire dans le fichier. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Le nombre maximal de tentatives de réessai pour l'opération d'écriture atomique. La valeur par défaut est 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Le délai en millisecondes entre les tentatives de reprise. La valeur par défaut est 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Si supérieur à 0, le debounce écrit dans ce fichier. La valeur par défaut est 0 (désactivé). |

## Examples

### Example 1

```powershell
Write-FileAtomic -FilePath "data.bin" -Data $bytes
```

Écrit un tableau d'octets dans data.bin de manière atomique avec les paramètres de réessai par défaut.

### Example 2

```powershell
# Debounce: only the LAST write within 5 seconds actually hits disk
1..100 | ForEach-Object {
    Write-FileAtomic -FilePath "state.bin" -Data $_ `
        -DebounceMs 5000
}
Start-Sleep -Seconds 6
```

Écrit rapidement 100 fois mais seule la charge utile finale (100) est persistée sur le disque après une période de silence de 5 secondes.

### Example 3

```powershell
Write-FileAtomic -FilePath "cache.dat" -Data $buffer `
    -MaxRetries 10 -RetryDelayMs 500
```

Écrit avec une nouvelle tentative personnalisée : jusqu'à 10 tentatives avec 500 ms entre chacune.

## Related Links

- [Write-FileAtomic on GitHub](https://github.com/genXdev/genXdev)
