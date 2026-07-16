# Show-GenXdevCmdLetInIde

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `editcmdlet, `cmdlet

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Show-GenXdevCmdLetInIde -CmdletName <String> [[-ModuleName] <String[]>] [-ChangedirectoryOnly] [-Code] [-CoPilot] [-EditPrompt] [-FromScripts] [-KeysToSend <String[]>] [-NoLocal] [-OnlyPublished] [-Prompt <String>] [-Search] [-UnitTests] [-VisualStudio] [<CommonParameters>]

Show-GenXdevCmdLetInIde [[-BaseModuleName] <String>] [[-Synopsis] <String>] [[-Description] <String>] [[-CmdletAliases] <String[]>] [-New] [-PromptKey <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | ✅ | — | 0 | — | cmdlet을 필터링하는 검색 패턴 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | GenXdev 모듈 검색 이름 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | The `-NoLocal` parameter. |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | The `-OnlyPublished` parameter. |
| `-FromScripts` | SwitchParameter | — | — | Named | — | The `-FromScripts` parameter. |
| `-Code` | SwitchParameter | — | — | Named | — | 파일을 열 IDE |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Open in Visual Studio |
| `-UnitTests` | SwitchParameter | — | — | Named | — | ```python
import unittest

class TestGetUsers(unittest.TestCase):
    def test_get_users_success(self):
        result = get_users()
        self.assertIsInstance(result, list)
        if result:
            user = result[0]
            self.assertIn('id', user)
            self.assertIn('name', user)
            self.assertIn('email', user)

    def test_get_users_empty(self):
        # Assume function handles empty source
        pass

    def test_get_users_error(self):
        # Mock failure case
        with self.assertRaises(Exception):
            get_users()

if __name__ == '__main__':
    unittest.main()
``` |
| `-KeysToSend` | String[] | — | — | Named | `@()` | 전송할 키 |
| `-CoPilot` | SwitchParameter | — | — | Named | — | Co-Pilot 편집 세션에 추가 |
| `-Search` | SwitchParameter | — | — | Named | — | Also global search for the cmdlet |
| `-ChangedirectoryOnly` | SwitchParameter | — | — | Named | — | 지정된 경우에만 현재 PowerShell 위치를
해당 Cmdlet 디렉터리로 변경합니다. |
| `-New` | SwitchParameter | — | — | Named | — | 새로운 cmdlet 만들기 *(Parameter set: )* |
| `-Synopsis` | String | — | — | 3 | `"todo: A brief description of the cmdlet's purpose"` | cmdlet 목적에 대한 간략한 설명 *(Parameter set: )* |
| `-Description` | String | — | — | 4 | `'todo: [A detailed description of what the cmdlet does]'` | cmdlet이 수행하는 작업에 대한 자세한 설명 *(Parameter set: )* |
| `-BaseModuleName` | String | — | — | 2 | — | 새로운 cmdlet을 기존 GenXdev 모듈에 통합 *(Parameter set: )* |
| `-CmdletAliases` | String[] | — | — | 5 | — | cmdlet에 대한 하나 이상의 별칭입니다. 문자열 배열을 허용합니다. *(Parameter set: )* |
| `-PromptKey` | String | — | — | Named | — | 템플릿 선택에 사용할 AI 프롬프트 키 *(Parameter set: )* |
| `-Prompt` | String | — | — | Named | `"Create a boilerplate GenXdev cmdlet that does what it's name suggests"` | Custom AI prompt text to use for cmdlet generation |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Only edit the AI prompt without creating the cmdlet |

## Related Links

- [Show-GenXdevCmdLetInIde on GitHub](https://github.com/genXdev/genXdev)
