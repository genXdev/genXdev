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
| `-CmdletName` | String | ✅ | — | 0 | — | コマンドレットをフィルタリングする検索パターン 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | 検索するGenXdevモジュール名 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | The `-NoLocal` parameter. |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | The `-OnlyPublished` parameter. |
| `-FromScripts` | SwitchParameter | — | — | Named | — | The `-FromScripts` parameter. |
| `-Code` | SwitchParameter | — | — | Named | — | ファイルを開くためのIDE |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Visual Studio で開く |
| `-UnitTests` | SwitchParameter | — | — | Named | — | def test_my_function():
    # Test case 1: Normal input
    assert my_function(1) == 2
    
    # Test case 2: Edge case - zero
    assert my_function(0) == 1
    
    # Test case 3: Negative input
    assert my_function(-1) == 0
    
    # Test case 4: Large input
    assert my_function(100) == 101
    
    print("All tests passed!") |
| `-KeysToSend` | String[] | — | — | Named | `@()` | 送信するキー |
| `-CoPilot` | SwitchParameter | — | — | Named | — | Co-Pilot 編集セッションに追加 |
| `-Search` | SwitchParameter | — | — | Named | — | また、コマンドレットをグローバル検索します。 |
| `-ChangedirectoryOnly` | SwitchParameter | — | — | Named | — | 指定された場合、現在のPowerShellの場所のみを変更します（それぞれのCmdletディレクトリに対して） |
| `-New` | SwitchParameter | — | — | Named | — | 新しいコマンドレットを作成する *(Parameter set: )* |
| `-Synopsis` | String | — | — | 3 | `"todo: A brief description of the cmdlet's purpose"` | このコマンドレットの目的の簡単な説明 *(Parameter set: )* |
| `-Description` | String | — | — | 4 | `'todo: [A detailed description of what the cmdlet does]'` | コマンドレットが実行する処理の詳細な説明 *(Parameter set: )* |
| `-BaseModuleName` | String | — | — | 2 | — | 新しいコマンドレットを既存のGenXdevモジュールに統合する *(Parameter set: )* |
| `-CmdletAliases` | String[] | — | — | 5 | — | コマンドレットのエイリアスを1つ以上指定します。文字列の配列を受け入れます。 *(Parameter set: )* |
| `-PromptKey` | String | — | — | Named | — | テンプレート選択に使用するAIプロンプトキー *(Parameter set: )* |
| `-Prompt` | String | — | — | Named | `"Create a boilerplate GenXdev cmdlet that does what it's name suggests"` | カスタムAIプロンプトテキスト（コマンドレット生成用） |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | プロンプトのみを編集し、コマンドレットは作成しない |

## Related Links

- [Show-GenXdevCmdLetInIde on GitHub](https://github.com/genXdev/genXdev)
