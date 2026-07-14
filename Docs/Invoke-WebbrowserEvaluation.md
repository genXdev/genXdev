---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Invoke-WebbrowserEvaluation

## SYNOPSIS
Executes JavaScript code in a selected web browser tab.

## SYNTAX

```
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-Inspect] [-NoAutoSelectTab] [-Edge] [-Chrome]
 [-Page <Object>] [-ByReference <PSObject>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Executes JavaScript code in a selected browser tab with support for async/await,
promises, and data synchronization between PowerShell and the browser context.
Can execute code from strings, files, or URLs.

This function provides comprehensive access to browser APIs including IndexedDB,
localStorage, sessionStorage, and other web platform features.
It includes
built-in error handling, timeout management, and support for yielding multiple
results from generator functions.

The function uses Chrome DevTools Protocol (CDP) debugging connections, which
provides privileged access that bypasses standard JavaScript security restrictions.
This enables access to storage APIs, cross-origin resources (within the same tab),
and other browser features that would normally be restricted in standard web contexts.

Key capabilities:
- Async/await and Promise support
- Generator functions with yield support
- Data synchronization via $Global:Data
- Privileged access to browser storage APIs
- Bypasses same-origin policy restrictions for current page storage
- IndexedDB enumeration and data extraction
- DOM manipulation and web API access
- Error handling and timeout management

## EXAMPLES

### EXAMPLE 1
```
// Execute simple JavaScript
Invoke-WebbrowserEvaluation "document.title = 'hello world'"
```

### EXAMPLE 2
```

```

// Synchronizing data
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

\[int\] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    Document title : $($Global:Data.title)
    return value   : $Number
";

### EXAMPLE 3
```

```

Support for promises
Select-WebbrowserTab -Force;
Invoke-WebbrowserEvaluation "
    let myList = \[\];
    return new Promise((resolve) =\> {
        let i = 0;
        let a = setInterval(() =\> {
            myList.push(++i);
            if (i == 10) {
                clearInterval(a);
                resolve(myList);
            }
        }, 1000);
    });
"

### EXAMPLE 4
```

```

// Support for promises and more

// this function returns all rows of all tables/datastores of all databases of indexedDb in the selected tab
// beware, not all websites use indexedDb, it could return an empty set

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // enumerate all indexedDB databases
    for (let db of await indexedDB.databases()) {

        // request to open database
        let openRequest = await indexedDB.open(db.name);

        // wait for eventhandlers to be called
        await new Promise((resolve,reject) =\> {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // obtain reference
        let openedDb = openRequest.result;

        // initialize result
        let result = { DatabaseName: db.name, Version: db.version, Stores: \[\] }

        // itterate object store names
        for (let i = 0; i \< openedDb.objectStoreNames.length; i++) {

            // reference
            let storeName = openedDb.objectStoreNames\[i\];

            // start readonly transaction
            let tr = openedDb.transaction(storeName);

            // get objectstore handle
            let store = tr.objectStore(storeName);

            // request all data
            let getRequest = store.getAll();

            // await result
            await new Promise((resolve,reject) =\> {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // add result
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // stream this database contents to the PowerShell pipeline, and continue
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// SECURITY NOTE: This basic example works because the module uses Chrome DevTools
// Protocol (CDP) debugging access, which bypasses normal JavaScript security
// restrictions.
Standard web pages cannot access IndexedDB from other origins,
// but this debugging connection has the same privileges as the website itself.
// See the enhanced example below for more details on security considerations.

### EXAMPLE 5
```

```

// Enhanced IndexedDB enumeration with metadata and error handling

// This enhanced approach provides more comprehensive IndexedDB data extraction including
// database counts, error handling, and metadata.
Unlike the basic example above, this
// version handles security restrictions, provides detailed store information, and
// includes record counts without necessarily retrieving all data.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Enhanced IndexedDB enumeration with comprehensive error handling
    let results = \[\];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Open database with timeout
            let db = await new Promise((resolve, reject) =\> {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () =\> resolve(req.result);
                req.onerror = () =\> reject(req.error);
                setTimeout(() =\> reject(new Error('Database open timeout')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: \[\]
            };

            // Process each object store
            for (let i = 0; i \< db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames\[i\];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // Get record count (faster than retrieving all data)
                    let count = await new Promise((resolve, reject) =\> {
                        let req = store.count();
                        req.onsuccess = () =\> resolve(req.result);
                        req.onerror = () =\> reject(req.error);
                        setTimeout(() =\> reject(new Error('Count timeout')), 3000);
                    });

                    dbResult.Stores.push({
                        StoreName: storeName,
                        RecordCount: count,
                        KeyPath: store.keyPath,
                        AutoIncrement: store.autoIncrement,
                        IndexNames: Array.from(store.indexNames)
                    });

                } catch (storeError) {
                    dbResult.Stores.push({
                        StoreName: storeName,
                        Error: storeError.message
                    });
                }
            }

            results.push(dbResult);
            db.close();

        } catch (dbError) {
            results.push({
                DatabaseName: dbInfo.name,
                Error: dbError.message
            });
        }
    }

    yield results;
";

$EnhancedIndexedDbData | ConvertTo-Json -Depth 10

// Key differences from the basic example:
// 1.
Includes error handling for database access issues
// 2.
Provides metadata (KeyPath, AutoIncrement, IndexNames)
// 3.
Gets record counts without retrieving all data (more efficient)
// 4.
Handles timeout scenarios
// 5.
Returns structured information about database schema
// 6.
More suitable for large databases where retrieving all data would be slow

// SECURITY CONSIDERATIONS FOR INDEXEDDB ACCESS:
// Both examples work because this module uses Chrome DevTools Protocol (CDP) through
// the debugging port, which bypasses standard JavaScript security restrictions:

// Standard JavaScript Limitations:
// - Same-origin policy restricts access to IndexedDB from other origins
// - Some databases may be hidden or protected by browser security features
// - Cross-origin database access is typically blocked
// - Service worker databases may have additional protection

// How this example bypasses restrictions:
// - Uses CDP debugging connection (--remote-debugging-port) for privileged access
// - Executes in the context of the actual page, not a sandboxed environment
// - Has the same permissions as the website itself for its own storage
// - Can access all databases created by the current origin/domain

// Limitations Even With CDP:
// - Cannot access databases from other origins/domains in the same browser
// - Cannot access databases from other browser profiles or private browsing
// - Some browser extensions may create isolated storage not accessible via JavaScript

// Alternative Approaches for Maximum Access:
// - Use GenXdev.Webbrowser with multiple tabs from different origins
// - Combine with file system access to browser profile directories (when possible)
// - Use browser automation to navigate between different domains
// - Consider using CDP Storage domain directly (advanced, not implemented in basic examples)

### EXAMPLE 6
```

```

Support for yielded pipeline results
Select-WebbrowserTab -Force;
Invoke-WebbrowserEvaluation "

    for (let i = 0; i \< 10; i++) {

        await (new Promise((resolve) =\> setTimeout(resolve, 1000)));

        yield i;
    }
";

### EXAMPLE 7
```
Get-ChildItem *.js | Invoke-WebbrowserEvaluation -Edge
```

### EXAMPLE 8
```
ls *.js | et -e
```

## PARAMETERS

### -Scripts
JavaScript code to execute.
Can be string content, file paths, or URLs.
Accepts pipeline input.

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases: FullName

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Inspect
Adds debugger statement before executing to enable debugging.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoAutoSelectTab
Prevents automatic tab selection if no tab is currently selected.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Edge
Selects Microsoft Edge browser for execution.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: e

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Chrome
Selects Google Chrome browser for execution.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: ch

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Page
Browser page object for execution when using ByReference mode.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ByReference
Session reference object when using ByReference mode.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
Requires the Windows 10+ Operating System

## RELATED LINKS
