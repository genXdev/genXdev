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
| `-InitialLength` | Int32 | — | — | 0 | `5` | Comprimento inicial da cobra (padrão: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Velocidade do jogo em milissegundos entre jogadas (padrão: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Impede a limpeza do console antes de iniciar o jogo |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Desenha um labirinto dentro do campo de jogo usando caracteres de desenho ASCII para paredes e linhas, semelhante à borda |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Exibe o caminho mais curto da cabeça da cobra até a comida usando pequenos pontos verdes centralizados |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Largura mínima do caminho para o labirinto (1-10, padrão: 2) |

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
