# Get-DefaultWebbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Devuelve el navegador web predeterminado configurado para el usuario actual.

## Description

* Recupera información sobre el navegador web predeterminado del sistema consultando el Registro de Windows.
* Devuelve una tabla hash que contiene el nombre del navegador, descripción, ruta del icono y ruta del ejecutable.
* La función comprueba tanto las preferencias del usuario como los registros de navegadores a nivel de sistema para determinar el navegador predeterminado.

## Syntax

```powershell
Get-DefaultWebbrowser [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-DefaultWebbrowser | Format-List
```

Obtén información detallada sobre el navegador predeterminado.

### Example 2

```powershell
$browser = Get-DefaultWebbrowser
& $browser.Path https://www.github.com/
```

Inicia el navegador predeterminado con una URL específica.

## Related Links

- [Get-DefaultWebbrowser on GitHub](https://github.com/genXdev/genXdev)
