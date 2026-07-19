# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> 基于共同属性查找相似电影片名。

## Description

分析提供的电影以寻找共同属性，并返回10个类似电影片名的列表。利用AI识别输入电影中的模式和主题，以提出相关推荐。

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-All] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Headless] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Webkit] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | 要分析相似性的电影标题数组 |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | 用于AI操作的模型标识符或模式 |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作的API端点URL |
| `-ApiKey` | String | — | — | Named | — | 用于经过身份验证的人工智能操作的API密钥 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作超时秒数 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-Temperature` | Double | — | — | Named | `-1` | 响应随机性的温度参数（0.0-1.0） |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | 为每个结果打开IMDB搜索 |
| `-Language` | String | — | — | Named | — | 用于IMDB搜索或浏览器会话的语言 |
| `-Monitor` | Int32 | — | — | Named | `-1` | 用于浏览器窗口放置的监视器序号或名称 |
| `-Width` | Int32 | — | — | Named | `-1` | 浏览器窗口的宽度（像素） |
| `-Height` | Int32 | — | — | Named | `-1` | 浏览器窗口的高度（像素） |
| `-AcceptLang` | String | — | — | Named | — | 浏览器会话的 Accept-Language HTTP 标头 |
| `-Private` | SwitchParameter | — | — | Named | — | 在隐私/无痕模式下打开浏览器 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 使用谷歌浏览器进行浏览器会话 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 使用 Chromium 进行浏览器会话 |
| `-Firefox` | SwitchParameter | — | — | Named | — | Use Mozilla Firefox for browser session |
| `-Left` | Int32 | — | — | Named | — | 浏览器窗口左侧位置（像素） |
| `-Right` | Int32 | — | — | Named | — | 浏览器窗口的正确位置（以像素为单位） |
| `-Bottom` | Int32 | — | — | Named | — | 浏览器窗口底部位置（单位：像素） |
| `-Centered` | SwitchParameter | — | — | Named | — | 在屏幕中央打开浏览器窗口 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Open browser in full screen mode |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 以应用模式打开浏览器（最小化用户界面） |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Disable browser extensions for session |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disable popup blocker in browser session |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开浏览器窗口后聚焦 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开后将浏览器窗口置于前台 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 在打开浏览器后最大化窗口 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 关闭浏览器后将焦点恢复到上一个窗口 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Open each IMDB result in a new browser window |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.imdb.com/search/title/?title=your+query |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Return only the URL without opening browser |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 打开浏览器后发送Escape键 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 在发送按键后保持浏览器中的键盘焦点 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 向浏览器发送按键时使用 Shift+Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 向浏览器发送按键之间的延迟（毫秒） |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Open browser window without borders |
| `-PlayWright` | SwitchParameter | — | — | Named | — | 使用 Playwright 管理的浏览器而非操作系统安装的浏览器 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 打开由 Playwright 管理的 WebKit 浏览器。隐含 -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | 在无可见窗口的情况下运行浏览器 |
| `-All` | SwitchParameter | — | — | Named | — | 在所有注册的现代浏览器中打开 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 为每个结果并排打开浏览器窗口 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-Instructions` | String | — | — | Named | — | Instructions for the AI model on how to generate the string list |
| `-Attachments` | String[] | — | — | Named | — | 要附加的文件路径数组 |
| `-ImageDetail` | String | — | — | Named | — | 图像处理的细节级别。 |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | Array of function definitions that can be called by the AI model during processing. |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | PowerShell 命令定义的数组，可作为 AI 调用的工具。 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 无需确认即可执行的命令名称数组 |
| `-AudioTemperature` | Double | — | — | Named | — | 音频生成的温度参数（控制随机性） |
| `-TemperatureResponse` | Double | — | — | Named | — | 用于生成响应的温度参数。 |
| `-CpuThreads` | Int32 | — | — | Named | — | 使用的CPU线程数。 |
| `-SuppressRegex` | String | — | — | Named | — | 用于抑制某些输出的正则表达式。 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 用于处理的音频上下文大小。 |
| `-SilenceThreshold` | Double | — | — | Named | — | 音频处理的静音阈值。 |
| `-LengthPenalty` | Double | — | — | Named | — | 序列生成的长度惩罚。 |
| `-EntropyThreshold` | Double | — | — | Named | — | 输出过滤的熵阈值。 |
| `-LogProbThreshold` | Double | — | — | Named | — | 输出过滤的对数概率阈值。 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 音频检测无语音阈值。 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 禁用语音输出。 |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disable thought speech output. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX (voice activation). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 使用桌面音频捕获。 |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context usage. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 使用束搜索采样策略。 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | 指定时，将处理后的结果字符串列表复制回系统剪贴板。 |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 不要将模型的思考添加到对话历史中 |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 继续上次对话 |
| `-Speak` | SwitchParameter | — | — | Named | — | 启用AI响应的文本转语音功能 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 不要将会话存储在会话缓存中 |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Enable default tools for the AI model. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | The `-OutputMarkdownBlocksOnly` parameter. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 工具调用的最大回调长度。 |

## Examples

### Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb

```powershell
Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb
```

### moremovietitle "The Matrix","Inception" -imdb

```powershell
moremovietitle "The Matrix","Inception" -imdb
```

## Related Links

- [Get-SimularMovieTitles on GitHub](https://github.com/genXdev/genXdev)
