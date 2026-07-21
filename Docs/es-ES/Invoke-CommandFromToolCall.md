# Invoke-CommandFromToolCall

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Ejecuta una llamada de herramienta con validación y filtrado de parámetros.

## Description

Esta función procesa llamadas a herramientas validando argumentos, filtrando parámetros y ejecutando devoluciones de llamada con un manejo de confirmación adecuado. Admite tanto bloques de script como devoluciones de llamada de información de comandos.

## Syntax

```powershell
Invoke-CommandFromToolCall -ToolCall <Collections.Hashtable> [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ForceAsText] [-Functions <Collections.Hashtable[]>] [-NoConfirmationToolFunctionNames <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ToolCall` | Collections.Hashtable | ✅ | — | 0 | — | .DESCRIPTION
    El cmdlet Get-Credential crea un objeto de credenciales para un nombre de usuario y contraseña especificados. Puede usar el objeto de credenciales en operaciones de seguridad.

    El cmdlet Get-Credential solicita al usuario una contraseña o un nombre de usuario y contraseña. Puede usar el parámetro Message para especificar un mensaje personalizado en el mensaje de la línea de comandos.

    A partir de Windows PowerShell 3.0, puede usar el parámetro UserName para especificar un nombre de usuario de forma implícita sin un mensaje.

    Comenzando con Windows PowerShell 3.0 en Windows Server 2012, puede usar el parámetro SupportEEAR para evitar que Get-Credential muestre un mensaje que incluye un valor AuthNo.

    Nota: El objeto PSCredential que almacena la contraseña la mantiene como una cadena segura. Para obtener más información sobre las cadenas seguras, consulte la ayuda de SecureString.

.PARÁMETROS
    UserName
        Especifica el nombre de usuario. El nombre de usuario debe tener el formato NombreDeDominio\NombreDeUsuario. Por ejemplo: Domain01\Admin01

        Nota: Si escribe un nombre de usuario sin un dominio, PowerShell agrega el nombre del equipo local al nombre de usuario.

        Cuando usa el parámetro UserName, se le solicita la contraseña.

        Este parámetro se introdujo en Windows PowerShell 3.0.

    Message
        Especifica un mensaje que aparece en el mensaje de solicitud de contraseña. El valor predeterminado es "Credencial". Este parámetro está diseñado para su uso en funciones y scripts.

    SupportEEAR
        Indica que el mensaje de credenciales omite el valor AuthNo que aparece en algunos mensajes de credenciales cuando se usa la Autenticación de la Interfaz de Usuario Extensible (EAP). Este parámetro se introdujo en Windows PowerShell 3.0 en Windows Server 2012.

.ENTRADA
    Ninguno
        No puede pasar objetos a este cmdlet.

.SALIDA
    System.Management.Automation.PSCredential
        Get-Credential devuelve un objeto de credenciales.

.EJEMPLO 1
    $c = Get-Credential
    Este comando obtiene credenciales y las guarda en la variable $c.

.EJEMPLO 2
    $c = Get-Credential -UserName Domain01\User01
    Este comando obtiene credenciales para el usuario especificado y las guarda en la variable $c.

.EJEMPLO 3
    $c = Get-Credential -Message "Introduzca su contraseña para acceder al archivo compartido"
    Este comando obtiene credenciales y las guarda en la variable $c. Muestra el mensaje especificado. |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Matriz de definiciones de funciones |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Matriz de definiciones de comandos de PowerShell para usar como herramientas |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Matriz de nombres de comandos que no requieren confirmación |
| `-ForceAsText` | SwitchParameter | — | — | Named | — | Forzar salida como texto |

## Examples

### Invoke-CommandFromToolCall -ToolCall $toolCall -Functions $functions `     -ExposedCmdLets $exposedCmdlets

```powershell
Invoke-CommandFromToolCall -ToolCall $toolCall -Functions $functions `
    -ExposedCmdLets $exposedCmdlets
```

### $result = Invoke-CommandFromToolCall $toolCall $functions -ForceAsText

```powershell
$result = Invoke-CommandFromToolCall $toolCall $functions -ForceAsText
```

## Parameter Details

### `-ToolCall <Collections.Hashtable>`

> .DESCRIPTION
    El cmdlet Get-Credential crea un objeto de credenciales para un nombre de usuario y contraseña especificados. Puede usar el objeto de credenciales en operaciones de seguridad.

    El cmdlet Get-Credential solicita al usuario una contraseña o un nombre de usuario y contraseña. Puede usar el parámetro Message para especificar un mensaje personalizado en el mensaje de la línea de comandos.

    A partir de Windows PowerShell 3.0, puede usar el parámetro UserName para especificar un nombre de usuario de forma implícita sin un mensaje.

    Comenzando con Windows PowerShell 3.0 en Windows Server 2012, puede usar el parámetro SupportEEAR para evitar que Get-Credential muestre un mensaje que incluye un valor AuthNo.

    Nota: El objeto PSCredential que almacena la contraseña la mantiene como una cadena segura. Para obtener más información sobre las cadenas seguras, consulte la ayuda de SecureString.

.PARÁMETROS
    UserName
        Especifica el nombre de usuario. El nombre de usuario debe tener el formato NombreDeDominio\NombreDeUsuario. Por ejemplo: Domain01\Admin01

        Nota: Si escribe un nombre de usuario sin un dominio, PowerShell agrega el nombre del equipo local al nombre de usuario.

        Cuando usa el parámetro UserName, se le solicita la contraseña.

        Este parámetro se introdujo en Windows PowerShell 3.0.

    Message
        Especifica un mensaje que aparece en el mensaje de solicitud de contraseña. El valor predeterminado es "Credencial". Este parámetro está diseñado para su uso en funciones y scripts.

    SupportEEAR
        Indica que el mensaje de credenciales omite el valor AuthNo que aparece en algunos mensajes de credenciales cuando se usa la Autenticación de la Interfaz de Usuario Extensible (EAP). Este parámetro se introdujo en Windows PowerShell 3.0 en Windows Server 2012.

.ENTRADA
    Ninguno
        No puede pasar objetos a este cmdlet.

.SALIDA
    System.Management.Automation.PSCredential
        Get-Credential devuelve un objeto de credenciales.

.EJEMPLO 1
    $c = Get-Credential
    Este comando obtiene credenciales y las guarda en la variable $c.

.EJEMPLO 2
    $c = Get-Credential -UserName Domain01\User01
    Este comando obtiene credenciales para el usuario especificado y las guarda en la variable $c.

.EJEMPLO 3
    $c = Get-Credential -Message "Introduzca su contraseña para acceder al archivo compartido"
    Este comando obtiene credenciales y las guarda en la variable $c. Muestra el mensaje especificado.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> Matriz de definiciones de funciones

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Matriz de definiciones de comandos de PowerShell para usar como herramientas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Matriz de nombres de comandos que no requieren confirmación

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceAsText`

> Forzar salida como texto

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Initialize-SearchPaths.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/WriteFileOutput.md)
