<##############################################################################
Part of PowerShell module : GenXdev.Data.SQLite
Original cmdlet filename  : Get-SQLiteSchema.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Retrieves the complete schema information from a SQLite database.

.DESCRIPTION
This function queries the sqlite_master table to obtain the complete schema
definition of a SQLite database, including tables, views, indexes and triggers.
It accepts either a connection string or a direct path to the database file.

.PARAMETER ConnectionString
The SQLite connection string that specifies the database location and any
additional connection parameters.

.PARAMETER DatabaseFilePath
The direct filesystem path to the SQLite database file.

.EXAMPLE
Get-SQLiteSchema -DatabaseFilePath "C:\Databases\inventory.db"

.EXAMPLE
Get-SQLiteSchema -ConnectionString "Data Source=C:\Databases\inventory.db;Version=3;"
#>
function Get-SQLiteSchema {

    [CmdletBinding(DefaultParameterSetName = 'Default')]

    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQLite database.'
        )]
        [string]$ConnectionString,

        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseFilePath',
            HelpMessage = 'The path to the SQLite database file.'
        )]
        [string]$DatabaseFilePath
    )

    begin {

        # output verbose information about the selected parameter set
        Microsoft.PowerShell.Utility\Write-Verbose "Using parameter set: $($PSCmdlet.ParameterSetName)"
    }


    process {

        # prepare the query to retrieve the complete database schema
        $PSBoundParameters['Queries'] = 'SELECT * FROM sqlite_master'

        # execute the schema query using the existing Invoke-SQLiteQuery function
        GenXdev\Invoke-SQLiteQuery @PSBoundParameters
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SQLite
Original cmdlet filename  : Get-SQLiteTableColumnData.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Retrieves data from a specific column in a SQLite database table.

.DESCRIPTION
This function provides a convenient way to extract data from a single column in a
SQLite database table. It supports two connection methods: direct database file
path or connection string. The function includes options to limit the number of
returned records and uses proper SQLite query construction for optimal
performance.

.PARAMETER ConnectionString
The connection string to connect to the SQLite database. This parameter is
mutually exclusive with DatabaseFilePath.

.PARAMETER DatabaseFilePath
The file path to the SQLite database file. This parameter is mutually exclusive
with ConnectionString.

.PARAMETER TableName
The name of the table from which to retrieve the column data.

.PARAMETER ColumnName
The name of the column whose data should be retrieved.

.PARAMETER Count
The maximum number of records to return. Default is 100. Use -1 to return all
records without limit.

.EXAMPLE
Get-SQLiteTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `
    -TableName "Employees" `
    -ColumnName "Email" `
    -Count 10

.EXAMPLE
Get-SQLiteTableColumnData "C:\MyDb.sqlite" "Employees" "Email"
#>
function Get-SQLiteTableColumnData {

    [CmdletBinding(DefaultParameterSetName = 'Default')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQLite database'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ConnectionString,
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseFilePath',
            HelpMessage = 'The path to the SQLite database file'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $DatabaseFilePath,
        [Parameter(
            Position = 1,
            Mandatory = $true,
            HelpMessage = 'The name of the table to query'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $TableName,
        [Parameter(
            Position = 2,
            Mandatory = $true,
            HelpMessage = 'The name of the column to retrieve'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ColumnName,
        [Parameter(
            Position = 3,
            Mandatory = $false,
            HelpMessage = 'Number of records to return. Default 100. Use -1 for all'
        )]
        [int] $Count = 100
    )

    begin {

        # log the start of the operation with table and column details
        Microsoft.PowerShell.Utility\Write-Verbose "Starting data retrieval for column '$ColumnName' from table '$TableName'"
    }


    process {

        # construct the appropriate SQL query based on whether a limit is needed
        $query = if ($Count -eq -1) {
            "SELECT $ColumnName FROM $TableName"
        }
        else {
            "SELECT $ColumnName FROM $TableName LIMIT $Count"
        }

        # log the constructed query for debugging
        Microsoft.PowerShell.Utility\Write-Verbose "Executing SQL query: $query"

        # prepare parameters for Invoke-SQLiteQuery and execute the query
        $PSBoundParameters['Queries'] = $query
        GenXdev\Invoke-SQLiteQuery @PSBoundParameters
    }

    end {

        # log completion of the operation
        Microsoft.PowerShell.Utility\Write-Verbose 'Column data retrieval completed successfully'
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SQLite
Original cmdlet filename  : Get-SQLiteTableData.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Retrieves data from a SQLite database table with optional record limiting.

.DESCRIPTION
This function queries data from a SQLite database table using either a connection
string or database file path. It provides flexibility in connecting to the
database and controlling the amount of data retrieved through the Count parameter.

.PARAMETER ConnectionString
Specifies the SQLite connection string in the format:
"Data Source=path_to_database_file"

.PARAMETER DatabaseFilePath
Specifies the full file system path to the SQLite database file.

.PARAMETER TableName
Specifies the name of the table to query data from. The table must exist in the
database.

.PARAMETER Count
Specifies the maximum number of records to return. Default is 100.
Use -1 to return all records. Must be -1 or a positive integer.

.EXAMPLE
Get-SQLiteTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50

.EXAMPLE
Get-SQLiteTableData "C:\data\users.db" "Employees"
#>
function Get-SQLiteTableData {

    [CmdletBinding(DefaultParameterSetName = 'Default')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQLite database.'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$ConnectionString,

        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseFilePath',
            HelpMessage = 'The path to the SQLite database file.'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('dbpath', 'indexpath')]
        [string]$DatabaseFilePath,

        [Parameter(
            Position = 1,
            Mandatory = $true,
            HelpMessage = 'The name of the table to query data from.'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$TableName,

        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'The maximum number of records to return. -1 for all.'
        )]
        [ValidateRange(-1, [int]::MaxValue)]
        [int]$Count = 100
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose "Starting Get-SQLiteTableData for table: $TableName"
        Microsoft.PowerShell.Utility\Write-Verbose "Record limit set to: $(if($Count -eq -1){'unlimited'}else{$Count})"
    }


    process {

        # construct query based on whether we want all records or a limited set
        $query = if ($Count -eq -1) {
            "SELECT * FROM $TableName"
        }
        else {
            "SELECT * FROM $TableName LIMIT $Count"
        }

        Microsoft.PowerShell.Utility\Write-Verbose "Executing query: $query"

        # add the constructed query to the parameter set for Invoke-SQLiteQuery
        $PSBoundParameters['Queries'] = $query

        # execute the query and return results through the SQLite provider
        GenXdev\Invoke-SQLiteQuery @PSBoundParameters
    }

    end {

        Microsoft.PowerShell.Utility\Write-Verbose "Completed querying table: $TableName"
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SQLite
Original cmdlet filename  : Get-SQLiteTables.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Retrieves a list of table names from a SQLite database.

.DESCRIPTION
Queries the sqlite_master system table to retrieve all user-defined table names
from a SQLite database. Supports connecting via either a direct connection string
or a database file path. Returns the table names as a collection of strings.

.PARAMETER ConnectionString
The full connection string to connect to the SQLite database. Should include the
Data Source and Version parameters at minimum.

.PARAMETER DatabaseFilePath
The full filesystem path to the SQLite database file. The function will create
an appropriate connection string internally.

.EXAMPLE
Get-SQLiteTables -DatabaseFilePath "C:\Databases\Inventory.sqlite"
Returns all table names from the specified database file

.EXAMPLE
Get-SQLiteTables -ConnectionString "Data Source=C:\DB\Users.sqlite;Version=3;"
Returns all table names using a custom connection string
#>

function Get-SQLiteTables {
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [CmdletBinding(DefaultParameterSetName = 'Default')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQLite database.'
        )]
        [string]$ConnectionString,

        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseFilePath',
            HelpMessage = 'The path to the SQLite database file.'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$DatabaseFilePath
    )

    begin {

        # log the start of table retrieval operation
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting SQLite table name retrieval operation'
    }


    process {

        # define the query to get all table names from sqlite_master
        $PSBoundParameters['Queries'] = 'SELECT name FROM sqlite_master ' +
        "WHERE type='table'"

        # execute query using the inherited connection parameters
        Microsoft.PowerShell.Utility\Write-Verbose 'Executing query to retrieve table names'
        GenXdev\Invoke-SQLiteQuery @PSBoundParameters
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SQLite
Original cmdlet filename  : Get-SQLiteTableSchema.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Retrieves the schema information for a specified SQLite table.

.DESCRIPTION
This function queries the SQLite database to get detailed schema information for
a specified table. It uses the SQLite PRAGMA table_info command to return column
definitions including names, types, nullable status, and default values.

.PARAMETER ConnectionString
Specifies the SQLite connection string in the format:
"Data Source=path_to_database_file"

.PARAMETER DatabaseFilePath
Specifies the direct file path to the SQLite database file. This is converted
internally to a connection string.

.PARAMETER TableName
Specifies the name of the table for which to retrieve schema information.

.EXAMPLE
Get-SQLiteTableSchema -DatabaseFilePath "C:\Databases\mydb.sqlite" `
    -TableName "Users"

.EXAMPLE
Get-SQLiteTableSchema -ConnectionString "Data Source=C:\Databases\mydb.sqlite" `
    -TableName "Products"
#>
function Get-SQLiteTableSchema {

    [CmdletBinding(DefaultParameterSetName = 'Default')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQLite database'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$ConnectionString,

        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseFilePath',
            HelpMessage = 'The path to the SQLite database file'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('dbpath', 'indexpath')]
        [string]$DatabaseFilePath,

        [Parameter(
            Position = 1,
            Mandatory = $true,
            HelpMessage = 'The name of the table'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$TableName
    )

    begin {

        # log the start of schema retrieval operation
        Microsoft.PowerShell.Utility\Write-Verbose "Preparing to retrieve schema for table '$TableName'"
    }


    process {

        # construct the PRAGMA query to get detailed table column information
        $PSBoundParameters['Queries'] = "PRAGMA table_info($TableName)"

        # log the execution of the schema query
        Microsoft.PowerShell.Utility\Write-Verbose 'Executing schema query against SQLite database'

        # execute the query and return results using existing Invoke-SQLiteQuery
        GenXdev\Invoke-SQLiteQuery @PSBoundParameters
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SQLite
Original cmdlet filename  : Get-SQLiteTransaction.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

# don't remove this line [dontrefactor]

<#
.SYNOPSIS
Creates and returns a SQLite transaction object for batch operations.

.DESCRIPTION
Creates a SQLite database connection and transaction object that can be used
for batch operations. The caller is responsible for committing or rolling back
the transaction. The connection will be automatically created if the database
file doesn't exist.

.PARAMETER ConnectionString
The SQLite connection string for database access.

.PARAMETER DatabaseFilePath
The file path to the SQLite database. Will be converted to a connection string.

.PARAMETER IsolationLevel
Transaction isolation level. Defaults to ReadCommitted.

.PARAMETER CreateDatabaseIfNotExists
Whether to create the database file if it doesn't exist. Defaults to true.

.PARAMETER ForceConsent
Force a consent prompt even if a preference is already set for SQLite package
installation, overriding any saved consent preferences.

.PARAMETER ConsentToThirdPartySoftwareInstallation
Automatically consent to third-party software installation and set a persistent
preference flag for SQLite package, bypassing interactive consent prompts.

.EXAMPLE
$transaction = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db"
try {
    Invoke-SQLiteQuery -Transaction $transaction -Queries "INSERT INTO Users..."
    Invoke-SQLiteQuery -Transaction $transaction -Queries "UPDATE Users..."
    $transaction.Commit()
} catch {
    $transaction.Rollback()
    throw
} finally {
    $transaction.Connection.Close()
}

.EXAMPLE
$transaction = Get-SQLiteTransaction -ConnectionString "Data Source=C:\data.db"

.EXAMPLE
$transaction = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db" -ConsentToThirdPartySoftwareInstallation
#>
function Get-SQLiteTransaction {

    [CmdletBinding(DefaultParameterSetName = 'DatabaseFilePath')]
    [Alias('getsqltx', 'newsqltx')]
    param (
        [Parameter(
            Position = 0,
            Mandatory,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQLite database.'
        )]
        [string]$ConnectionString,

        [Parameter(
            Position = 0,
            Mandatory,
            ParameterSetName = 'DatabaseFilePath',
            HelpMessage = 'The path to the SQLite database file.'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('dbpath', 'indexpath')]
        [string]$DatabaseFilePath,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Transaction isolation level.'
        )]
        [ValidateSet('ReadCommitted', 'ReadUncommitted', 'RepeatableRead', 'Serializable', 'Snapshot', 'Chaos')]
        [string]$IsolationLevel = "ReadCommitted",

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether to create the database file if it does not exist.'
        )]
        [bool]$CreateDatabaseIfNotExists = $true,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force a consent prompt even if preference is set for SQLite package installation.'
        )]
        [switch] $ForceConsent,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Automatically consent to third-party software installation and set persistent flag for SQLite package.'
        )]
        [switch] $ConsentToThirdPartySoftwareInstallation
    )

    begin {
        # load SQLite client assembly with embedded consent using Copy-IdenticalParamValues
        $ensureParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\EnsureNuGetAssembly' `
            -DefaultValues (
            Microsoft.PowerShell.Utility\Get-Variable -Scope Local `
                -ErrorAction SilentlyContinue
        )

        # Set specific parameters for SQLite package
        $ensureParams['PackageKey'] = 'System.Data.Sqlite'
        $ensureParams['Description'] = 'SQLite database client library required for database operations'
        $ensureParams['Publisher'] = 'SQLite Development Team'

        GenXdev\EnsureNuGetAssembly @ensureParams

        # initialize connection string from file path if provided
        if ($PSCmdlet.ParameterSetName -eq 'DatabaseFilePath') {
            $expandedPath = GenXdev\Expand-Path $DatabaseFilePath
            # create database if it doesn't exist and CreateDatabaseIfNotExists is true
            if ($CreateDatabaseIfNotExists -and -not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $expandedPath)) {
                Microsoft.PowerShell.Utility\Write-Verbose "Creating database file: $expandedPath"

                # use Copy-IdenticalParamValues to pass compatible parameters to New-SQLiteDatabase
                $params = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $PSBoundParameters `
                    -FunctionName 'GenXdev\New-SQLiteDatabase' `
                    -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

                GenXdev\New-SQLiteDatabase @params
            }

            $connString = "Data Source=$expandedPath"
        }
        else {
            $connString = $ConnectionString
        }

        Microsoft.PowerShell.Utility\Write-Verbose "Creating SQLite transaction with connection string: $connString"
    }

    process {
        try {
            # establish database connection
            $connection = Microsoft.PowerShell.Utility\New-Object System.Data.SQLite.SQLiteConnection($connString)
            $connection.Open()
            Microsoft.PowerShell.Utility\Write-Verbose 'SQLite connection opened successfully'

            # begin transaction with specified isolation
            $transaction = $connection.BeginTransaction($IsolationLevel)
            Microsoft.PowerShell.Utility\Write-Verbose "Transaction started with $IsolationLevel isolation level"

            # return the transaction object
            return $transaction
        }
        catch {
            if ($null -ne $connection -and $connection.State -eq 'Open') {
                $connection.Close()
            }
            throw $_
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SQLite
Original cmdlet filename  : Get-SQLiteViewColumnData.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Retrieves column data from a SQLite view with optional record limiting.

.DESCRIPTION
Executes a SELECT query against a specified SQLite view to retrieve data from a
single column. Supports connecting via either a connection string or database file
path. Allows limiting the number of returned records or retrieving all records.

.PARAMETER ConnectionString
The SQLite database connection string. This parameter is mutually exclusive with
DatabaseFilePath.

.PARAMETER DatabaseFilePath
The full path to the SQLite database file. This parameter is mutually exclusive
with ConnectionString.

.PARAMETER ViewName
The name of the SQLite view to query data from.

.PARAMETER ColumnName
The name of the column within the view to retrieve data from.

.PARAMETER Count
The maximum number of records to return. Use -1 to return all records. Defaults
to 100 if not specified.

.EXAMPLE
Get-SQLiteViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `
    -ViewName "CustomersView" `
    -ColumnName "Email" `
    -Count 50

.EXAMPLE
Get-SQLiteViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"
#>
function Get-SQLiteViewColumnData {

    [CmdletBinding(DefaultParameterSetName = 'Default')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQLite database.'
        )]
        [string]$ConnectionString,
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseFilePath',
            HelpMessage = 'The path to the SQLite database file.'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('dbpath', 'indexpath')]
        [string]$DatabaseFilePath,
        [Parameter(
            Position = 1,
            Mandatory = $true,
            HelpMessage = 'The name of the view.'
        )]
        [string]$ViewName,
        [Parameter(
            Position = 2,
            Mandatory = $true,
            HelpMessage = 'The name of the column.'
        )]
        [string]$ColumnName,
        [Parameter(
            Position = 3,
            Mandatory = $false,
            HelpMessage = 'The number of records to return. Default is 100. -1 for all.'
        )]
        [int]$Count = 100
    )

    begin {

        # log the start of the operation
        Microsoft.PowerShell.Utility\Write-Verbose "Starting Get-SQLiteViewColumnData for view '$ViewName'"
    }


    process {

        # determine if we need to limit the results or get all records
        if ($Count -eq -1) {
            # construct query to get all records
            $PSBoundParameters['Queries'] = "SELECT $ColumnName FROM $ViewName"
            Microsoft.PowerShell.Utility\Write-Verbose "Querying all records from view '$ViewName'"
        }
        else {
            # construct query with LIMIT clause
            $PSBoundParameters['Queries'] = "SELECT $ColumnName FROM $ViewName LIMIT $Count"
            Microsoft.PowerShell.Utility\Write-Verbose "Querying $Count records from view '$ViewName'"
        }

        # execute the query using the existing Invoke-SQLiteQuery cmdlet
        GenXdev\Invoke-SQLiteQuery @PSBoundParameters
    }

    end {

        # log completion of the operation
        Microsoft.PowerShell.Utility\Write-Verbose "Completed Get-SQLiteViewColumnData for view '$ViewName'"
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SQLite
Original cmdlet filename  : Get-SQLiteViewData.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Retrieves data from a SQLite database view with optional record limiting.

.DESCRIPTION
Queries a SQLite database view using either a connection string or database file
path. The function supports limiting the number of returned records and provides
verbose output for tracking query execution.

.PARAMETER ConnectionString
The connection string to connect to the SQLite database. This parameter is
mutually exclusive with DatabaseFilePath.

.PARAMETER DatabaseFilePath
The file path to the SQLite database file. This parameter is mutually exclusive
with ConnectionString.

.PARAMETER ViewName
The name of the view from which to retrieve data.

.PARAMETER Count
The maximum number of records to return. Use -1 to return all records.
Defaults to 100 if not specified.

.EXAMPLE
Get-SQLiteViewData -DatabaseFilePath "C:\MyDb.sqlite" `
    -ViewName "CustomerView" `
    -Count 50

.EXAMPLE
Get-SQLiteViewData "C:\MyDb.sqlite" "CustomerView"
#>
function Get-SQLiteViewData {

    [CmdletBinding(DefaultParameterSetName = 'DatabaseFilePath')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQLite database.'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$ConnectionString,

        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseFilePath',
            HelpMessage = 'The path to the SQLite database file.'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('dbpath', 'indexpath')]
        [string]$DatabaseFilePath,

        [Parameter(
            Position = 1,
            Mandatory = $true,
            HelpMessage = 'The name of the view to query.'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$ViewName,

        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'Number of records to return. -1 for all records.'
        )]
        [ValidateRange(-1, [int]::MaxValue)]
        [int]$Count = 100
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose "Starting Get-SQLiteViewData for view: $ViewName"
    }


    process {

        # construct query with optional record limit
        $query = if ($Count -eq -1) {
            "SELECT * FROM $ViewName"
        }
        else {
            "SELECT * FROM $ViewName LIMIT $Count"
        }

        Microsoft.PowerShell.Utility\Write-Verbose "Executing query: $query"

        # prepare parameters for Invoke-SQLiteQuery
        $PSBoundParameters['Queries'] = $query

        # execute query and return results
        GenXdev\Invoke-SQLiteQuery @PSBoundParameters
    }

    end {

        Microsoft.PowerShell.Utility\Write-Verbose "Completed querying view: $ViewName"
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SQLite
Original cmdlet filename  : Get-SQLiteViews.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Retrieves a list of views from a SQLite database.

.DESCRIPTION
Gets all view names from the specified SQLite database file or connection string.
Returns an array of view names that can be used for further database operations.
The function supports two parameter sets for flexibility: providing either a
connection string or a direct path to the database file.

.PARAMETER ConnectionString
The connection string to connect to the SQLite database. Use this when you need
to specify custom connection parameters.

.PARAMETER DatabaseFilePath
The full path to the SQLite database file. Use this for simple file-based
connections.

.EXAMPLE
Get-SQLiteViews -DatabaseFilePath "C:\Databases\MyDatabase.sqlite"

.EXAMPLE
s -ConnectionString "Data Source=C:\Databases\MyDatabase.sqlite;Version=3;"
#>
function Get-SQLiteViews {

    [CmdletBinding(DefaultParameterSetName = 'Default')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQLite database.'
        )]
        [string]$ConnectionString,
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseFilePath',
            HelpMessage = 'The path to the SQLite database file.'
        )]
        [string]$DatabaseFilePath
    )

    begin {

        # log the start of the view retrieval process
        Microsoft.PowerShell.Utility\Write-Verbose 'Preparing to retrieve SQLite views...'
    }


    process {

        # define the SQL query to retrieve all view names from sqlite_master
        $query = "SELECT name FROM sqlite_master WHERE type='view'"

        # log the query being executed for troubleshooting
        Microsoft.PowerShell.Utility\Write-Verbose "Executing query: $query"

        # execute the query using existing parameter set and store in $PSBoundParameters
        $PSBoundParameters['Queries'] = $query

        # invoke the query and return results using parameter splatting
        GenXdev\Invoke-SQLiteQuery @PSBoundParameters
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SQLite
Original cmdlet filename  : Get-SQLiteViewSchema.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Retrieves the SQL schema definition for a SQLite view.

.DESCRIPTION
This function queries the SQLite database's system tables to extract the SQL
definition of a specified view. It supports connecting via either a connection
string or direct database file path and returns the complete SQL schema that
defines the requested view.

.PARAMETER ConnectionString
The connection string used to connect to the SQLite database. This parameter is
mutually exclusive with DatabaseFilePath.

.PARAMETER DatabaseFilePath
The full path to the SQLite database file. This parameter is mutually exclusive
with ConnectionString.

.PARAMETER ViewName
The name of the view whose schema definition should be retrieved.

.EXAMPLE
Get-SQLiteViewSchema -DatabaseFilePath "C:\Databases\MyApp.sqlite" `
                    -ViewName "CustomerOrders"

#>
function Get-SQLiteViewSchema {

    [CmdletBinding(DefaultParameterSetName = 'Default')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQLite database.'
        )]
        [string]$ConnectionString,
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseFilePath',
            HelpMessage = 'The path to the SQLite database file.'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('dbpath', 'indexpath')]
        [string]$DatabaseFilePath,
        [Parameter(
            Position = 1,
            Mandatory = $true,
            HelpMessage = 'The name of the view.'
        )]
        [string]$ViewName
    )

    begin {

        # log the start of view schema retrieval
        Microsoft.PowerShell.Utility\Write-Verbose "Retrieving schema for view: $ViewName"
    }


    process {

        # construct query to fetch the view definition from sqlite_master table
        $query = "SELECT sql FROM sqlite_master WHERE name = '$ViewName'"

        # log the query being executed
        Microsoft.PowerShell.Utility\Write-Verbose "Executing query: $query"

        # add the query to parameters and execute it using Invoke-SQLiteQuery
        $PSBoundParameters['Queries'] = $query
        GenXdev\Invoke-SQLiteQuery @PSBoundParameters
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SQLite
Original cmdlet filename  : Invoke-SQLiteQuery.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Executes one or more SQL queries against a SQLite database with transaction support.

.DESCRIPTION
Executes SQL queries against a SQLite database with parameter support and
configurable transaction isolation. Can use an external transaction for batch
operations or create its own internal transaction. When using an external
transaction, the caller is responsible for committing/rolling back.
Connection priority: Transaction > ConnectionString > DatabaseFilePath.

.PARAMETER ConnectionString
The SQLite connection string for database access. Used if no Transaction is provided.

.PARAMETER DatabaseFilePath
The file path to the SQLite database. Will be converted to a connection string.
Used if no Transaction or ConnectionString is provided.

.PARAMETER Transaction
An existing SQLite transaction to use. When provided, the function will not
commit or rollback the transaction - that's the caller's responsibility.
Takes priority over ConnectionString and DatabaseFilePath.

.PARAMETER Queries
One or more SQL queries to execute. Can be passed via pipeline.

.PARAMETER SqlParameters
Optional parameters for the queries as hashtables. Format: @{"param"="value"}

.PARAMETER IsolationLevel
Transaction isolation level. Defaults to ReadCommitted. Only used when creating
an internal transaction.

.PARAMETER ForceConsent
Force a consent prompt even if a preference is already set for SQLite package
installation, overriding any saved consent preferences.

.PARAMETER ConsentToThirdPartySoftwareInstallation
Automatically consent to third-party software installation and set a persistent
preference flag for SQLite package, bypassing interactive consent prompts.

.EXAMPLE
Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users"

.EXAMPLE
"SELECT * FROM Users" | isql "C:\data.db" @{"UserId"=1}

.EXAMPLE
Batch operations using external transaction
$tx = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db"
try {
    Invoke-SQLiteQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}
    Invoke-SQLiteQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}
    $tx.Commit()
} catch {
    $tx.Rollback()
    throw
} finally {
    $tx.Connection.Close()
}

.EXAMPLE
Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation
#>
function Invoke-SQLiteQuery {

    [CmdletBinding()]

    param (
        [Parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'The connection string to the SQLite database.'
        )]
        [string]$ConnectionString,

        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = 'The path to the SQLite database file.'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('dbpath', 'indexpath')]
        [string]$DatabaseFilePath,

        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'An existing SQLite transaction to use for the queries.'
        )]
        [ValidateScript({
                if ($null -eq $_) { return $true }
                try {
                    return $_.GetType().FullName -eq 'System.Data.Sqlite.SQLiteTransaction'
                }
                catch {
                    # Assembly may not be loaded yet during module import
                    return $true
                }
            })]
        [object]$Transaction,

        [Alias("q", "Value", "Name", "Text", "Query")]
        [parameter(
            Mandatory,
            Position = 3,
            ValueFromRemainingArguments,
            ValueFromPipeline,
            ValueFromPipelineByPropertyName,
            HelpMessage = 'The query or queries to execute.'
        )]
        [string[]]$Queries,

        [Alias('data', 'parameters', 'args')]
        [parameter(
            Position = 4,
            ValueFromRemainingArguments,
            ValueFromPipeline,
            ValueFromPipelineByPropertyName,
            HelpMessage = 'Query parameters as hashtables.'
        )]
        [System.Collections.Hashtable[]]$SqlParameters = @(),

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The isolation level to use. default is ReadCommitted.'
        )]
        [ValidateSet('ReadCommitted', 'ReadUncommitted', 'RepeatableRead', 'Serializable', 'Snapshot', 'Chaos')]
        [string]$IsolationLevel = "ReadCommitted",

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force a consent prompt even if preference is set for SQLite package installation.'
        )]
        [switch] $ForceConsent,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Automatically consent to third-party software installation and set persistent flag for SQLite package.'
        )]
        [switch] $ConsentToThirdPartySoftwareInstallation
    )

    begin {
        # load SQLite client assembly with embedded consent using Copy-IdenticalParamValues
        $ensureParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\EnsureNuGetAssembly' `
            -DefaultValues (
            Microsoft.PowerShell.Utility\Get-Variable -Scope Local `
                -ErrorAction SilentlyContinue
        )

        # Set specific parameters for SQLite package
        $ensureParams['PackageKey'] = 'System.Data.Sqlite'
        $ensureParams['Description'] = 'SQLite database engine for PowerShell data operations'
        $ensureParams['Publisher'] = 'SQLite Development Team'

        GenXdev\EnsureNuGetAssembly @ensureParams

        # determine connection source priority: Transaction > ConnectionString > DatabaseFilePath
        if ($null -ne $Transaction) {
            $connection = $Transaction.Connection
            $transaction = $Transaction
            $isExternalTransaction = $true
            Microsoft.PowerShell.Utility\Write-Verbose 'Using external transaction'
        }
        elseif (-not [String]::IsNullOrWhiteSpace($ConnectionString)) {
            $connString = $ConnectionString
            $isExternalTransaction = $false
            Microsoft.PowerShell.Utility\Write-Verbose "Will create internal transaction with connection string: $connString"
        }
        elseif (-not [String]::IsNullOrWhiteSpace($DatabaseFilePath)) {
            $connString = "Data Source=$((GenXdev\Expand-Path $DatabaseFilePath))"
            $isExternalTransaction = $false
            Microsoft.PowerShell.Utility\Write-Verbose "Will create internal transaction with database file: $DatabaseFilePath"
        }
        else {
            throw 'You must provide either a Transaction, ConnectionString, or DatabaseFilePath parameter.'
        }
    }

    process {
        try {
            # establish database connection and transaction if not using external
            if (-not $isExternalTransaction) {
                $connection = Microsoft.PowerShell.Utility\New-Object System.Data.Sqlite.SQLiteConnection($connString)
                $connection.Open()

                # begin transaction with specified isolation
                $transaction = $connection.BeginTransaction($IsolationLevel)
                Microsoft.PowerShell.Utility\Write-Verbose "Started internal transaction with $IsolationLevel isolation"
            }

            # ensure parameters array exists
            $SqlParameters = if ($SqlParameters) { $SqlParameters } else { @() }

            try {
                $idx = -1

                # process each query
                $Queries | Microsoft.PowerShell.Core\ForEach-Object {

                    $idx++
                    Microsoft.PowerShell.Utility\Write-Verbose "Executing query $($idx + 1) of $($Queries.Count)"

                    # get parameter set for current query
                    [System.Collections.Hashtable] $data = if ($SqlParameters.Length -gt $idx) {
                        $SqlParameters[[Math]::Min($idx, $SqlParameters.Count - 1)]
                    }
                    else {
                        $null
                    }

                    # prepare command
                    $command = $connection.CreateCommand()
                    $command.CommandText = $PSItem
                    $command.Transaction = $transaction

                    # add parameters if provided
                    if ($null -ne $data) {
                        $data.GetEnumerator() | Microsoft.PowerShell.Core\ForEach-Object {
                            $value = $PSItem.Value

                            $null = $command.Parameters.AddWithValue(
                                '@' + $PSItem.Key,
                                $value
                            )
                        }
                    }

                    # execute and read results
                    $reader = $command.ExecuteReader()

                    while ($reader.Read()) {
                        $record = @{}
                        for ($i = 0; $i -lt $reader.FieldCount; $i++) {
                            $name = $reader.GetName($i)
                            $value = $reader.GetValue($i)
                            $record[$name] = $value
                        }
                        Microsoft.PowerShell.Utility\Write-Output $record
                    }

                    $reader.Close()
                }

                # only commit if we created the transaction internally
                if (-not $isExternalTransaction) {
                    $transaction.Commit()
                    Microsoft.PowerShell.Utility\Write-Verbose 'Internal transaction committed successfully'
                }
            }
            catch {
                # only rollback if we created the transaction internally
                if (-not $isExternalTransaction) {
                    $transaction.Rollback()
                    Microsoft.PowerShell.Utility\Write-Verbose 'Internal transaction rolled back due to error'
                }
                throw $_
            }
            finally {
                if ($null -ne $reader) { $reader.Close() }

                # only close connection if we created it internally
                if (-not $isExternalTransaction) {
                    $connection.Close()
                    Microsoft.PowerShell.Utility\Write-Verbose 'Internal connection closed'
                }
            }
        }
        catch {
            throw $_
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SQLite
Original cmdlet filename  : Invoke-SQLiteStudio.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Executes SQLite database queries with support for parameters and transactions.

.DESCRIPTION
Provides a PowerShell interface for executing SQLite queries with support for:
- Connection via connection string or database file path
- Parameterized queries to prevent SQL injection
- Transaction isolation level control
- Multiple query execution in a single transaction
- Pipeline input for queries and parameters

.PARAMETER ConnectionString
The SQLite connection string for connecting to the database.
Format: "Data Source=mydb.sqlite"

.PARAMETER DatabaseFilePath
The direct file system path to the SQLite database file.

.PARAMETER Queries
One or more SQL queries to execute. Can be provided via pipeline.
Each query can be parameterized using @parameter notation.

.PARAMETER SqlParameters
Hashtable of parameters to use in queries. Format: @{"param" = "value"}
Multiple parameter sets can be provided for multiple queries.

.PARAMETER IsolationLevel
Controls the transaction isolation. Default is ReadCommitted.
Available levels: ReadUncommitted, ReadCommitted, RepeatableRead, Serializable

.EXAMPLE
Invoke-SQLiteStudio `
    -DatabaseFilePath "C:\data\users.sqlite" `
    -Queries "SELECT * FROM Users WHERE active = @status" `
    -SqlParameters @{"status" = 1}

.EXAMPLE
"SELECT * FROM Users" | isql -DatabaseFilePath "C:\data\users.sqlite"
#>
function Invoke-SQLiteStudio {

    [CmdletBinding(DefaultParameterSetName = 'Default')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQLite database.'
        )]
        [string]$ConnectionString,

        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseFilePath',
            HelpMessage = 'The path to the SQLite database file.'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('dbpath', 'indexpath')]
        [string]$DatabaseFilePath,

        [Alias('q', 'Name', 'Text', 'Query')]
        [Parameter(
            Mandatory = $true,
            Position = 1,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The query to execute.'
        )]
        [string[]]$Queries,

        [Alias('parameters')]
        [Parameter(
            Mandatory = $false,
            Position = 2,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'Optional parameters for the query.'
        )]
        [System.Collections.Hashtable[]]$SqlParameters,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The isolation level to use. Default is ReadCommitted.'
        )]
        [ValidateSet('ReadCommitted', 'ReadUncommitted', 'RepeatableRead', 'Serializable', 'Snapshot', 'Chaos')]
        [string]$IsolationLevel = "ReadCommitted"
    )

    begin {
        # log initialization of sqlite connection handling
        Microsoft.PowerShell.Utility\Write-Verbose 'Initializing SQLite query execution environment'
    }


    process {

        # log the start of query processing
        Microsoft.PowerShell.Utility\Write-Verbose "Processing $($Queries.Count) queries with isolation level: $IsolationLevel"
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SQLite
Original cmdlet filename  : New-SQLiteDatabase.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Creates a new SQLite database file.

.DESCRIPTION
Creates a new SQLite database file at the specified path if it does not already
exist. The function ensures the target directory exists and creates a valid
SQLite database by establishing and closing a connection.

.PARAMETER DatabaseFilePath
The full path where the SQLite database file should be created. If the directory
path does not exist, it will be created automatically.

.PARAMETER ForceConsent
Force a consent prompt even if a preference is already set for SQLite package
installation, overriding any saved consent preferences.

.PARAMETER ConsentToThirdPartySoftwareInstallation
Automatically consent to third-party software installation and set a persistent
preference flag for SQLite package, bypassing interactive consent prompts.

.EXAMPLE
New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite"

.EXAMPLE
nsqldb "C:\Databases\MyNewDb.sqlite"

.EXAMPLE
New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite" -ConsentToThirdPartySoftwareInstallation
#>

# don't remove this line [dontrefactor]

function New-SQLiteDatabase {

    [CmdletBinding(SupportsShouldProcess = $true)]
    [Alias('nsqldb')]

    param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = 'The path to the SQLite database file'
        )]
        [string]$DatabaseFilePath,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force a consent prompt even if preference is set for SQLite package installation.'
        )]
        [switch] $ForceConsent,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Automatically consent to third-party software installation and set persistent flag for SQLite package.'
        )]
        [switch] $ConsentToThirdPartySoftwareInstallation
    )

    begin {
        # load SQLite client assembly with embedded consent using Copy-IdenticalParamValues
        $ensureParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\EnsureNuGetAssembly' `
            -DefaultValues (
            Microsoft.PowerShell.Utility\Get-Variable -Scope Local `
                -ErrorAction SilentlyContinue
        )

        # Set specific parameters for SQLite package
        $ensureParams['PackageKey'] = 'System.Data.Sqlite'
        $ensureParams['Description'] = 'SQLite database engine for .NET applications'
        $ensureParams['Publisher'] = 'SQLite Development Team'

        GenXdev\EnsureNuGetAssembly @ensureParams

        # expand the path and create directory if needed
        $DatabaseFilePath = GenXdev\Expand-Path $DatabaseFilePath -CreateDirectory
    }


    process {

        # check if database file already exists
        if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $DatabaseFilePath)) {

            # build a meaningful should process message
            $targetObject = 'SQLite database'
            $action = 'Create'

            # check if user wants to proceed with operation
            if ($PSCmdlet.ShouldProcess($DatabaseFilePath, "$action $targetObject")) {
                try {
                    # construct the connection string
                    $connectionString = "Data Source=$DatabaseFilePath"

                    # create a new database connection
                    $connection = Microsoft.PowerShell.Utility\New-Object System.Data.Sqlite.SQLiteConnection(
                        $connectionString)

                    # open and immediately close to create empty database
                    $connection.Open()
                    $connection.Close()

                    Microsoft.PowerShell.Utility\Write-Verbose "Successfully created database at $DatabaseFilePath"
                }
                catch {
                    throw "Failed to create database at $DatabaseFilePath. Error: `
$($_.Exception.Message)"
                }
            }
        }
        else {
            Microsoft.PowerShell.Utility\Write-Verbose "Database file already exists at $DatabaseFilePath"
        }
    }

    end {
    }
}

