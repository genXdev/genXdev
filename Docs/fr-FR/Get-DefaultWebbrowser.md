# Get-DefaultWebbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retourne le navigateur web par défaut configuré pour l'utilisateur actuel.

## Description

* Récupère des informations sur le navigateur web par défaut du système en interrogeant le Registre Windows.
* Renvoie une table de hachage contenant le nom du navigateur, sa description, le chemin de son icône et le chemin de son exécutable.
* La fonction vérifie à la fois les préférences utilisateur et les enregistrements de navigateur à l'échelle du système pour déterminer le navigateur par défaut.

## Syntax

```powershell
Get-DefaultWebbrowser [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-DefaultWebbrowser | Format-List
```

Obtenez des informations détaillées sur le navigateur par défaut.

### Example 2

```powershell
$browser = Get-DefaultWebbrowser
& $browser.Path https://www.github.com/
```

Lancez le navigateur par défaut avec une URL spécifique.

## Related Links

- [Get-DefaultWebbrowser on GitHub](https://github.com/genXdev/genXdev)
