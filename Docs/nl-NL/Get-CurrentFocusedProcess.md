# Get-CurrentFocusedProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Haalt het procesobject op van het venster dat momenteel de toetsenbordfocus heeft.

## Description

* Deze cmdlet gebruikt Windows API-aanroepen via P/Invoke om het Procesobject te identificeren en retourneren dat is gekoppeld aan het huidige actieve venster.
* Het maakt gebruik van de User32.dll-functies GetForegroundWindow en GetWindowThreadProcessId om te bepalen welk venster de focus heeft en het bijbehorende proces-ID op te halen.

## Syntax

```powershell
Get-CurrentFocusedProcess [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$focusedProcess = Get-CurrentFocusedProcess
Write-Host "Active window process: $($focusedProcess.ProcessName)"
```

Haalt het procesobject op voor het venster dat momenteel toetsenbordfocus heeft.

## Related Links

- [Get-CurrentFocusedProcess on GitHub](https://github.com/genXdev/genXdev)
