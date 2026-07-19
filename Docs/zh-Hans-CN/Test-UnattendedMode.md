# Test-UnattendedMode

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 检测PowerShell是否正在以无人值守/自动模式运行。

## Description

* 分析各种指标，判断PowerShell是否在无人值守或自动化上下文中运行。
* 检查管道分析、环境变量、控制台重定向和调用上下文。
* 当提供了CallersInvocation时，分析管道位置和计数，以检测自动化管道或脚本执行。

## Syntax

```powershell
Test-UnattendedMode [[-CallersInvocation] <InvocationInfo>] [-Detailed] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallersInvocation` | InvocationInfo | — | — | 0 | — | 调用者的管道和自动化检测调用信息 |
| `-Detailed` | SwitchParameter | — | — | Named | `False` | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |

## Examples

### Example 1

```powershell
Test-UnattendedMode
```

返回一个布尔值，指示是否在无人值守模式下运行。

### Example 2

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation
```

分析调用者的调用上下文并返回一个布尔值。

### Example 3

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation -Detailed
```

返回包含所有指标的详细分析对象。

### Example 4

```powershell
function My-Function {
    $isUnattended = Test-UnattendedMode -CallersInvocation $MyInvocation
    if ($isUnattended) {
        Write-Verbose "Running in unattended mode"
    }
}
```

在用于检查无人值守模式的函数中的示例用法。

## Outputs


## Related Links

- [Test-UnattendedMode on GitHub](https://github.com/genXdev/genXdev)
