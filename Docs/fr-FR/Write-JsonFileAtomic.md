# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Écrit un objet au format JSON dans un fichier de manière atomique pour éviter la corruption.

## Description

* Écriture atomique : utilise une stratégie de fichier temporaire + renommage pour garantir que le fichier cible ne soit jamais laissé dans un état corrompu si le processus est interrompu.
* Logique de nouvelle tentative : réessaie l'écriture jusqu'à MaxRetries fois avec un délai de RetryDelayMs millisecondes entre les tentatives.
* Prise en charge des objets : accepte n'importe quel objet, pas seulement Hashtable. Série via System.Text.Json avec repli sur ConvertTo-Json pour les types .NET complexes qui ne peuvent pas être sérialisés nativement.
* Prise en charge du debounce : lorsque DebounceMs > 0, les écritures consécutives rapides vers le même fichier sont fusionnées — seul le dernier contenu est écrit une fois que le fichier n'a pas été touché pendant DebounceMs ms.
* Création de répertoires : crée automatiquement les répertoires parents s'ils n'existent pas.

## Syntax

```powershell
Write-JsonFileAtomic -FilePath <String> [[-Data] <Object>] [-AsArray] [-Compress] [-DebounceMs <Int32>] [-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-EnumsAsStrings] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Le chemin du fichier à écrire. |
| `-Data` | Object | — | — | 1 | — | L'objet à sérialiser en JSON et à écrire dans le fichier. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Le nombre maximal de tentatives de réessai pour l'opération d'écriture atomique est de 4 par défaut. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Le délai en millisecondes entre les tentatives de nouvelle tentative. La valeur par défaut est 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Si supérieur à 0, désactive les écritures vers ce fichier. Par défaut, 0 (désactivé). |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | La profondeur maximale pour la sérialisation JSON. La valeur par défaut est 30. |
| `-Compress` | SwitchParameter | — | — | Named | `False` | .DESCRIPTION
Le paramètre **Wait** indique que l'applet de commande attend que l'opération soit terminée avant de retourner l'invite de commande. Par défaut, l'applet de commande retourne l'invite de commande immédiatement. |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | .DESCRIPTION
Le paramètre **Wait** indique que l'applet de commande attend que l'opération soit terminée avant de retourner l'invite de commande. Par défaut, l'applet de commande retourne l'invite de commande immédiatement. |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | Fournit une option de sérialisation alternative qui convertit toutes les énumérations en leur représentation sous forme de chaîne. |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

Écrit une table de hachage sous forme de JSON indenté dans config.json de manière atomique.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

Écrit les objets de processus sous forme de JSON compressé de manière atomique.

## Parameter Details

### `-FilePath <String>`

> Le chemin du fichier à écrire.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Data <Object>`

> L'objet à sérialiser en JSON et à écrire dans le fichier.

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

> Le nombre maximal de tentatives de réessai pour l'opération d'écriture atomique est de 4 par défaut.

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

> Le délai en millisecondes entre les tentatives de nouvelle tentative. La valeur par défaut est 200.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DebounceMs <Int32>`

> Si supérieur à 0, désactive les écritures vers ce fichier. Par défaut, 0 (désactivé).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> La profondeur maximale pour la sérialisation JSON. La valeur par défaut est 30.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Compress`

> .DESCRIPTION
Le paramètre **Wait** indique que l'applet de commande attend que l'opération soit terminée avant de retourner l'invite de commande. Par défaut, l'applet de commande retourne l'invite de commande immédiatement.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsArray`

> .DESCRIPTION
Le paramètre **Wait** indique que l'applet de commande attend que l'opération soit terminée avant de retourner l'invite de commande. Par défaut, l'applet de commande retourne l'invite de commande immédiatement.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnumsAsStrings`

> Fournit une option de sérialisation alternative qui convertit toutes les énumérations en leur représentation sous forme de chaîne.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRCopy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRExpand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRFind-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRFind-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRInvoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRMove-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRMove-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRMove-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRWrite-FileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRWrite-TextFileAtomic.md)
