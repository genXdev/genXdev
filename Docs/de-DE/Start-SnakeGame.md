# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
