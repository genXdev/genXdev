# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake

## Synopsis

> Starts a simple Snake game in the console.

## Description

This function initializes and runs a basic Snake game within the PowerShell
console. The player controls the snake using the arrow keys or WASD keys,
aiming to eat food and grow longer while avoiding collisions with the walls
or itself. The game features dynamic speed adjustment based on available
space and snake length. By default, the console is cleared before starting.

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

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Starts the Snake game with default settings (5 segments, 300ms speed).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Starts the Snake game without clearing console, with shorter snake and faster
speed.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Starts the game using the alias with a longer initial snake.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Starts the Snake game with a maze in the playfield.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Starts the Snake game with a maze and displays the shortest path from the
snake to the food with green dots.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Starts the Snake game with a maze that has wider pathways (minimum 5 spaces)
for easier navigation.

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
