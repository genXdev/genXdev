# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> Inicia un juego simple de Snake en la consola.

## Description

Esta función inicializa y ejecuta un juego básico de Snake dentro de la consola de PowerShell. El jugador controla la serpiente usando las teclas de flecha o las teclas WASD, con el objetivo de comer comida y crecer más largo mientras evita colisiones con las paredes o consigo mismo. El juego cuenta con un ajuste dinámico de velocidad basado en el espacio disponible y la longitud de la serpiente. Por defecto, la consola se limpia antes de comenzar.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Longitud inicial de la serpiente (predeterminado: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Velocidad del juego en milisegundos entre movimientos (predeterminado: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Evita borrar la consola antes de iniciar el juego |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Dibuja un laberinto dentro del campo de juego utilizando caracteres de dibujo ASCII para paredes y líneas, similar al borde |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Muestra la ruta más corta desde la cabeza de la serpiente hasta la comida utilizando pequeños puntos verdes centrados |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Ancho mínimo del camino para el laberinto (1-10, predeterminado: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Inicia el juego de la serpiente con la configuración predeterminada (5 segmentos, velocidad de 300 ms).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Inicia el juego de Snake sin limpiar la consola, con serpiente más corta y velocidad más rápida.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Inicia el juego usando el alias con una serpiente inicial más larga.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Inicia el juego de la serpiente con un laberinto en el campo de juego.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Inicia el juego de la serpiente con un laberinto y muestra la ruta más corta desde la serpiente hasta la comida con puntos verdes.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Inicia el juego Snake con un laberinto que tiene caminos más anchos (mínimo 5 espacios) para una navegación más fácil.

## Parameter Details

### `-InitialLength <Int32>`

> Longitud inicial de la serpiente (predeterminado: 5)

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

> Velocidad del juego en milisegundos entre movimientos (predeterminado: 300)

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

> Evita borrar la consola antes de iniciar el juego

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

> Dibuja un laberinto dentro del campo de juego utilizando caracteres de dibujo ASCII para paredes y líneas, similar al borde

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

> Muestra la ruta más corta desde la cabeza de la serpiente hasta la comida utilizando pequeños puntos verdes centrados

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

> Ancho mínimo del camino para el laberinto (1-10, predeterminado: 2)

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/UtcNow.md)
