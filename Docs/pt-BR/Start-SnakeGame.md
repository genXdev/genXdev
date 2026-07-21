# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> Inicia um jogo simples da Cobrinha no console.

## Description

Esta função inicializa e executa um jogo básico de Snake dentro do console do PowerShell. O jogador controla a cobra usando as teclas de seta ou as teclas WASD, com o objetivo de comer comida e crescer enquanto evita colisões com as paredes ou com ela mesma. O jogo apresenta ajuste dinâmico de velocidade com base no espaço disponível e no comprimento da cobra. Por padrão, o console é limpo antes de iniciar.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Comprimento inicial da cobra (padrão: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Velocidade do jogo em milissegundos entre movimentos (padrão: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Impede que o console seja limpo antes de iniciar o jogo |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Desenha um labirinto dentro do campo de jogo usando caracteres de desenho ASCII para paredes e linhas, semelhante à borda |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Exibe o caminho mais curto da cabeça da cobra até a comida usando pequenos pontos verdes centralizados |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Largura mínima do caminho para o labirinto (1-10, padrão: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Inicia o jogo Snake com as configurações padrão (5 segmentos, velocidade de 300ms).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Inicia o jogo da cobrinha sem limpar o console, com cobra mais curta e velocidade mais rápida.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Inicia o jogo usando o alias com uma cobra inicial mais longa.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Inicia o jogo da cobra com um labirinto no campo de jogo.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Inicia o jogo da cobrinha com um labirinto e exibe o caminho mais curto da cobra até a comida com pontos verdes.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Inicia o jogo Snake com um labirinto que possui caminhos mais largos (mínimo de 5 espaços) para facilitar a navegação.

## Parameter Details

### `-InitialLength <Int32>`

> Comprimento inicial da cobra (padrão: 5)

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

> Velocidade do jogo em milissegundos entre movimentos (padrão: 300)

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

> Impede que o console seja limpo antes de iniciar o jogo

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

> Desenha um labirinto dentro do campo de jogo usando caracteres de desenho ASCII para paredes e linhas, semelhante à borda

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

> Exibe o caminho mais curto da cabeça da cobra até a comida usando pequenos pontos verdes centralizados

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

> Largura mínima do caminho para o labirinto (1-10, padrão: 2)

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/UtcNow.md)
