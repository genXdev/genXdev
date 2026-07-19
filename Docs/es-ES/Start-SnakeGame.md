# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake

## Synopsis

> Inicia un juego simple de Snake en la consola.

## Description

Esta función inicializa y ejecuta un juego básico de Snake en la consola de PowerShell. El jugador controla la serpiente usando las teclas de flecha o las teclas WASD, con el objetivo de comer comida y crecer más larga mientras evita colisiones con las paredes o consigo misma. El juego ajusta dinámicamente la velocidad según el espacio disponible y la longitud de la serpiente. Por defecto, la consola se limpia antes de empezar.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Longitud inicial de la serpiente (predeterminado: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Velocidad del juego en milisegundos entre movimientos (por defecto: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Impide limpiar la consola antes de iniciar el juego |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Dibuja un laberinto dentro del campo de juego utilizando caracteres de dibujo ASCII para paredes y líneas, similar al borde |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Muestra el camino más corto desde la cabeza de la serpiente hasta la comida utilizando pequeños puntos verdes centrados |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Anchura mínima del pasillo para el laberinto (1-10, predeterminado: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Inicia el juego de Snake con la configuración predeterminada (5 segmentos, velocidad 300ms).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Inicia el juego de la serpiente sin limpiar la consola, con una serpiente más corta y mayor velocidad.

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

Inicia el juego de la serpiente con un laberinto y muestra el camino más corto desde la serpiente hasta la comida con puntos verdes.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Inicia el juego de la serpiente con un laberinto que tiene caminos más anchos (mínimo 5 espacios) para facilitar la navegación.

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
