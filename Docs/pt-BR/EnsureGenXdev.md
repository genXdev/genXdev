# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Garante que todos os módulos GenXdev sejam carregados corretamente, invocando todos os cmdlets Ensure*.

## Description

Esta função recupera todos os cmdlets do GenXdev que começam com "Ensure" ou
"Optimize-Ensure" (para cmdlets c#) e
executa cada um para garantir que todos os módulos e dependências GenXdev necessários
sejam carregados e disponibilizados adequadamente para uso. Quaisquer falhas durante
a execução são capturadas e exibidas como mensagens informativas.

Opcionalmente, também pode baixar e carregar todos os pacotes NuGet definidos no
arquivo de manifesto packages.json.

## Syntax

```powershell
EnsureGenXdev [-ConsentToThirdPartySoftwareInstallation] [-DownloadAllNugetPackages] [-Force] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Força a execução de operações de garantia mesmo que pareçam já terem sido concluídas |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | Baixa e carrega todos os pacotes NuGet definidos no arquivo de manifesto packages.json |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forçar um prompt de consentimento mesmo que a preferência esteja definida para instalação de software de terceiros. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automaticamente com a instalação de software de terceiros e definir sinalizador persistente para todos os pacotes. |

## Examples

### EnsureGenXdev

```powershell
EnsureGenXdev
```

Este comando executa todos os cmdlets Ensure* disponíveis para inicializar o ambiente GenXdev.

### EnsureGenXdev -DownloadAllNugetPackages

```powershell
EnsureGenXdev -DownloadAllNugetPackages
```

Este comando executa todos os cmdlets Ensure* e também baixa e carrega todos os pacotes NuGet definidos no arquivo de manifesto packages.json.

### EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation
```

Este comando executa todos os cmdlets Ensure* e baixa pacotes NuGet.

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
