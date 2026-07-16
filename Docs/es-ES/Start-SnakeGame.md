# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
