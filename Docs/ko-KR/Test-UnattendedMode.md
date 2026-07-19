# Test-UnattendedMode

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> PowerShell이 무인/자동 모드에서 실행 중인지 감지합니다.

## Description

* PowerShell이 무인 또는 자동화된 컨텍스트에서 실행 중인지 확인하기 위해 다양한 지표를 분석합니다.
* 파이프라인 분석, 환경 변수, 콘솔 리디렉션 및 호출 컨텍스트를 확인합니다.
* CallersInvocation이 제공되면 파이프라인 위치와 개수를 분석하여 자동화된 파이프라인 또는 스크립트 실행을 감지합니다.

## Syntax

```powershell
Test-UnattendedMode [[-CallersInvocation] <InvocationInfo>] [-Detailed] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallersInvocation` | InvocationInfo | — | — | 0 | — | 호출자의 파이프라인 및 자동화 감지를 위한 호출 정보 |
| `-Detailed` | SwitchParameter | — | — | Named | `False` | Return detailed analysis object instead of simple boolean |

## Examples

### Example 1

```powershell
Test-UnattendedMode
```

무인 모드로 실행 중인지 여부를 나타내는 부울 값을 반환합니다.

### Example 2

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation
```

호출자의 호출 컨텍스트를 분석하고 불리언 값을 반환합니다.

### Example 3

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation -Detailed
```

모든 지표에 대한 상세 분석 객체를 반환합니다.

### Example 4

```powershell
function My-Function {
    $isUnattended = Test-UnattendedMode -CallersInvocation $MyInvocation
    if ($isUnattended) {
        Write-Verbose "Running in unattended mode"
    }
}
```

함수에서 무인 모드를 확인하는 사용 예입니다.

## Outputs


## Related Links

- [Test-UnattendedMode on GitHub](https://github.com/genXdev/genXdev)
