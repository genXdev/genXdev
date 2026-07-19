# Open-AllYoutubeVideos

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qvideos, `qyt

## Synopsis

> Открывает и управляет видео на YouTube в окне браузера с помощью клавиатурных сокращений.

## Description

Открывает видео YouTube, соответствующие поисковым запросам или из различных разделов YouTube, в окне браузера. Предоставляет клавиатурное управление для воспроизведения видео и навигации через интерактивный интерфейс. Поддерживает несколько браузеров и различные типы контента YouTube, включая результаты поиска, подписки, «Посмотреть позже», рекомендованные видео и популярный контент.

## Syntax

```powershell
Open-AllYoutubeVideos [[-Queries] <String[]>] [-AcceptLang <String>] [-ApplicationMode] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoFullScreen] [-Private] [-Recommended] [-Subscriptions] [-Trending] [-WatchLater] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('')` | поисковые запросы YouTube для поиска видео |
| `-Subscriptions` | SwitchParameter | — | — | Named | — | Открыть видео с каналов, на которые подписан |
| `-WatchLater` | SwitchParameter | — | — | Named | — | Open videos from watch later playlist |
| `-Recommended` | SwitchParameter | — | — | Named | — | Открыть рекомендованные видео |
| `-Trending` | SwitchParameter | — | — | Named | — | Открыть трендовые видео |
| `-Private` | SwitchParameter | — | — | Named | — | Открывается в режиме инкогнито/частного просмотра |
| `-Edge` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Открывается в Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge или Google Chrome, в зависимости от того, какой браузер установлен по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Открывается в Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Использует управляемый Playwright браузер WebKit |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Предотвращает открытие в полноэкранном режиме |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Скрыть элементы управления браузером |
| `-AcceptLang` | String | — | — | Named | `$null` | Установить HTTP-заголовок accept-language браузера |

## Examples

### Open-AllYoutubeVideos -Queries "PowerShell tutorial","vscode tips" -Edge

```powershell
Open-AllYoutubeVideos -Queries "PowerShell tutorial","vscode tips" -Edge
```

### qvideos "PowerShell tutorial" -e

```powershell
qvideos "PowerShell tutorial" -e
```

## Related Links

- [Open-AllYoutubeVideos on GitHub](https://github.com/genXdev/genXdev)
