# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake

## Synopsis

> Start een simpel Snake-spel in de console.

## Description

Deze functie initialiseert en voert een eenvoudig Snake-spel uit in de PowerShell-console. De speler bestuurt de slang met de pijltjestoetsen of WASD-toetsen, met als doel voedsel te eten en langer te worden, terwijl botsingen met de muren of zichzelf worden vermeden. Het spel heeft een dynamische snelheidsaanpassing op basis van beschikbare ruimte en slangelengte. Standaard wordt de console gewist voordat het spel start.

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

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Start het Snake-spel met standaardinstellingen (5 segmenten, 300ms snelheid).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Start het Snake-spel zonder de console te wissen, met een kortere slang en hogere snelheid.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Starts the game using the alias with a longer initial snake.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Start het Snake-spel met een doolhof in het speelveld.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Start het Snake-spel met een doolhof en toon het kortste pad van de slang naar het voedsel met groene stippen.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Start het Snake-spel met een doolhof dat bredere paden heeft (minimaal 5 vakjes) voor eenvoudigere navigatie.

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
