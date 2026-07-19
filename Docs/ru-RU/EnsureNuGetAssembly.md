# EnsureNuGetAssembly

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Загружает и загружает сборки .NET из пакетов NuGet на основе ключа или идентификатора пакета.

## Description

Эта функция обеспечивает загрузку указанных сборок пакетов NuGet в текущий сеанс PowerShell. Она поддерживает автоматическое обнаружение и загрузку с возможностью возврата к JSON-манифесту для переопределения конфигурации, обрабатывая пограничные случаи, такие как заглушки зависимостей (например, SQLite). Установка использует исключительно интерфейс командной строки dotnet для надежного управления пакетами и загружает сборки напрямую из глобального кэша NuGet без копирования. Ленивая загрузка проверяет, доступен ли тип, прежде чем продолжить.

## Syntax

```powershell
EnsureNuGetAssembly -PackageKey <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-Destination <String>] [-ForceConsent] [-ForceLatest] [-ManifestPath <String>] [-Publisher <String>] [-TypeName <String>] [-Version <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PackageKey` | String | ✅ | — | 0 | — | Package key from packages.json or direct NuGet PackageId. |
| `-ManifestPath` | String | — | — | Named | — | Путь к packages.json; по умолчанию — корень модуля, если не указан. |
| `-Version` | String | — | — | Named | — | Конкретная версия; если не указана, используйте самую новую из JSON или последнюю. |
| `-TypeName` | String | — | — | Named | — | TypeName для проверки загрузки. |
| `-ForceLatest` | SwitchParameter | — | — | Named | — | При неудаче точной версии переключиться на последнюю. |
| `-Destination` | String | — | — | Named | — | Пользовательский каталог установки; по умолчанию используется локальное постоянное или глобальное кэширование. |
| `-Description` | String | — | — | Named | — | Optional description of the software and its purpose for consent. |
| `-Publisher` | String | — | — | Named | — | Необязательный издатель или поставщик программного обеспечения для получения согласия. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a prompt even if preference is set for consent. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматически соглашаться на установку стороннего ПО и устанавливать постоянный флаг. |

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
