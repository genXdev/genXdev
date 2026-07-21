# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> Avvia un semplice gioco di Snake nella console.

## Description

Questa funzione inizializza ed esegue un gioco base di Snake nella console di PowerShell. Il giocatore controlla il serpente usando i tasti freccia o i tasti WASD, con l'obiettivo di mangiare cibo e crescere più lungo evitando collisioni con i muri o con se stesso. Il gioco presenta una regolazione dinamica della velocità in base allo spazio disponibile e alla lunghezza del serpente. Per impostazione predefinita, la console viene cancellata prima dell'avvio.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Lunghezza iniziale del serpente (predefinito: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Velocità del gioco in millisecondi tra le mosse (impostazione predefinita: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Impedisce la pulizia della console prima di avviare il gioco |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Disegna un labirinto all'interno del campo di gioco utilizzando caratteri ASCII per pareti e linee, simile al bordo. |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Mostra il percorso più breve dalla testa del serpente al cibo utilizzando piccoli puntini verdi centrati |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Larghezza minima del percorso per il labirinto (1-10, default: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Avvia il gioco Snake con le impostazioni predefinite (5 segmenti, velocità 300ms).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Avvia il gioco Snake senza cancellare la console, con serpente più corto e velocità maggiore.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Avvia il gioco usando l'alias con un serpente iniziale più lungo.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Avvia il gioco Snake con un labirinto nel campo di gioco.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Avvia il gioco Snake con un labirinto e mostra il percorso più breve dal serpente al cibo con puntini verdi.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Avvia il gioco Snake con un labirinto che ha percorsi più ampi (minimo 5 spazi) per una navigazione più facile.

## Parameter Details

### `-InitialLength <Int32>`

> Lunghezza iniziale del serpente (predefinito: 5)

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

> Velocità del gioco in millisecondi tra le mosse (impostazione predefinita: 300)

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

> Impedisce la pulizia della console prima di avviare il gioco

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

> Disegna un labirinto all'interno del campo di gioco utilizzando caratteri ASCII per pareti e linee, simile al bordo.

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

> Mostra il percorso più breve dalla testa del serpente al cibo utilizzando piccoli puntini verdi centrati

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

> Larghezza minima del percorso per il labirinto (1-10, default: 2)

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/UtcNow.md)
