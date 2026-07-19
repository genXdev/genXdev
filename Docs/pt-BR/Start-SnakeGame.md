# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake

## Synopsis

> Inicia um jogo simples de Snake no console.

## Description

Esta função inicializa e executa um jogo básico de Snake no console do PowerShell. O jogador controla a cobra usando as teclas de seta ou as teclas WASD, com o objetivo de comer comida e crescer, evitando colisões com as paredes ou com ela mesma. O jogo conta com ajuste dinâmico de velocidade com base no espaço disponível e no comprimento da cobra. Por padrão, o console é limpo antes de iniciar.

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

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Inicia o jogo da cobrinha com as configurações padrão (5 segmentos, velocidade de 300ms).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Inicia o jogo da Cobra sem limpar o console, com cobra mais curta e velocidade mais rápida.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Inicia o jogo usando o alias com uma cobra inicial mais longa.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Inicia o jogo da cobrinha com um labirinto no campo de jogo.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Inicia o jogo Snake com um labirinto e exibe o caminho mais curto da cobra até a comida com pontos verdes.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Inicia o jogo da cobra com um labirinto que possui caminhos mais largos (mínimo de 5 espaços) para facilitar a navegação.

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
