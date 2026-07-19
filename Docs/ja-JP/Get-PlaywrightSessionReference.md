# Get-PlaywrightSessionReference

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> 現在のPlaywrightブラウザセッションへの参照を取得します。

## Description

現在のブラウザページのPlaywright Page、BrowserContext、およびセッションデータを含むハッシュテーブルを返します。この参照は、Invoke-WebbrowserEvaluation -ByReferenceと共に使用して、特定のページを対象とすることができます。

ブラウザの種類は、-Edge、-Chrome、-Chromium、-Firefox、または-Webkitスイッチを使用して指定できます。スイッチが指定されていない場合は、Chromiumが優先されます。

## Syntax

```powershell
Get-PlaywrightSessionReference [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edgeブラウザセッションを優先する |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chromeブラウザセッションを推奨 |
| `-Chromium` | SwitchParameter | — | — | Named | — | デフォルトのブラウザに応じて、Microsoft EdgeまたはGoogle Chromeを優先します。 |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox ブラウザのセッションを優先 |
| `-Webkit` | SwitchParameter | — | — | Named | — | WebKitブラウザセッションを優先 |

## Examples

### Get a reference to the current browser session $sessionRef = Get-PlaywrightSessionReference

```powershell
Get a reference to the current browser session
$sessionRef = Get-PlaywrightSessionReference
```

### Store the reference and use it later to execute JavaScript $ref = Get-PlaywrightSessionReference Invoke-WebbrowserEvaluation "document.title" -ByReference $ref

```powershell
Store the reference and use it later to execute JavaScript
$ref = Get-PlaywrightSessionReference
Invoke-WebbrowserEvaluation "document.title" -ByReference $ref
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-PlaywrightSessionReference on GitHub](https://github.com/genXdev/genXdev)
