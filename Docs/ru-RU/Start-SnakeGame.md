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
| `-InitialLength` | Int32 | — | — | 0 | `5` | Начальная длина змейки (по умолчанию: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Скорость игры в миллисекундах между ходами (по умолчанию: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Предотвращает очистку консоли перед запуском игры |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Draws a maze within the playfield using ASCII drawing characters for walls and lines, similar to the border |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Displays the shortest path from the snake's head to the food using small green centered dots |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Минимальная ширина пути для лабиринта (1-10, по умолчанию: 2) |

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
