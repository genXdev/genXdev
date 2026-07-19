# Get-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtém o identificador da janela de primeiro plano atualmente ativa.

## Description

* Este cmdlet recupera o identificador de janela (HWND) da janela que está
  atualmente em primeiro plano e possui foco de teclado.
* Ele utiliza funções da API do Windows através de P/Invoke para interagir com a
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

Recupera e retorna o identificador IntPtr da janela ativa no momento.

### Example 2

```powershell
$windowHandle = Get-ForegroundWindow
Write-Host "Active window handle: $windowHandle"
```

Armazena o identificador da janela em primeiro plano em uma variável e o exibe.

## Related Links

- [Get-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)
