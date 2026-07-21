# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> Запускає просту гру «Змійка» в консолі.

## Description

Ця функція ініціалізує та запускає базову гру «Змійка» в консолі PowerShell. Гравець керує змійкою за допомогою клавіш зі стрілками або клавіш WASD, намагаючись їсти їжу та зростати в довжину, уникаючи зіткнень зі стінами або самим собою. Гра має динамічне регулювання швидкості на основі доступного простору та довжини змійки. За замовчуванням консоль очищається перед початком.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Початкова довжина змійки (за замовчуванням: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Швидкість гри в мілісекундах між ходами (за замовчуванням: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Запобігає очищенню консолі перед початком гри |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Малює лабіринт у межах ігрового поля, використовуючи символи ASCII для стін і ліній, подібно до рамки. |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Відображає найкоротший шлях від голови змії до їжі за допомогою маленьких зелених точок у центрі. |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Мінімальна ширина проходу для лабіринту (1-10, за замовчуванням: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Запускає гру в змійку з налаштуваннями за замовчуванням (5 сегментів, швидкість 300 мс).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Запускає гру Snake без очищення консолі, з коротшою змійкою та вищою швидкістю.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Починає гру, використовуючи псевдонім з довшою початковою змійкою.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Запускає гру «Змійка» з лабіринтом на ігровому полі.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Запускає гру «Змійка» з лабіринтом і показує найкоротший шлях від змійки до їжі зеленими крапками.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Запускає гру «Змійка» з лабіринтом, що має ширші проходи (мінімум 5 клітинок) для легшої навігації.

## Parameter Details

### `-InitialLength <Int32>`

> Початкова довжина змійки (за замовчуванням: 5)

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

> Швидкість гри в мілісекундах між ходами (за замовчуванням: 300)

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

> Запобігає очищенню консолі перед початком гри

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

> Малює лабіринт у межах ігрового поля, використовуючи символи ASCII для стін і ліній, подібно до рамки.

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

> Відображає найкоротший шлях від голови змії до їжі за допомогою маленьких зелених точок у центрі.

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

> Мінімальна ширина проходу для лабіринту (1-10, за замовчуванням: 2)

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/UtcNow.md)
