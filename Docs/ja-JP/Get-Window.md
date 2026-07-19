# Get-Window

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 指定されたプロセスまたはウィンドウハンドルのウィンドウ情報を取得します。

## Description

* プロセス名、ID、またはウィンドウハンドルを使用してウィンドウ情報を取得します。
* 一致するプロセスのメインウィンドウに関する詳細を含むWindowObjオブジェクトを返します。
* プロセス名で検索する際にワイルドカードをサポートします。

## Syntax

```powershell
Get-Window [[-ProcessName] <string>] [-ProcessId <int>] [-WindowHandle <long>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | ウィンドウ情報を取得するプロセスの名前 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | ウィンドウ情報を取得するプロセスのID |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | 情報を取得するウィンドウハンドル |

## Examples

### Example 1

```powershell
Get-Window -ProcessName "notepad"
```

「notepad」という名前のすべてのプロセスのウィンドウ情報を取得します。

### Example 2

```powershell
Get-Window -ProcessId 1234
```

ID 1234のプロセスのウィンドウ情報を取得します。

### Example 3

```powershell
Get-Window -WindowHandle 45678
```

ハンドル45678のウィンドウ情報を取得します。

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
