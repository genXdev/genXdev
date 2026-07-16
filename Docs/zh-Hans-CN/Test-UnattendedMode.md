# Test-UnattendedMode

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Outputs


## Related Links

- [Test-UnattendedMode on GitHub](https://github.com/genXdev/genXdev)
