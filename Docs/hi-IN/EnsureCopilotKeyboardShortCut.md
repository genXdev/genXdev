# EnsureCopilotKeyboardShortCut

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> विजुअल स्टूडियो कोड में GitHub Copilot Chat कीबोर्ड शॉर्टकट कॉन्फ़िगर करता है।

## Description

यह फ़ंक्शन सुनिश्चित करता है कि GitHub Copilot Chat की फ़ाइल अटैचमेंट सुविधा के लिए Visual Studio Code में एक उचित कीबोर्ड शॉर्टकट (Ctrl+Shift+Alt+F12) कॉन्फ़िगर किया गया है।

यह किसी भी मौजूदा Copilot अटैचमेंट शॉर्टकट को हटा देगा और उन्हें वर्तमान सही कमांड (github.copilot.chat.attachFile) से बदल देगा।

अधिकतम पैनल को टॉगल करने के लिए Alt+` (बैकटिक) शॉर्टकट भी जोड़ता है।

## Syntax

```powershell
EnsureCopilotKeyboardShortCut [<CommonParameters>]
```

## Examples

### EnsureCopilotKeyboardShortCut

```powershell
EnsureCopilotKeyboardShortCut
```

## Related Links

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-ModuleDefinition.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/EnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-GenXdevCmdLetInIde.md)
