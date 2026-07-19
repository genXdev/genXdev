# Get-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtiene el identificador de la ventana activa en primer plano actualmente.

## Description

* Este cmdlet recupera el identificador de ventana (HWND) de la ventana que se
  encuentra actualmente en primer plano y tiene el foco de teclado.
* Utiliza funciones de la API de Windows a través de P/Invoke para interactuar con la
  biblioteca User32.dll.

## Syntax

```powershell
Get-ForegroundWindow [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ForegroundWindow
```

Recupera y devuelve el identificador IntPtr de la ventana actualmente activa.

### Example 2

```powershell
$windowHandle = Get-ForegroundWindow
Write-Host "Active window handle: $windowHandle"
```

Almacena el identificador de la ventana en primer plano en una variable y lo muestra.

## Related Links

- [Get-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)
