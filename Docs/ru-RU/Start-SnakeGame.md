# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake

## Synopsis

> Запускает простую игру «Змейка» в консоли.

## Description

Эта функция инициализирует и запускает базовую игру "Змейка" в консоли PowerShell. Игрок управляет змейкой с помощью клавиш со стрелками или клавиш WASD, стремясь съесть еду и вырасти длиннее, избегая столкновений со стенами или самим собой. Игра включает динамическую регулировку скорости в зависимости от доступного пространства и длины змейки. По умолчанию консоль очищается перед началом игры.

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

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Запускает игру «Змейка» с настройками по умолчанию (5 сегментов, скорость 300 мс).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Запускает игру «Змейка» без очистки консоли, с более коротким змеем и большей скоростью.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Запускает игру, используя псевдоним с более длинной начальной змейкой.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Начинает игру «Змейка» с лабиринтом на игровом поле.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Запускает игру «Змейка» с лабиринтом и отображает кратчайший путь от змейки до еды зелёными точками.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Запускает игру «Змейка» с лабиринтом, имеющим более широкие проходы (минимум 5 клеток) для облегчения навигации.

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
