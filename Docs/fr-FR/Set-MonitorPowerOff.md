# Set-MonitorPowerOff

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `poweroff

## Synopsis

> Coupe l'alimentation de tous les moniteurs connectés.

## Description

Utilise des appels d'API Windows pour envoyer un signal de mise hors tension à tous les moniteurs connectés. Cela équivaut à appuyer sur le bouton d'alimentation physique de vos moniteurs. Les moniteurs passeront en mode d'économie d'énergie mais pourront être réveillés en déplaçant la souris ou en appuyant sur une touche.

## Syntax

```powershell
Set-MonitorPowerOff [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOff
```

Éteint tous les moniteurs connectés.

### Example 2

```powershell
poweroff
```

Éteint tous les moniteurs connectés à l’aide de l’alias.

## Related Links

- [Set-MonitorPowerOff on GitHub](https://github.com/genXdev/genXdev)
