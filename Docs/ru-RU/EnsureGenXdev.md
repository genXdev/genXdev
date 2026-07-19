# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Обеспечивает полную загрузку всех модулей GenXdev путем вызова всех командлетов Ensure*.

## Description

Эта функция извлекает все командлеты GenXdev, начинающиеся с "Ensure" или "Optimize-Ensure" (для командлетов C#), и выполняет каждый из них, чтобы гарантировать, что все необходимые модули GenXdev и зависимости правильно загружены и доступны для использования. Любые сбои во время выполнения перехватываются и отображаются в виде информационных сообщений.

При желании она также может загрузить и загрузить все пакеты NuGet, определенные в файле манифеста packages.json.

## Syntax

```powershell
EnsureGenXdev [-ConsentToThirdPartySoftwareInstallation] [-DownloadAllNugetPackages] [-Force] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Принудительно выполняет операции обеспечения, даже если они кажутся уже завершенными |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | Загружает и устанавливает все пакеты NuGet, определённые в файле манифеста packages.json |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Принудительно отобразить запрос на согласие, даже если настройка установлена для установки стороннего программного обеспечения. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматически соглашаться на установку стороннего программного обеспечения и устанавливать постоянный флаг для всех пакетов. |

## Examples

### EnsureGenXdev

```powershell
EnsureGenXdev
```

Эта команда запускает все доступные командлеты Ensure* для инициализации среды GenXdev.

### EnsureGenXdev -DownloadAllNugetPackages

```powershell
EnsureGenXdev -DownloadAllNugetPackages
```

Эта команда запускает все командлеты Ensure* и также загружает и устанавливает все пакеты NuGet, определенные в файле манифеста packages.json.

### EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation
```

Эта команда запускает все командлеты Ensure* и загружает пакеты NuGet.

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
