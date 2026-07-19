# Test-UnattendedMode

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> PowerShellが無人/自動モードで実行されているかを検出します。

## Description

* PowerShellが無人または自動化されたコンテキストで実行されているかどうかを判断するために、さまざまなインジケーターを分析します。
* パイプライン分析、環境変数、コンソールリダイレクト、呼び出しコンテキストをチェックします。
* CallersInvocationが指定されている場合、パイプラインの位置と数を分析して、自動化されたパイプラインまたはスクリプトの実行を検出します。

## Syntax

```powershell
Test-UnattendedMode [[-CallersInvocation] <InvocationInfo>] [-Detailed] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallersInvocation` | InvocationInfo | — | — | 0 | — | パイプラインと自動化検出のための発信者の呼び出し情報 |
| `-Detailed` | SwitchParameter | — | — | Named | `False` | 詳細分析オブジェクトを返します。単純な真偽値ではありません。 |

## Examples

### Example 1

```powershell
Test-UnattendedMode
```

無人モードで実行中かどうかを示すブール値を返します。

### Example 2

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation
```

呼び出し元のコンテキストを分析し、ブール値を返します。

### Example 3

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation -Detailed
```

すべての指標を含む詳細な分析オブジェクトを返します。

### Example 4

```powershell
function My-Function {
    $isUnattended = Test-UnattendedMode -CallersInvocation $MyInvocation
    if ($isUnattended) {
        Write-Verbose "Running in unattended mode"
    }
}
```

無人モードを確認するための関数内での使用例。

## Outputs


## Related Links

- [Test-UnattendedMode on GitHub](https://github.com/genXdev/genXdev)
