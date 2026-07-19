# Close-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wbc

## Synopsis

> Sluit selectief een of meer webbrowserinstanties.

## Description

Biedt gedetailleerde controle over het sluiten van webbrowserinstanties. Kan specifieke browsers targeten (Edge, Chrome, Firefox) of alle browsers sluiten. Ondersteunt het sluiten van zowel hoofdvensters als achtergrondprocessen.

## Syntax

```powershell
Close-Webbrowser [-Chrome] [-Chromium] [-Edge] [-Firefox] [<CommonParameters>]

Close-Webbrowser [-All] [-Headless] [-IncludeBackgroundProcesses] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Sluit Microsoft Edge-browserinstanties af *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Sluit Google Chrome browserinstanties af *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Sluit de standaard chromium-gebaseerde browser *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Sluit Firefox-browserinstanties *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Gebruik de door Playwright beheerde browser in plaats van de in het besturingssysteem geïnstalleerde browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Opent de door Playwright beheerde WebKit-browser. Impliceert -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Voer de browser uit zonder een zichtbaar venster |
| `-All` | SwitchParameter | — | — | Named | — | Opent in alle geregistreerde moderne browsers |
| `-IncludeBackgroundProcesses` | SwitchParameter | — | — | Named | — | Sluit alle exemplaren, inclusief achtergrondtaken |

## Examples

### Close-Webbrowser -Chrome -Firefox -IncludeBackgroundProcesses Closes all Chrome and Firefox instances including background processes

```powershell
Close-Webbrowser -Chrome -Firefox -IncludeBackgroundProcesses
Closes all Chrome and Firefox instances including background processes
```

### wbc -a -bg Closes all browser instances including background processes using aliases

```powershell
wbc -a -bg
Closes all browser instances including background processes using aliases
```

## Related Links

- [Close-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
