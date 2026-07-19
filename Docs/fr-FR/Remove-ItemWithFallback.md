# Remove-ItemWithFallback

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rmf

## Synopsis

> Supprime des fichiers ou des répertoires avec plusieurs mécanismes de secours pour une suppression fiable.

## Description

Cette fonction offre un moyen robuste de supprimer des fichiers et des répertoires en tentant plusieurs méthodes de suppression en séquence :
1. Suppression directe via les méthodes System.IO pour des performances optimales
2. Applet de commande Remove-Item compatible avec les fournisseurs PowerShell comme solution de repli
3. Marquage pour suppression au prochain redémarrage du système si les autres méthodes échouent
Cela garantit une fiabilité maximale lors de la suppression d'éléments sur différents fournisseurs.

## Syntax

```powershell
Remove-ItemWithFallback -Path <String> [-CountRebootDeletionAsSuccess] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Le chemin vers l'élément à supprimer |
| `-CountRebootDeletionAsSuccess` | SwitchParameter | — | — | Named | `$false` | The `-CountRebootDeletionAsSuccess` parameter. |

## Examples

### Remove-ItemWithFallback -Path "C:\temp\myfile.txt" Attempts to remove the file using all available methods.

```powershell
Remove-ItemWithFallback -Path "C:\temp\myfile.txt"
Attempts to remove the file using all available methods.
```

### "C:\temp\mydir" | rif Uses the alias 'rif' to remove a directory through the pipeline.

```powershell
"C:\temp\mydir" | rif
Uses the alias 'rif' to remove a directory through the pipeline.
```

## Outputs

- `Boolean`

## Related Links

- [Remove-ItemWithFallback on GitHub](https://github.com/genXdev/genXdev)
