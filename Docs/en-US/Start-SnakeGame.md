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
| `-InitialLength` | Int32 | — | — | 0 | `5` | Initial length of the snake (default: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Game speed in milliseconds between moves (default: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Prevents clearing the console before starting the game |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Draws a maze within the playfield using ASCII drawing characters for walls and lines, similar to the border |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Displays the shortest path from the snake's head to the food using small green centered dots |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Minimum pathway width for the maze (1-10, default: 2) |

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
