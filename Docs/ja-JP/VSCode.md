# VSCode

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Visual Studio Code で 1 つ以上のファイルを開きます。

## Description

この関数はファイルパスを受け取り、Visual Studio Codeで開きます。パスを展開し、ファイルの存在を検証してから開こうとします。この関数は直接ファイルパスとパイプライン入力の両方をサポートしており、ターミナル検索から複数のファイルをすばやく開くのに最適です。

## Syntax

```powershell
VSCode -FilePath <String[]> [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue) | 0 | — | VSCodeで開くファイルのパス |
| `-Copilot` | SwitchParameter | — | — | Named | — | ソースファイルをCopilot編集セッションに追加する |

## Examples

### VSCode -FilePath "C:\path\to\file.txt" -Copilot

```powershell
VSCode -FilePath "C:\path\to\file.txt" -Copilot
```

### Get-ChildItem *.js -Recurse | VSCode

```powershell
Get-ChildItem *.js -Recurse | VSCode
```

## Related Links

- [VSCode on GitHub](https://github.com/genXdev/genXdev)
