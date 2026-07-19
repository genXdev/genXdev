# Start-GenXdevMCPServer

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-GenXdevMCPServer [[-Port] <Int32>] [[-ExposedCmdLets] <GenXdev.Helpers.ExposedCmdletDefinition[]>] [[-NoConfirmationToolFunctionNames] <String[]>] [[-MaxOutputLength] <Int32>] [[-Token] <String>] [-StopExisting] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Port` | Int32 | — | — | 0 | `2175` | MCPサーバーが待機するポート（デフォルト：2175） |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | 1 | `@()` | MCPツールとして公開するPowerShellコマンド定義の配列 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | 2 | `@()` | ユーザーの確認なしで実行できるコマンド名の配列 |
| `-StopExisting` | SwitchParameter | — | — | Named | — | 新しいMCPサーバーを起動する前に、指定されたポートで実行中の既存のMCPサーバーを停止してください。 |
| `-MaxOutputLength` | Int32 | — | — | 3 | `75000` | トリミング前のツール出力の最大文字数（デフォルト: 75000） |
| `-Token` | String | — | — | 4 | `$null` | クライアントがMCPサーバーに接続するために必要な認証トークン |

## Related Links

- [Start-GenXdevMCPServer on GitHub](https://github.com/genXdev/genXdev)
