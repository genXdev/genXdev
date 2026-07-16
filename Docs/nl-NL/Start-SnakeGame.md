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
| `-InitialLength` | Int32 | — | — | 0 | `5` | Initiële lengte van de slang (standaard: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Spelsnelheid in milliseconden tussen zetten (standaard: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Voorkomt dat de console wordt gewist voordat het spel start |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Draws a maze within the playfield using ASCII drawing characters for walls and lines, similar to the border |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Geeft het kortste pad weer van de kop van de slang naar het voedsel met kleine groene gecentreerde stippen |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Minimale padbreedte voor het doolhof (1-10, standaard: 2) |

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
