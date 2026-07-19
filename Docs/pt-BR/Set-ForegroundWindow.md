# Set-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Traz a janela especificada para o primeiro plano e a torna a janela ativa.

## Description

* Torna uma janela a janela de primeiro plano usando múltiplos métodos da API Win32 para
  máxima confiabilidade.
* Primeiro tenta usar a API SwitchToThisWindow, e em caso de falha, recorre ao
  SetForegroundWindow se necessário.

## Syntax

```powershell
Set-ForegroundWindow [-WindowHandle] <IntPtr> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WindowHandle` | IntPtr | ✅ | — | 0 | `0` | Manipulador de janela para definir como janela em primeiro plano |

## Examples

### Example 1

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow -WindowHandle $hwnd
```

Traz uma janela do Bloco de Notas para o primeiro plano usando o identificador da janela.

### Example 2

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow $hwnd
```

Usa parâmetro posicional para sintaxe concisa.

## Related Links

- [Set-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)
