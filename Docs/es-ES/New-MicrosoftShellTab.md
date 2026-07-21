# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x`

## Synopsis

> Crea una nueva pestaña de Terminal de Windows ejecutando PowerShell.

## Description

Abre una nueva pestaña de Windows Terminal simulando el atajo de teclado Ctrl+Mayús+T.
La función lleva la ventana de PowerShell al primer plano, envía la combinación de teclas
y, opcionalmente, cierra la pestaña actual después de un retardo.

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | Mantener la pestaña actual abierta después de crear una nueva pestaña |

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

> Mantener la pestaña actual abierta después de crear una nueva pestaña

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-IsSpeaking.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/UtcNow.md)
