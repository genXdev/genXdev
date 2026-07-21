# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Obtient la date et l'heure UTC (temps universel coordonné) actuelles.

## Description

Retourne la date et l'heure UTC actuelles en tant qu'objet System.DateTime. Cette fonction fournit un moyen standardisé de récupérer l'heure UTC sur différents systèmes et fuseaux horaires. L'objet DateTime retourné peut être utilisé pour la synchronisation d'horodatage, la journalisation et les opérations inter-fuseaux horaires.

## Syntax

```powershell
UtcNow [<CommonParameters>]
```

## Examples

### $currentUtc = UtcNow Returns the current UTC time as a DateTime object.

```powershell
$currentUtc = UtcNow
Returns the current UTC time as a DateTime object.
```

### $timestamp = (UtcNow).ToString("yyyy-MM-dd HH:mm:ss") Gets the current UTC time and formats it as a string.

```powershell
$timestamp = (UtcNow).ToString("yyyy-MM-dd HH:mm:ss")
Gets the current UTC time and formats it as a string.
```

## Outputs

- `DateTime`

## Related Links

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNow.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRsecondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRsidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStop-TextToSpeech.md)
