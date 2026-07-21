# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Tar bort dubbel (konsekutiva) tomma rader från en kodsträng, eventuellt omformaterar utdata.

## Description

Rensar upp källkod eller text genom att slå samman på varandra följande tomma rader till en enda tom rad. Detta förbättrar läsbarheten och följer vanliga konventioner för kodformatering. När växeln -Reformat anges, tillämpas ytterligare formateringsregler för att normalisera kodstrukturen.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | # HomeRegion Cmdletar

## Get-AzHomeRegion

### SYNOPSIS
Visar den hemregion som är konfigurerad för den aktuella användaren.

### SYNTAX


Get-AzHomeRegion []


### BESKRIVNING
Cmdlet:en Get-AzHomeRegion visar Azure hemregion som är inställd för den aktuella användaren.

### EXEMPEL

#### Exempel 1: Hämta hemregion

powershell
Get-AzHomeRegion


## Set-AzHomeRegion

### SYNOPSIS
Anger hemregionen för den aktuella användaren.

### SYNTAX


Set-AzHomeRegion -Region <String>


### BESKRIVNING
Cmdlet:en Set-AzHomeRegion anger Azure hemregion för den aktuella användaren. Du måste ha lämpliga behörigheter för att ändra hemregionen.

### EXEMPEL

#### Exempel 1: Ställ in hemregion

powershell
Set-AzHomeRegion -Region "westus"


## Clear-AzHomeRegion

### SYNOPSIS
Rensar den konfigurerade hemregionen för den aktuella användaren.

### SYNTAX


Clear-AzHomeRegion


### BESKRIVNING
Cmdlet:en Clear-AzHomeRegion rensar Azure hemregion som är inställd för den aktuella användaren. Efter rensning kommer inga regionsspecifika inställningar att tillämpas.

### EXEMPEL

#### Exempel 1: Rensa hemregion

powershell
Clear-AzHomeRegion |
| `-Reformat` | SwitchParameter | — | — | Named | — | Windows PowerShell
Copyright (C) 2013 Microsoft Corporation. Med ensamrätt.

PS C:\Users\Administrator> Get-Help New-NetFirewallRule

NAMN
    New-NetFirewallRule

SYNOPSIS
    Skapar en ny brandväggsregel för inkommande eller utgående trafik, och lägger till regeln i måldatorn.

SYNTAX
    New-NetFirewallRule [-DisplayGroup] <String[]> [-DisplayName] <String> [-Group] <String> [-PolicyStore <String[]>] [-Profile <String>] [-Platform <String[]>] [-Direction <Direction>] [-RemoteAddress <String[]>] [-LocalAddress <String[]>] [-Protocol <String>] [-LocalPort <String[]>] [-RemotePort <String[]>] [-IcmpType <String[]>] [-DynamicTarget <DynamicTransport>] [-Program <String>] [-Package <String>] [-Service <String>] [-InterfaceAlias <String[]>] [-InterfaceType <InterfaceType>] [-LocalUser <String>] [-RemoteUser <String>] [-RemoteMachine <String>] [-Authentication <Authentication>] [-Encryption <Encryption>] [-OverrideBlockRules] [-Action <Action>] [-Description <String>] [-EdgeTraversalPolicy <EdgeTraversal>] [-LooseSourceMapping <Boolean>] [-LocalOnlyMapping <Boolean>] [-CimSession <CimSession[]>] [-ThrottleLimit <Int32>] [-AsJob] [-WhatIf] [-Confirm]  [<CommonParameters>]

BESKRIVNING
    New-NetFirewallRule-cmdleten skapar en brandväggsregel för inkommande eller utgående trafik.
    Regler som skapas innehåller alla egenskaper som används som filter för att matcha trafik, och exekverar en åtgärd som Block eller Allow.

    Denna cmdlet används för att generera en enskild regel eller flera regler. För att skapa flera regler, ange flera värden för en parameter, eller använd parametrar för att lägga till regler för flera villkor som Program, Service, eller Port.

    Skapade regler kan läggas till i den lokala datorn med vanliga parametrar, eller i grupprincipobjekt för avgränsade platser med parametern PolicyStore.

    För att skapa en helt ny regel, ange parametrarna Name, DisplayName och Action.

PARAMETRAR
    -Action <Action>
        Anger åtgärden för regeln. De giltiga värdena är: NotConfigured, Allow eller Block.

        - NotConfigured: Åtgärden har inte konfigurerats.
          Standardåtgärden för en regel är NotConfigured, tills den läggs till i en policy.
        - Allow: Nätverkspaket som matchar regelfiltren tillåts.
        - Block: All trafik som matchar regelfiltren blockeras från att passera.

        Krävs?    true
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Authentication <Authentication>
        Anger att anslutningen måste vara autentiserad. Kravet på autentisering är oberoende av krypteringskravet. De giltiga värdena är:

        - NotRequired: Alla nätverkspaket kan passera. Detta är standard.
        - Required: Nätverkspaket som matchar regelfiltren måste vara autentiserade.
        - NoEncapsulation: Begär att nätverkspaket inte inkapslas.

        Krävs?    false
        Position?    named
        Standardvärde    NotRequired
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -CimSession <CimSession[]>
        Kör cmdleten i en fjärrsession eller på en fjärrdator. Ange ett sessionsobjekt, som utdata från New-CimSession eller Get-CimSession. Standard är den aktuella sessionen på den lokala datorn.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Description <String>
        Anger en beskrivning för regeln.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Direction <Direction>
        Anger om regeln gäller inkommande eller utgående trafik. De giltiga värdena är: Inbound eller Outbound.

        Krävs?    false
        Position?    named
        Standardvärde    Inbound
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -DisplayGroup <String[]>
        Anger visningsgruppen för regeln.

        Krävs?    true
        Position?    1
        Standardvärde    Ingen
        Acceptera pipeline-indata?    True (ByPropertyName)
        Acceptera jokertecken?    false

    -DisplayName <String>
        Anger visningsnamnet för regeln.

        Krävs?    true
        Position?    2
        Standardvärde    Ingen
        Acceptera pipeline-indata?    True (ByPropertyName)
        Acceptera jokertecken?    false

    -DynamicTarget <DynamicTransport>
        Anger transporttypen för en dynamisk anslutning. Denna parameter används för att stödja flera transporttyper som kan ha olika egenskaper dynamiskt. De giltiga värdena är:

        - Any: Alla transporttyper.
        - Default: Standardtransport.
        - ProximityApps: Appar som använder enhetsnärhet.
        - ProximitySharing: Delning som använder enhetsnärhet.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    True (ByPropertyName)
        Acceptera jokertecken?    false

    -EdgeTraversalPolicy <EdgeTraversal>
        Anger politik för kantgenomströmning. De giltiga värdena är:

        - Block: Förhindrar kantgenomströmning.
        - Allow: Tillåter kantgenomströmning.
        - DeferToApp: Bestämmer kantgenomströmning baserat på applikationen.
        - DeferToUser: Bestämmer kantgenomströmning baserat på användaren.

        Krävs?    false
        Position?    named
        Standardvärde    Block
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Encryption <Encryption>
        Anger att anslutningen måste vara krypterad. De giltiga värdena är:

        - NotRequired: Kryptering krävs inte.
        - Required: Kryptering krävs.
        - Dynamic: Dynamisk kryptering.

        Krävs?    false
        Position?    named
        Standardvärde    NotRequired
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Group <String>
        Anger gruppnamnet för regeln.

        Krävs?    true
        Position?    3
        Standardvärde    Ingen
        Acceptera pipeline-indata?    True (ByPropertyName)
        Acceptera jokertecken?    false

    -IcmpType <String[]>
        Anger ICMP-typkoden. Denna parameter anger vilken typ av ICMP-paket som ska matchas.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -InterfaceAlias <String[]>
        Anger aliaset för nätverksgränssnittet.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -InterfaceType <InterfaceType>
        Anger typen av gränssnitt. De giltiga värdena är:

        - Any: Alla gränssnitt.
        - Wired: Trådbundna gränssnitt.
        - Wireless: Trådlösa gränssnitt.
        - RemoteAccess: Fjärråtkomstgränssnitt.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -LocalAddress <String[]>
        Anger den lokala IP-adressen.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -LocalOnlyMapping <Boolean>
        Anger att regeln endast gäller för anslutningar som är mappade till lokala adresser.

        Krävs?    false
        Position?    named
        Standardvärde    False
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -LocalPort <String[]>
        Anger den lokala porten.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -LocalUser <String>
        Anger den lokala användaren.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -LooseSourceMapping <Boolean>
        Anger om källmappning är lös.

        Krävs?    false
        Position?    named
        Standardvärde    False
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -OverrideBlockRules
        Anger att denna regel åsidosätter blockeringsregler.

        Krävs?    false
        Position?    named
        Standardvärde    False
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Package <String>
        Anger paketnamnet för en modern app.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Platform <String[]>
        Anger plattformen för regeln.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -PolicyStore <String[]>
        Anger policylagringsplatsen där regeln ska läggas till.

        Krävs?    false
        Position?    named
        Standardvärde    PersistentStore
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Profile <String>
        Anger profilen för regeln.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Program <String>
        Anger programmets sökväg.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Protocol <String>
        Anger protokollet.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -RemoteAddress <String[]>
        Anger den fjärranslutna IP-adressen.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -RemoteMachine <String>
        Anger fjärrmaskinen.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -RemotePort <String[]>
        Anger fjärrporten.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -RemoteUser <String>
        Anger fjärranvändaren.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Service <String>
        Anger tjänstens namn.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -ThrottleLimit <Int32>
        Anger det maximala antalet samtidiga operationer som kan etableras för att köra cmdleten.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    <CommonParameters>
        Denna cmdlet stöder vanliga parametrar: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable och OutVariable. För mer information, se about_CommonParameters.

    -AsJob
        Kör cmdleten som ett bakgrundsjobb.

    -WhatIf
        Visar vad som skulle hända om cmdleten kördes. Cmdleten körs inte.

    -Confirm
        Frågar om bekräftelse innan cmdleten körs.

RELATERADE LÄNKAR
    Online-version: http://go.microsoft.com/fwlink/?LinkID=217450
    Get-NetFirewallRule
    Set-NetFirewallRule
    Remove-NetFirewallRule
    Rename-NetFirewallRule
    New-NetFirewallRule

KOMMENTARER
    För att se exempel, skriv: "get-help New-NetFirewallRule -examples".
    För mer information, skriv: "get-help New-NetFirewallRule -detailed".
    För teknisk information, skriv: "get-help New-NetFirewallRule -full". |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Skickar källkoden genom funktionen för att ta bort på varandra följande tomma rader.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Tar bort dubbla tomma rader och tillämpar ytterligare formatering.

## Parameter Details

### `-code <String>`

> # HomeRegion Cmdletar

## Get-AzHomeRegion

### SYNOPSIS
Visar den hemregion som är konfigurerad för den aktuella användaren.

### SYNTAX


Get-AzHomeRegion []


### BESKRIVNING
Cmdlet:en Get-AzHomeRegion visar Azure hemregion som är inställd för den aktuella användaren.

### EXEMPEL

#### Exempel 1: Hämta hemregion

powershell
Get-AzHomeRegion


## Set-AzHomeRegion

### SYNOPSIS
Anger hemregionen för den aktuella användaren.

### SYNTAX


Set-AzHomeRegion -Region <String>


### BESKRIVNING
Cmdlet:en Set-AzHomeRegion anger Azure hemregion för den aktuella användaren. Du måste ha lämpliga behörigheter för att ändra hemregionen.

### EXEMPEL

#### Exempel 1: Ställ in hemregion

powershell
Set-AzHomeRegion -Region "westus"


## Clear-AzHomeRegion

### SYNOPSIS
Rensar den konfigurerade hemregionen för den aktuella användaren.

### SYNTAX


Clear-AzHomeRegion


### BESKRIVNING
Cmdlet:en Clear-AzHomeRegion rensar Azure hemregion som är inställd för den aktuella användaren. Efter rensning kommer inga regionsspecifika inställningar att tillämpas.

### EXEMPEL

#### Exempel 1: Rensa hemregion

powershell
Clear-AzHomeRegion

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reformat`

> Windows PowerShell
Copyright (C) 2013 Microsoft Corporation. Med ensamrätt.

PS C:\Users\Administrator> Get-Help New-NetFirewallRule

NAMN
    New-NetFirewallRule

SYNOPSIS
    Skapar en ny brandväggsregel för inkommande eller utgående trafik, och lägger till regeln i måldatorn.

SYNTAX
    New-NetFirewallRule [-DisplayGroup] <String[]> [-DisplayName] <String> [-Group] <String> [-PolicyStore <String[]>] [-Profile <String>] [-Platform <String[]>] [-Direction <Direction>] [-RemoteAddress <String[]>] [-LocalAddress <String[]>] [-Protocol <String>] [-LocalPort <String[]>] [-RemotePort <String[]>] [-IcmpType <String[]>] [-DynamicTarget <DynamicTransport>] [-Program <String>] [-Package <String>] [-Service <String>] [-InterfaceAlias <String[]>] [-InterfaceType <InterfaceType>] [-LocalUser <String>] [-RemoteUser <String>] [-RemoteMachine <String>] [-Authentication <Authentication>] [-Encryption <Encryption>] [-OverrideBlockRules] [-Action <Action>] [-Description <String>] [-EdgeTraversalPolicy <EdgeTraversal>] [-LooseSourceMapping <Boolean>] [-LocalOnlyMapping <Boolean>] [-CimSession <CimSession[]>] [-ThrottleLimit <Int32>] [-AsJob] [-WhatIf] [-Confirm]  [<CommonParameters>]

BESKRIVNING
    New-NetFirewallRule-cmdleten skapar en brandväggsregel för inkommande eller utgående trafik.
    Regler som skapas innehåller alla egenskaper som används som filter för att matcha trafik, och exekverar en åtgärd som Block eller Allow.

    Denna cmdlet används för att generera en enskild regel eller flera regler. För att skapa flera regler, ange flera värden för en parameter, eller använd parametrar för att lägga till regler för flera villkor som Program, Service, eller Port.

    Skapade regler kan läggas till i den lokala datorn med vanliga parametrar, eller i grupprincipobjekt för avgränsade platser med parametern PolicyStore.

    För att skapa en helt ny regel, ange parametrarna Name, DisplayName och Action.

PARAMETRAR
    -Action <Action>
        Anger åtgärden för regeln. De giltiga värdena är: NotConfigured, Allow eller Block.

        - NotConfigured: Åtgärden har inte konfigurerats.
          Standardåtgärden för en regel är NotConfigured, tills den läggs till i en policy.
        - Allow: Nätverkspaket som matchar regelfiltren tillåts.
        - Block: All trafik som matchar regelfiltren blockeras från att passera.

        Krävs?    true
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Authentication <Authentication>
        Anger att anslutningen måste vara autentiserad. Kravet på autentisering är oberoende av krypteringskravet. De giltiga värdena är:

        - NotRequired: Alla nätverkspaket kan passera. Detta är standard.
        - Required: Nätverkspaket som matchar regelfiltren måste vara autentiserade.
        - NoEncapsulation: Begär att nätverkspaket inte inkapslas.

        Krävs?    false
        Position?    named
        Standardvärde    NotRequired
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -CimSession <CimSession[]>
        Kör cmdleten i en fjärrsession eller på en fjärrdator. Ange ett sessionsobjekt, som utdata från New-CimSession eller Get-CimSession. Standard är den aktuella sessionen på den lokala datorn.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Description <String>
        Anger en beskrivning för regeln.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Direction <Direction>
        Anger om regeln gäller inkommande eller utgående trafik. De giltiga värdena är: Inbound eller Outbound.

        Krävs?    false
        Position?    named
        Standardvärde    Inbound
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -DisplayGroup <String[]>
        Anger visningsgruppen för regeln.

        Krävs?    true
        Position?    1
        Standardvärde    Ingen
        Acceptera pipeline-indata?    True (ByPropertyName)
        Acceptera jokertecken?    false

    -DisplayName <String>
        Anger visningsnamnet för regeln.

        Krävs?    true
        Position?    2
        Standardvärde    Ingen
        Acceptera pipeline-indata?    True (ByPropertyName)
        Acceptera jokertecken?    false

    -DynamicTarget <DynamicTransport>
        Anger transporttypen för en dynamisk anslutning. Denna parameter används för att stödja flera transporttyper som kan ha olika egenskaper dynamiskt. De giltiga värdena är:

        - Any: Alla transporttyper.
        - Default: Standardtransport.
        - ProximityApps: Appar som använder enhetsnärhet.
        - ProximitySharing: Delning som använder enhetsnärhet.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    True (ByPropertyName)
        Acceptera jokertecken?    false

    -EdgeTraversalPolicy <EdgeTraversal>
        Anger politik för kantgenomströmning. De giltiga värdena är:

        - Block: Förhindrar kantgenomströmning.
        - Allow: Tillåter kantgenomströmning.
        - DeferToApp: Bestämmer kantgenomströmning baserat på applikationen.
        - DeferToUser: Bestämmer kantgenomströmning baserat på användaren.

        Krävs?    false
        Position?    named
        Standardvärde    Block
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Encryption <Encryption>
        Anger att anslutningen måste vara krypterad. De giltiga värdena är:

        - NotRequired: Kryptering krävs inte.
        - Required: Kryptering krävs.
        - Dynamic: Dynamisk kryptering.

        Krävs?    false
        Position?    named
        Standardvärde    NotRequired
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Group <String>
        Anger gruppnamnet för regeln.

        Krävs?    true
        Position?    3
        Standardvärde    Ingen
        Acceptera pipeline-indata?    True (ByPropertyName)
        Acceptera jokertecken?    false

    -IcmpType <String[]>
        Anger ICMP-typkoden. Denna parameter anger vilken typ av ICMP-paket som ska matchas.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -InterfaceAlias <String[]>
        Anger aliaset för nätverksgränssnittet.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -InterfaceType <InterfaceType>
        Anger typen av gränssnitt. De giltiga värdena är:

        - Any: Alla gränssnitt.
        - Wired: Trådbundna gränssnitt.
        - Wireless: Trådlösa gränssnitt.
        - RemoteAccess: Fjärråtkomstgränssnitt.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -LocalAddress <String[]>
        Anger den lokala IP-adressen.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -LocalOnlyMapping <Boolean>
        Anger att regeln endast gäller för anslutningar som är mappade till lokala adresser.

        Krävs?    false
        Position?    named
        Standardvärde    False
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -LocalPort <String[]>
        Anger den lokala porten.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -LocalUser <String>
        Anger den lokala användaren.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -LooseSourceMapping <Boolean>
        Anger om källmappning är lös.

        Krävs?    false
        Position?    named
        Standardvärde    False
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -OverrideBlockRules
        Anger att denna regel åsidosätter blockeringsregler.

        Krävs?    false
        Position?    named
        Standardvärde    False
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Package <String>
        Anger paketnamnet för en modern app.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Platform <String[]>
        Anger plattformen för regeln.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -PolicyStore <String[]>
        Anger policylagringsplatsen där regeln ska läggas till.

        Krävs?    false
        Position?    named
        Standardvärde    PersistentStore
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Profile <String>
        Anger profilen för regeln.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Program <String>
        Anger programmets sökväg.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Protocol <String>
        Anger protokollet.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -RemoteAddress <String[]>
        Anger den fjärranslutna IP-adressen.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -RemoteMachine <String>
        Anger fjärrmaskinen.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -RemotePort <String[]>
        Anger fjärrporten.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -RemoteUser <String>
        Anger fjärranvändaren.

        Krävs?    false
        Position?    named
        Standardvärde    Any
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -Service <String>
        Anger tjänstens namn.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    -ThrottleLimit <Int32>
        Anger det maximala antalet samtidiga operationer som kan etableras för att köra cmdleten.

        Krävs?    false
        Position?    named
        Standardvärde    Ingen
        Acceptera pipeline-indata?    False
        Acceptera jokertecken?    false

    <CommonParameters>
        Denna cmdlet stöder vanliga parametrar: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable och OutVariable. För mer information, se about_CommonParameters.

    -AsJob
        Kör cmdleten som ett bakgrundsjobb.

    -WhatIf
        Visar vad som skulle hända om cmdleten kördes. Cmdleten körs inte.

    -Confirm
        Frågar om bekräftelse innan cmdleten körs.

RELATERADE LÄNKAR
    Online-version: http://go.microsoft.com/fwlink/?LinkID=217450
    Get-NetFirewallRule
    Set-NetFirewallRule
    Remove-NetFirewallRule
    Rename-NetFirewallRule
    New-NetFirewallRule

KOMMENTARER
    För att se exempel, skriv: "get-help New-NetFirewallRule -examples".
    För mer information, skriv: "get-help New-NetFirewallRule -detailed".
    För teknisk information, skriv: "get-help New-NetFirewallRule -full".

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-ArrayTemplate.md)
