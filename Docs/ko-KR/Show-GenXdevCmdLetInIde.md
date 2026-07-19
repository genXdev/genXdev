# Show-GenXdevCmdLetInIde

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `editcmdlet, `cmdlet

## Synopsis

> 지정된 GenXdev cmdlet을 Visual Studio Code에서 엽니다.

## Description

이 함수는 지정된 GenXdev cmdlet에 대한 스크립트 파일과 줄 번호를 검색하여 Visual Studio Code에서 엽니다. UnitTests 스위치 매개변수에 따라 기본 함수 구현 또는 관련 단위 테스트를 열 수 있습니다.

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

## Examples

### Show-GenXdevCmdLetInIde -CmdletName "Get-GenXDevModuleInfo" Opens the implementation of Get-GenXDevModuleInfo in VSCode.

```powershell
Show-GenXdevCmdLetInIde -CmdletName "Get-GenXDevModuleInfo"
Opens the implementation of Get-GenXDevModuleInfo in VSCode.
```

### editcmdlet Get-GenXDevModuleInfo -UnitTests Opens the unit tests for Get-GenXDevModuleInfo using the alias.

```powershell
editcmdlet Get-GenXDevModuleInfo -UnitTests
Opens the unit tests for Get-GenXDevModuleInfo using the alias.
```

## Related Links

- [Show-GenXdevCmdLetInIde on GitHub](https://github.com/genXdev/genXdev)
