# Pop-Window

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `popw

## Synopsis

> Haalt de laatste hulp van het actieve venster uit de stapel met optionele wijzigingen.

## Description

Haalt een vensterhelper van de stapel en past optioneel venstertransformaties toe. Als de stapel leeg is of ongeldige vensters bevat, wordt het momenteel gefocuste venster teruggegeven. Deze functie stelt u in staat om vensters te manipuleren die eerder zijn opgeslagen met Push-Window, met toepassing van verschillende positionerings-, formaat- en visuele effecten.

## Syntax

```powershell
Pop-Window [-AlwaysOnTop] [-Bottom] [-Centered] [-FadeIn] [-Focus] -Height <Int32> [-Hide] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-Opacity <Byte>] [-Restore] [-Right] [-Show] [-ShowWindow] [-Top] -Width <Int32> [<CommonParameters>]

Pop-Window [-AlwaysOnTop] [-Bottom] [-Centered] [-FadeIn] [-Focus] [-Hide] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-Opacity <Byte>] [-Restore] [-Right] [-Show] [-ShowWindow] [-Top] -X <Int32> -Y <Int32> [<CommonParameters>]

Pop-Window [-AlwaysOnTop] [-Bottom] [-Centered] [-FadeIn] [-Focus] [-Hide] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-Opacity <Byte>] [-Restore] [-Right] [-Show] [-ShowWindow] [-Top] [<CommonParameters>]

Pop-Window [-NoModify] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Maximize` | SwitchParameter | — | — | Named | — | The `-Maximize` parameter. *(Parameter set: )* |
| `-Minimize` | SwitchParameter | — | — | Named | — | The `-Minimize` parameter. *(Parameter set: )* |
| `-Restore` | SwitchParameter | — | — | Named | — | The `-Restore` parameter. *(Parameter set: )* |
| `-Hide` | SwitchParameter | — | — | Named | — | The `-Hide` parameter. *(Parameter set: )* |
| `-Show` | SwitchParameter | — | — | Named | — | The `-Show` parameter. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | The `-NoBorders` parameter. *(Parameter set: )* |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | The `-AlwaysOnTop` parameter. *(Parameter set: )* |
| `-Opacity` | Byte | — | — | Named | — | The `-Opacity` parameter. *(Parameter set: )* |
| `-X` | Int32 | ✅ | — | Named | `-999999` | The `-X` parameter. *(Parameter set: )* |
| `-Y` | Int32 | ✅ | — | Named | `-999999` | The `-Y` parameter. *(Parameter set: )* |
| `-Width` | Int32 | ✅ | — | Named | `-1` | The `-Width` parameter. *(Parameter set: )* |
| `-Height` | Int32 | ✅ | — | Named | `-1` | The `-Height` parameter. *(Parameter set: )* |
| `-Focus` | SwitchParameter | — | — | Named | — | The `-Focus` parameter. *(Parameter set: )* |
| `-FadeIn` | SwitchParameter | — | — | Named | — | The `-FadeIn` parameter. *(Parameter set: )* |
| `-NoModify` | SwitchParameter | — | — | Named | — | The `-NoModify` parameter. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | The `-Left` parameter. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | The `-Right` parameter. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | The `-Top` parameter. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | The `-Bottom` parameter. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | The `-Centered` parameter. *(Parameter set: )* |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | The `-ShowWindow` parameter. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | — | The `-Monitor` parameter. *(Parameter set: )* |

## Examples

### Pop-Window -Maximize -Focus Pops the last window from the stack, maximizes it and gives it focus.

```powershell
Pop-Window -Maximize -Focus
Pops the last window from the stack, maximizes it and gives it focus.
```

### Pop-Window -X 100 -Y 100 -Width 800 -Height 600 -AlwaysOnTop Pops the last window, positions it at coordinates (100,100), resizes it to 800x600, and sets it to always stay on top.

```powershell
Pop-Window -X 100 -Y 100 -Width 800 -Height 600 -AlwaysOnTop
Pops the last window, positions it at coordinates (100,100),
resizes it to 800x600, and sets it to always stay on top.
```

### popw -Left -Focus Pops the last window, positions it on the left half of the screen, and gives it focus using the alias.

```powershell
popw -Left -Focus
Pops the last window, positions it on the left half of the screen,
and gives it focus using the alias.
```

### Pop-Window -Monitor 1 -Maximize Pops the last window, moves it to the first monitor, and maximizes it.

```powershell
Pop-Window -Monitor 1 -Maximize
Pops the last window, moves it to the first monitor, and maximizes it.
```

### Pop-Window -Monitor -2 -Fullscreen Pops the last window, moves it to the secondary monitor, and makes it fullscreen. ##############################################################################

```powershell
Pop-Window -Monitor -2 -Fullscreen
Pops the last window, moves it to the secondary monitor, and makes it fullscreen.
##############################################################################
```

## Related Links

- [Pop-Window on GitHub](https://github.com/genXdev/genXdev)
