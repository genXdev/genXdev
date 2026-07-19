# Set-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Trae la ventana especificada al frente y la convierte en la ventana activa.

## Description

* Hace que una ventana sea la ventana en primer plano usando múltiples métodos de la API Win32 para máxima fiabilidad.
* Primero intenta usar la API SwitchToThisWindow, luego recurre a SetForegroundWindow si es necesario.

## Syntax

```powershell
Set-ForegroundWindow [-WindowHandle] <IntPtr> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WindowHandle` | IntPtr | ✅ | — | 0 | `0` | Mango de la ventana para establecer como ventana de primer plano |

## Examples

### Example 1

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow -WindowHandle $hwnd
```

Trae una ventana de Bloc de notas al primer plano usando el identificador de ventana.

### Example 2

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow $hwnd
```

Utiliza parámetros posicionales para una sintaxis concisa.

## Related Links

- [Set-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)
