# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> Génère un rapport détaillé des opérations de refactorisation et de leur statut.

## Description

Analyse et rapporte l'avancement des opérations de refactorisation en examinant leur état actuel, leur statut d'achèvement et les fonctions affectées. Fournit une sortie sous forme de tableau structuré en hashtable ou de colonnes de texte alignées lisibles. Le rapport inclut le nom de la refactorisation, la clé d'invite, la priorité, le statut, le nombre de fonctions et le pourcentage d'achèvement.

## Syntax

```powershell
Get-RefactorReport [[-Name] <string[]>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [-AsText] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Le nom de la refactorisation, accepte les caractères génériques 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Spécifie le chemin vers le fichier de base de données des préférences. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Si activé, utilise uniquement le cache de session pour les données de refactorisation. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Si défini, vide le cache de session avant d'exécuter. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Si défini, ignorer le chargement du cache de session. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Output report in text format instead of Hashtable |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

Génère un rapport textuel pour les refontes correspondant à "DatabaseRefactor".

### Example 2

```powershell
refactorreport "*"
```

Génère un rapport de table de hachage pour tous les refactors utilisant un alias.

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
