# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake

## Synopsis

> Startet ein einfaches Snake-Spiel in der Konsole.

## Description

Diese Funktion initialisiert und führt ein einfaches Snake-Spiel in der PowerShell-Konsole aus. Der Spieler steuert die Schlange mit den Pfeiltasten oder WASD-Tasten, mit dem Ziel, Essen zu fressen und länger zu werden, während Kollisionen mit den Wänden oder sich selbst vermieden werden. Das Spiel verfügt über eine dynamische Geschwindigkeitsanpassung basierend auf dem verfügbaren Platz und der Schlangenlänge. Standardmäßig wird die Konsole vor dem Start geleert.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Anfangslänge der Schlange (Standard: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Spielgeschwindigkeit in Millisekunden zwischen den Zügen (Standard: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Verhindert das Löschen der Konsole vor Spielbeginn |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Draws a maze within the playfield using ASCII drawing characters for walls and lines, similar to the border |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Displays the shortest path from the snake's head to the food using small green centered dots |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Minimale Pfadbreite für das Labyrinth (1-10, Standard: 2) |

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

Startet das Snake-Spiel ohne Löschen der Konsole, mit kürzerer Schlange und schnellerer Geschwindigkeit.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Startet das Spiel unter Verwendung des Alias mit einer längeren Startsnake.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Startet das Snake-Spiel mit einem Labyrinth im Spielfeld.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Startet das Snake-Spiel mit einem Labyrinth und zeigt den kürzesten Weg von der Schlange zum Futter mit grünen Punkten an.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Startet das Snake-Spiel mit einem Labyrinth, das breitere Wege (mindestens 5 Felder) für eine einfachere Navigation bietet.

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
