# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> Startar ett enkelt Snake-spel i konsolen.

## Description

Denna funktion initierar och kör ett grundläggande Snake-spel i PowerShell-konsolen. Spelaren styr ormen med piltangenterna eller WASD-tangenterna, med målet att äta mat och bli längre samtidigt som man undviker kollisioner med väggarna eller sig själv. Spelet har dynamisk hastighetsjustering baserat på tillgängligt utrymme och ormens längd. Som standard rensas konsolen innan start.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Längd på ormen i början (standard: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Spelhastighet i millisekunder mellan drag (standard: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Förhindrar att konsolen rensas innan spelet startar |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Ritar en labyrint inom spelplanen med ASCII-ritningstecken för väggar och linjer, liknande ramen. |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Visar den kortaste vägen från ormens huvud till maten med små gröna centrerade punkter |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Minsta korridorbredd för labyrinten (1-10, standard: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Startar Snake-spelet med standardinställningar (5 segment, 300 ms hastighet).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Startar Snake-spelet utan att rensa konsolen, med kortare orm och snabbare hastighet.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Startar spelet med hjälp av aliaset och en längre initial orm.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Startar Snake-spelet med en labyrint på spelplanen.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Startar Snake-spelet med en labyrint och visar den kortaste vägen från ormen till maten med gröna prickar.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Startar Snake-spelet med en labyrint som har bredare gångar (minst 5 steg) för enklare navigering.

## Parameter Details

### `-InitialLength <Int32>`

> Längd på ormen i början (standard: 5)

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

> Spelhastighet i millisekunder mellan drag (standard: 300)

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

> Förhindrar att konsolen rensas innan spelet startar

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

> Ritar en labyrint inom spelplanen med ASCII-ritningstecken för väggar och linjer, liknande ramen.

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

> Visar den kortaste vägen från ormens huvud till maten med små gröna centrerade punkter

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

> Minsta korridorbredd för labyrinten (1-10, standard: 2)

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/UtcNow.md)
