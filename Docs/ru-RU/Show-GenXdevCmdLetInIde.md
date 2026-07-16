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
| `-CmdletName` | String | ✅ | — | 0 | — | Шаблон поиска для фильтрации командлетов 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | GenXdev - названия модулей для поиска 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | The `-NoLocal` parameter. |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | The `-OnlyPublished` parameter. |
| `-FromScripts` | SwitchParameter | — | — | Named | — | The `-FromScripts` parameter. |
| `-Code` | SwitchParameter | — | — | Named | — | Иде, чтобы открыть файл в |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Открыть в Visual Studio |
| `-UnitTests` | SwitchParameter | — | — | Named | — | ```python
import unittest
from solution import get_weather

class TestGetWeather(unittest.TestCase):
    def test_sunny(self):
        self.assertEqual(get_weather('clear sky'), 'Sunny')
    
    def test_cloudy(self):
        self.assertEqual(get_weather('overcast'), 'Cloudy')
    
    def test_rainy(self):
        self.assertEqual(get_weather('moderate rain'), 'Rainy')
    
    def test_snowy(self):
        self.assertEqual(get_weather('light snow'), 'Snowy')
    
    def test_foggy(self):
        self.assertEqual(get_weather('fog'), 'Foggy')
    
    def test_unknown(self):
        self.assertEqual(get_weather('unknown condition'), 'Unknown')

if __name__ == '__main__':
    unittest.main()
``` |
| `-KeysToSend` | String[] | — | — | Named | `@()` | Отправляемые ключи |
| `-CoPilot` | SwitchParameter | — | — | Named | — | Добавить в сеанс редактирования Co-Pilot |
| `-Search` | SwitchParameter | — | — | Named | — | Также глобальный поиск по командлету |
| `-ChangedirectoryOnly` | SwitchParameter | — | — | Named | — | Если указано, изменяет только текущее расположение PowerShell
на соответствующий каталог командлета |
| `-New` | SwitchParameter | — | — | Named | — | Creating a new cmdlet in PowerShell involves writing a class that inherits from `PSCmdlet` or `Cmdlet`, then exporting it via a module. Here's a brief example:

```powershell
# MyCmdlet.cs
using System.Management.Automation;

[Cmdlet(VerbsCommon.Get, "MyCmdlet")]
public class GetMyCmdletCommand : PSCmdlet
{
    [Parameter(Mandatory = true, Position = 0)]
    public string Input { get; set; }

    protected override void ProcessRecord()
    {
        WriteObject($"Hello, {Input}!");
    }
}
```

To use it, compile to a DLL, import the module, then run `Get-MyCmdlet -Input "World"`. *(Parameter set: )* |
| `-Synopsis` | String | — | — | 3 | `"todo: A brief description of the cmdlet's purpose"` | Краткое описание назначения командлета *(Parameter set: )* |
| `-Description` | String | — | — | 4 | `'todo: [A detailed description of what the cmdlet does]'` | Подробное описание того, что делает командлет *(Parameter set: )* |
| `-BaseModuleName` | String | — | — | 2 | — | Интегрируйте новый командлет в существующий модуль GenXdev *(Parameter set: )* |
| `-CmdletAliases` | String[] | — | — | 5 | — | Одно или несколько псевдонимов для командлета. Принимает массив строк. *(Parameter set: )* |
| `-PromptKey` | String | — | — | Named | — | Ключ AI-подсказки для выбора шаблона *(Parameter set: )* |
| `-Prompt` | String | — | — | Named | `"Create a boilerplate GenXdev cmdlet that does what it's name suggests"` | Custom AI prompt text to use for cmdlet generation |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Only edit the AI prompt without creating the cmdlet |

## Related Links

- [Show-GenXdevCmdLetInIde on GitHub](https://github.com/genXdev/genXdev)
