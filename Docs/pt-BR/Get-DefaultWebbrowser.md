# Get-DefaultWebbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retorna o navegador web padrão configurado para o usuário atual.

## Description

* Recupera informações sobre o navegador web padrão do sistema consultando o Registro do Windows.
* Retorna uma hashtable contendo o nome do navegador, descrição, caminho do ícone e caminho executável.
* A função verifica tanto as preferências do usuário quanto os registros de navegadores em todo o sistema para determinar o navegador padrão.

## Syntax

```powershell
Get-DefaultWebbrowser [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-DefaultWebbrowser | Format-List
```

Obtenha informações detalhadas sobre o navegador padrão.

### Example 2

```powershell
$browser = Get-DefaultWebbrowser
& $browser.Path https://www.github.com/
```

Abra o navegador padrão com uma URL específica.

## Related Links

- [Get-DefaultWebbrowser on GitHub](https://github.com/genXdev/genXdev)
