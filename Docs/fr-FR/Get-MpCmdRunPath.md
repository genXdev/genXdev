# Get-MpCmdRunPath

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtient le chemin d'accès à l'exécutable MpCmdRun.exe de Windows Defender.

## Description

* Localise et renvoie le chemin complet vers l'utilitaire en ligne de commande de Windows Defender (MpCmdRun.exe).
* L'applet de commande vérifie l'emplacement d'installation standard dans Program Files et fournit une gestion appropriée des erreurs si le fichier n'est pas trouvé.

## Syntax

```powershell
Get-MpCmdRunPath [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$defenderPath = Get-MpCmdRunPath
```

Récupère le chemin complet vers l'outil en ligne de commande de Windows Defender.

## Related Links

- [Get-MpCmdRunPath on GitHub](https://github.com/genXdev/genXdev)
