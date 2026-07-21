# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> Start een eenvoudig Snake-spel in de console.

## Description

Deze functie initialiseert en voert een eenvoudig Snake-spel uit in de PowerShell-console. De speler bestuurt de slang met de pijltjestoetsen of WASD-toetsen, met als doel voedsel te eten en langer te worden, terwijl botsingen met de muren of zichzelf worden vermeden. Het spel heeft een dynamische snelheidsaanpassing op basis van beschikbare ruimte en slanglengte. Standaard wordt de console gewist voordat het spel begint.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Initiële lengte van de slang (standaard: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Snelheid van het spel in milliseconden tussen zetten (standaard: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Voorkomt het wissen van de console voordat het spel wordt gestart |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Tekent een doolhof in het speelveld met ASCII-tekentekens voor muren en lijnen, vergelijkbaar met de rand |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Geeft het kortste pad van de kop van de slang naar het eten weer met behulp van kleine groene gecentreerde stippen |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Minimale padbreedte voor het doolhof (1-10, standaard: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Start het Snake-spel met standaardinstellingen (5 segmenten, 300 ms snelheid).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Start het Snake-spel zonder console te wissen, met een kortere slang en hogere snelheid.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Start het spel met de alias en een langere beginslang.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Start het Snake-spel met een doolhof in het speelveld.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Start het Snake-spel met een doolhof en toon het kortste pad van de slang naar het eten met groene stippen.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Start het Snake-spel met een doolhof dat bredere paden heeft (minimaal 5 ruimtes) voor gemakkelijkere navigatie.

## Parameter Details

### `-InitialLength <Int32>`

> Initiële lengte van de slang (standaard: 5)

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

> Snelheid van het spel in milliseconden tussen zetten (standaard: 300)

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

> Voorkomt het wissen van de console voordat het spel wordt gestart

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

> Tekent een doolhof in het speelveld met ASCII-tekentekens voor muren en lijnen, vergelijkbaar met de rand

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

> Geeft het kortste pad van de kop van de slang naar het eten weer met behulp van kleine groene gecentreerde stippen

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

> Minimale padbreedte voor het doolhof (1-10, standaard: 2)

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/UtcNow.md)
