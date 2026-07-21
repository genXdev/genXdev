# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x`

## Synopsis

> Cria uma nova guia do Windows Terminal executando o PowerShell.

## Description

Abre uma nova aba do Windows Terminal simulando o atalho de teclado Ctrl+Shift+T.
A função traz a janela do PowerShell para o primeiro plano, envia a combinação de teclas
e, opcionalmente, fecha a aba atual após um atraso.

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | Manter a aba atual aberta ao criar uma nova aba |

## Examples

### New-MicrosoftShellTab -DontCloseThisTab Creates a new terminal tab while keeping the current tab open.

```powershell
New-MicrosoftShellTab -DontCloseThisTab
Creates a new terminal tab while keeping the current tab open.
```

### x Creates a new terminal tab and closes the current one after 3 seconds.

```powershell
x
Creates a new terminal tab and closes the current one after 3 seconds.
```

## Parameter Details

### `-DontCloseThisTab`

> Manter a aba atual aberta ao criar uma nova aba

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-IsSpeaking.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/UtcNow.md)
