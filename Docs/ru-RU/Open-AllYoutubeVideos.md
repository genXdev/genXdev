# Open-AllYoutubeVideos

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qvideos, `qyt

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-AllYoutubeVideos [[-Queries] <String[]>] [-AcceptLang <String>] [-ApplicationMode] [-Chrome] [-Edge] [-NoFullScreen] [-Private] [-Recommended] [-Subscriptions] [-Trending] [-WatchLater] [<CommonParameters>]
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
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Предотвращает открытие в полноэкранном режиме |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Скрыть элементы управления браузером |
| `-AcceptLang` | String | — | — | Named | `$null` | Установить HTTP-заголовок accept-language браузера |

## Related Links

- [Open-AllYoutubeVideos on GitHub](https://github.com/genXdev/genXdev)
