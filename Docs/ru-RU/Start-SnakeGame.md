# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> Запускает простую игру «Змейка» в консоли.

## Description

Эта функция инициализирует и запускает базовую игру «Змейка» в консоли PowerShell. Игрок управляет змейкой с помощью клавиш со стрелками или клавиш WASD, стремясь съесть еду и вырасти длиннее, избегая столкновений со стенами или с самим собой. Игра включает динамическую регулировку скорости в зависимости от доступного пространства и длины змейки. По умолчанию перед запуском консоль очищается.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Начальная длина змеи (по умолчанию: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Скорость игры в миллисекундах между ходами (по умолчанию: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Предотвращает очистку консоли перед запуском игры |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Рисует лабиринт в игровом поле, используя символы ASCII для стен и линий, аналогично границе. |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Отображает кратчайший путь от головы змеи до еды с помощью маленьких зеленых центрированных точек |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Минимальная ширина прохода для лабиринта (1–10, по умолчанию: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Запускает игру Snake с настройками по умолчанию (5 сегментов, скорость 300 мс).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Запускает игру Snake без очистки консоли, с более короткой змейкой и более высокой скоростью.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Запускает игру, используя псевдоним с более длинной начальной змейкой.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Запускает игру Змейка с лабиринтом на игровом поле.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Запускает игру Змейка с лабиринтом и отображает кратчайший путь от змейки к еде зелеными точками.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Запускает игру «Змейка» с лабиринтом, имеющим более широкие проходы (минимум 5 клеток) для облегчения навигации.

## Parameter Details

### `-InitialLength <Int32>`

> Начальная длина змеи (по умолчанию: 5)

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

> Скорость игры в миллисекундах между ходами (по умолчанию: 300)

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

> Предотвращает очистку консоли перед запуском игры

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

> Рисует лабиринт в игровом поле, используя символы ASCII для стен и линий, аналогично границе.

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

> Отображает кратчайший путь от головы змеи до еды с помощью маленьких зеленых центрированных точек

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

> Минимальная ширина прохода для лабиринта (1–10, по умолчанию: 2)

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/UtcNow.md)
