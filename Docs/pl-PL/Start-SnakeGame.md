# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> Uruchamia prostą grę Snake w konsoli.

## Description

Ta funkcja inicjuje i uruchamia podstawową grę Snake w konsoli PowerShell. Gracz kontroluje węża za pomocą strzałek lub klawiszy WASD, dążąc do zjedzenia jedzenia i wydłużenia się, unikając kolizji ze ścianami lub samym sobą. Gra oferuje dynamiczne dostosowanie prędkości w oparciu o dostępną przestrzeń i długość węża. Domyślnie konsola jest czyszczona przed rozpoczęciem.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Początkowa długość węża (domyślnie: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Szybkość gry w milisekundach między ruchami (domyślnie: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Zapobiega czyszczeniu konsoli przed rozpoczęciem gry |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Rysuje labirynt w obszarze gry za pomocą znaków rysunkowych ASCII do tworzenia ścian i linii, podobnie jak obramowanie |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Wyświetla najkrótszą ścieżkę od głowy węża do jedzenia za pomocą małych zielonych, wyśrodkowanych kropek |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Minimalna szerokość ścieżki w labiryncie (1-10, domyślnie: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Uruchamia grę Snake z domyślnymi ustawieniami (5 segmentów, prędkość 300ms).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Uruchamia grę Snake bez czyszczenia konsoli, z krótszym wężem i większą prędkością.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Uruchamia grę używając aliasu z dłuższym początkowym wężem.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Uruchamia grę Snake z labiryntem na polu gry.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Uruchamia grę Snake z labiryntem i wyświetla najkrótszą ścieżkę od węża do jedzenia za pomocą zielonych kropek.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Uruchamia grę Snake z labiryntem, który ma szersze ścieżki (minimum 5 pól) dla łatwiejszej nawigacji.

## Parameter Details

### `-InitialLength <Int32>`

> Początkowa długość węża (domyślnie: 5)

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

> Szybkość gry w milisekundach między ruchami (domyślnie: 300)

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

> Zapobiega czyszczeniu konsoli przed rozpoczęciem gry

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

> Rysuje labirynt w obszarze gry za pomocą znaków rysunkowych ASCII do tworzenia ścian i linii, podobnie jak obramowanie

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

> Wyświetla najkrótszą ścieżkę od głowy węża do jedzenia za pomocą małych zielonych, wyśrodkowanych kropek

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

> Minimalna szerokość ścieżki w labiryncie (1-10, domyślnie: 2)

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/UtcNow.md)
