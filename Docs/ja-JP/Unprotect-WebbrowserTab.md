# Unprotect-WebbrowserTab

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbctrl

## Synopsis

> 選択したWebブラウザのタブを制御し、インタラクティブな操作を行います。

## Description

この関数は、Select-WebbrowserTabを使用して以前に選択されたブラウザタブの対話的な制御を可能にします。Microsoft Playwright Pageオブジェクトのプロパティとメソッドへの直接アクセスを提供し、自動化されたブラウザ操作を可能にします。

## Syntax

```powershell
Unprotect-WebbrowserTab [-Force] [-UseCurrent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseCurrent` | SwitchParameter | — | — | Named | — | 新しいタブを選択する代わりに現在のタブを使用する *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | デバッグサーバーが検出されない場合、ブラウザを再起動します *(Parameter set: )* |

## Examples

### Unprotect-WebbrowserTab -UseCurrent

```powershell
Unprotect-WebbrowserTab -UseCurrent
```

### wbctrl -Force

```powershell
wbctrl -Force
```

## Related Links

- [Unprotect-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
