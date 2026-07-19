# Unprotect-WebbrowserTab

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbctrl

## Synopsis

> Assume o controle de uma aba selecionada do navegador para manipulação interativa.

## Description

Esta função permite o controle interativo de uma guia do navegador que foi previamente selecionada usando Select-WebbrowserTab. Ela fornece acesso direto às propriedades e métodos do objeto Page do Microsoft Playwright, permitindo a automação da interação com o navegador.

## Syntax

```powershell
Unprotect-WebbrowserTab [-Force] [-UseCurrent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseCurrent` | SwitchParameter | — | — | Named | — | Usar a guia atual em vez de selecionar uma nova *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Reiniciar o navegador se nenhum servidor de depuração for detectado *(Parameter set: )* |

## Examples

### Unprotect-WebbrowserTab -UseCurrent

```powershell
Unprotect-WebbrowserTab -UseCurrent
```

### wbctrl -Force

```powershell
wbctrl -Force
```

## Related Links

- [Unprotect-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
