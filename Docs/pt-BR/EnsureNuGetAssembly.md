# EnsureNuGetAssembly

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Faz download e carrega assemblies .NET de pacotes NuGet com base na chave ou ID do pacote.

## Description

Esta função garante que os assemblies dos pacotes NuGet especificados sejam baixados e carregados na sessão atual do PowerShell. Ela suporta detecção e carregamento automáticos com fallback para um manifesto JSON para substituições de configuração, tratando casos extremos como dependências stub (ex.: SQLite). A instalação usa exclusivamente a CLI do dotnet para gerenciamento confiável de pacotes e carrega assemblies diretamente do cache global do NuGet sem copiar. O carregamento preguiçoso verifica se o tipo já está disponível antes de prosseguir.

## Syntax

```powershell
EnsureNuGetAssembly -PackageKey <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-Destination <String>] [-ForceConsent] [-ForceLatest] [-ManifestPath <String>] [-Publisher <String>] [-TypeName <String>] [-Version <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PackageKey` | String | ✅ | — | 0 | — | Chave do pacote de packages.json ou NuGet PackageId direto. |
| `-ManifestPath` | String | — | — | Named | — | Caminho para packages.json; assume a raiz do módulo se omitido. |
| `-Version` | String | — | — | Named | — | Versão específica; se omitido, usar a mais recente do JSON. |
| `-TypeName` | String | — | — | Named | — | Digite o nome para verificar o carregamento. |
| `-ForceLatest` | SwitchParameter | — | — | Named | — | Recorre à versão mais recente se a versão exata falhar. |
| `-Destination` | String | — | — | Named | — | Destino de instalação personalizado; padrão para cache local persistente ou global. |
| `-Description` | String | — | — | Named | — | Descrição opcional do software e seu propósito para consentimento. |
| `-Publisher` | String | — | — | Named | — | Editor ou fornecedor opcional do software para consentimento. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forçar um aviso mesmo se a preferência estiver definida para consentimento. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automaticamente com a instalação de software de terceiros e definir sinalizador persistente. |

## Examples

### EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"
```

### EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"
```

### EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [EnsureNuGetAssembly on GitHub](https://github.com/genXdev/genXdev)
