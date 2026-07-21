# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> Startet ein einfaches Snake-Spiel in der Konsole.

## Description

Diese Funktion initialisiert und führt ein einfaches Snake-Spiel in der PowerShell-Konsole aus. Der Spieler steuert die Schlange mit den Pfeiltasten oder den WASD-Tasten, um Futter zu fressen und länger zu werden, während er Kollisionen mit den Wänden oder sich selbst vermeidet. Das Spiel verfügt über eine dynamische Geschwindigkeitsanpassung basierend auf dem verfügbaren Platz und der Schlangenlänge. Standardmäßig wird die Konsole vor dem Start gelöscht.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Anfangslänge der Schlange (Standard: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Spielgeschwindigkeit in Millisekunden zwischen den Zügen (Standard: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Verhindert das Löschen der Konsole vor dem Start des Spiels |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Zeichnet ein Labyrinth innerhalb des Spielfelds mit ASCII-Zeichen für Wände und Linien, ähnlich dem Rahmen. |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Zeigt den kürzesten Weg vom Schlangenkopf zum Futter mit kleinen grünen, zentrierten Punkten an |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Mindestkorridorbreite für das Labyrinth (1-10, Standard: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Startet das Snake-Spiel mit Standardeinstellungen (5 Segmente, 300 ms Geschwindigkeit).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Startet das Snake-Spiel ohne Konsolenlöschung, mit kürzerer Schlange und höherer Geschwindigkeit.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Startet das Spiel mit dem Alias und einer längeren anfänglichen Schlange.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Startet das Snake-Spiel mit einem Labyrinth im Spielfeld.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Startet das Snake-Spiel mit einem Labyrinth und zeigt den kürzesten Pfad von der Schlange zum Futter mit grünen Punkten an.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Startet das Snake-Spiel mit einem Labyrinth, das breitere Wege (mindestens 5 Felder) für eine einfachere Navigation aufweist.

## Parameter Details

### `-InitialLength <Int32>`

> Anfangslänge der Schlange (Standard: 5)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speed <Int32>`

> Spielgeschwindigkeit in Millisekunden zwischen den Zügen (Standard: 300)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `300` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoClear`

> Verhindert das Löschen der Konsole vor dem Start des Spiels

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithMaze`

> Zeichnet ein Labyrinth innerhalb des Spielfelds mit ASCII-Zeichen für Wände und Linien, ähnlich dem Rahmen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowRoute`

> Zeigt den kürzesten Weg vom Schlangenkopf zum Futter mit kleinen grünen, zentrierten Punkten an

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MazeWidth <Int32>`

> Mindestkorridorbreite für das Labyrinth (1-10, Standard: 2)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `2` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/de-DE/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/de-DE/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/de-DE/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/de-DE/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/de-DE/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/de-DE/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/de-DE/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/de-DE/UtcNow.md)
