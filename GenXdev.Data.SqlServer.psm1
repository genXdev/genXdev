<##############################################################################
Part of PowerShell module : GenXdev.Data.SqlServer
Original cmdlet filename  : Get-SQLServerSchema.ps1
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
Retrieves the complete schema information from a SQL Server database.

.DESCRIPTION
This function queries SQL Server system tables and information schema to obtain
the complete schema definition of a SQL Server database, including tables, views,
indexes, stored procedures and other database objects. It accepts either a
connection string or database name with server parameters.

.PARAMETER ConnectionString
The SQL Server connection string that specifies the database location and any
additional connection parameters.

.PARAMETER DatabaseName
The name of the SQL Server database.

.PARAMETER Server
The SQL Server instance name. Defaults to 'localhost'.

.EXAMPLE
Get-SQLServerSchema -DatabaseName "inventory" -Server "localhost"

.EXAMPLE
Get-SQLServerSchema -ConnectionString "Server=localhost;Database=inventory;Integrated Security=true;"
#>
function Get-SQLServerSchema {

    [CmdletBinding(DefaultParameterSetName = 'DatabaseName')]

    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQL Server database.'
        )]
        [string]$ConnectionString,

        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The name of the SQL Server database.'
        )]
        [string]$DatabaseName,

        [Parameter(
            Position = 1,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The SQL Server instance name.'
        )]
        [string]$Server = 'localhost'
    )

    begin {

        # output verbose information about the selected parameter set
        Microsoft.PowerShell.Utility\Write-Verbose "Using parameter set: $($PSCmdlet.ParameterSetName)"
    }


    process {

        # prepare comprehensive schema queries for SQL Server
        $schemaQueries = @(
            "SELECT 'TABLE' as object_type, name, schema_id, object_id FROM sys.tables ORDER BY name",
            "SELECT 'VIEW' as object_type, name, schema_id, object_id FROM sys.views ORDER BY name",
            "SELECT 'PROCEDURE' as object_type, name, schema_id, object_id FROM sys.procedures ORDER BY name",
            "SELECT 'FUNCTION' as object_type, name, schema_id, object_id FROM sys.objects WHERE type IN ('FN','IF','TF') ORDER BY name"
        )

        $PSBoundParameters['Queries'] = $schemaQueries

        # execute the schema queries using the existing Invoke-SQLServerQuery function
        GenXdev\Invoke-SQLServerQuery @PSBoundParameters
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SqlServer
Original cmdlet filename  : Get-SQLServerTableColumnData.ps1
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
Retrieves data from a specific column in a SQL database table.

.DESCRIPTION
This function provides a convenient way to extract data from a single column in a
SQL database table. It supports two connection methods: direct database file
path or connection string. The function includes options to limit the number of
returned records and uses proper SQL query construction for optimal
performance.

.PARAMETER ConnectionString
The connection string to connect to the SQL database. This parameter is
mutually exclusive with DatabaseFilePath.

.PARAMETER DatabaseFilePath
The file path to the SQL database file. This parameter is mutually exclusive
with ConnectionString.

.PARAMETER TableName
The name of the table from which to retrieve the column data.

.PARAMETER ColumnName
The name of the column whose data should be retrieved.

.PARAMETER Count
The maximum number of records to return. Default is 100. Use -1 to return all
records without limit.

.EXAMPLE
Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `
    -TableName "Employees" `
    -ColumnName "Email" `
    -Count 10

.EXAMPLE
Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"
#>
function Get-SQLServerTableColumnData {

    [CmdletBinding(DefaultParameterSetName = 'DatabaseName')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQL Server database'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ConnectionString,
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The name of the SQL Server database'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $DatabaseName,
        [Parameter(
            Position = 1,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The SQL Server instance name'
        )]
        [string] $Server = 'localhost',
        [Parameter(
            Position = 2,
            Mandatory = $true,
            HelpMessage = 'The name of the table to query'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $TableName,
        [Parameter(
            Position = 3,
            Mandatory = $true,
            HelpMessage = 'The name of the column to retrieve'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ColumnName,
        [Parameter(
            Position = 4,
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

        # prepare parameters for Invoke-SQLServerQuery and execute the query
        $PSBoundParameters['Queries'] = $query
        GenXdev\Invoke-SQLServerQuery @PSBoundParameters
    }

    end {

        # log completion of the operation
        Microsoft.PowerShell.Utility\Write-Verbose 'Column data retrieval completed successfully'
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SqlServer
Original cmdlet filename  : Get-SQLServerTableData.ps1
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
Retrieves data from a SQL database table with optional record limiting.

.DESCRIPTION
This function queries data from a SQL database table using either a connection
string or database file path. It provides flexibility in connecting to the
database and controlling the amount of data retrieved through the Count parameter.

.PARAMETER ConnectionString
Specifies the SQL connection string in the format:
"Data Source=path_to_database_file"

.PARAMETER DatabaseFilePath
Specifies the full file system path to the SQL database file.

.PARAMETER TableName
Specifies the name of the table to query data from. The table must exist in the
database.

.PARAMETER Count
Specifies the maximum number of records to return. Default is 100.
Use -1 to return all records. Must be -1 or a positive integer.

.EXAMPLE
Get-SQLServerTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50

.EXAMPLE
Get-SQLServerTableData "C:\data\users.db" "Employees"
#>
function Get-SQLServerTableData {

    [CmdletBinding(DefaultParameterSetName = 'DatabaseName')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQL Server database.'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$ConnectionString,

        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The name of the SQL Server database.'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$DatabaseName,

        [Parameter(
            Position = 1,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The SQL Server instance name.'
        )]
        [string]$Server = 'localhost',

        [Parameter(
            Position = 2,
            Mandatory = $true,
            HelpMessage = 'The name of the table to query data from.'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$TableName,

        [Parameter(
            Position = 3,
            Mandatory = $false,
            HelpMessage = 'The maximum number of records to return. -1 for all.'
        )]
        [ValidateRange(-1, [int]::MaxValue)]
        [int]$Count = 100
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose "Starting Get-SQLServerTableData for table: $TableName"
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

        # add the constructed query to the parameter set for Invoke-SQLServerQuery
        $PSBoundParameters['Queries'] = $query

        # execute the query and return results through the SQL provider
        GenXdev\Invoke-SQLServerQuery @PSBoundParameters
    }

    end {

        Microsoft.PowerShell.Utility\Write-Verbose "Completed querying table: $TableName"
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SqlServer
Original cmdlet filename  : Get-SQLServerTables.ps1
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
Retrieves a list of table names from a SQL Server database.

.DESCRIPTION
Queries the SQL Server system tables to retrieve all user-defined table names
from a SQL Server database. Supports connecting via either a direct connection
string or a database name with server parameters. Returns the table names as a
collection of strings.

.PARAMETER ConnectionString
The full connection string to connect to the SQL Server database. Should include
the Server and Database parameters at minimum.

.PARAMETER DatabaseName
The name of the SQL Server database.

.PARAMETER Server
The SQL Server instance name. Defaults to 'localhost'.

.EXAMPLE
Get-SQLServerTables -DatabaseName "Inventory" -Server "localhost"
Returns all table names from the specified database

.EXAMPLE
Get-SQLServerTables -ConnectionString "Server=localhost;Database=Users;Integrated Security=true;"
Returns all table names using a custom connection string
#>

function Get-SQLServerTables {
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [CmdletBinding(DefaultParameterSetName = 'DatabaseName')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQL Server database.'
        )]
        [string]$ConnectionString,

        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The name of the SQL Server database.'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$DatabaseName,

        [Parameter(
            Position = 1,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The SQL Server instance name.'
        )]
        [string]$Server = '.'
    )

    begin {

        # log the start of table retrieval operation
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting SQL table name retrieval operation'
    }


    process {

        # define the query to get all table names from SQL Server system tables
        $PSBoundParameters['Queries'] = 'SELECT name FROM sys.tables ORDER BY name'

        # execute query using the inherited connection parameters
        Microsoft.PowerShell.Utility\Write-Verbose 'Executing query to retrieve table names'
        GenXdev\Invoke-SQLServerQuery @PSBoundParameters
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SqlServer
Original cmdlet filename  : Get-SQLServerTableSchema.ps1
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
Retrieves the schema information for a specified SQL Server table.

.DESCRIPTION
This function queries the SQL Server database to get detailed schema information for
a specified table. It uses the SQL Server INFORMATION_SCHEMA.COLUMNS view to return
column definitions including names, types, nullable status, and default values.

.PARAMETER ConnectionString
Specifies the SQL Server connection string in the format:
"Server=servername;Database=databasename;Integrated Security=true"

.PARAMETER DatabaseName
Specifies the name of the SQL Server database.

.PARAMETER Server
Specifies the SQL Server instance name. Defaults to 'localhost'.

.PARAMETER TableName
Specifies the name of the table for which to retrieve schema information.

.EXAMPLE
Get-SQLServerTableSchema -DatabaseName "mydb" -Server "localhost" `
    -TableName "Users"

.EXAMPLE
Get-SQLServerTableSchema -ConnectionString "Server=localhost;Database=mydb;Integrated Security=true" `
    -TableName "Products"
#>
function Get-SQLServerTableSchema {

    [CmdletBinding(DefaultParameterSetName = 'DatabaseName')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQL Server database'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$ConnectionString,

        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The name of the SQL Server database'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$DatabaseName,

        [Parameter(
            Position = 1,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The SQL Server instance name'
        )]
        [string]$Server = '.',

        [Parameter(
            Position = 2,
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

        # construct the INFORMATION_SCHEMA query to get detailed table column information
        $PSBoundParameters['Queries'] = @"
SELECT
    COLUMN_NAME,
    DATA_TYPE,
    IS_NULLABLE,
    COLUMN_DEFAULT,
    CHARACTER_MAXIMUM_LENGTH,
    NUMERIC_PRECISION,
    NUMERIC_SCALE,
    ORDINAL_POSITION
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = '$TableName'
ORDER BY ORDINAL_POSITION
"@

        # log the execution of the schema query
        Microsoft.PowerShell.Utility\Write-Verbose 'Executing schema query against SQL Server database'

        # execute the query and return results using existing Invoke-SQLServerQuery
        GenXdev\Invoke-SQLServerQuery @PSBoundParameters
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SqlServer
Original cmdlet filename  : Get-SQLServerTransaction.ps1
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
Creates and returns a SQL Server transaction object for batch operations.

.DESCRIPTION
Creates a SQL Server database connection and transaction object that can be used
for batch operations. The caller is responsible for committing or rolling back
the transaction. Requires an existing SQL Server database and connection.

.PARAMETER ConnectionString
The SQL Server connection string for database access.

.PARAMETER DatabaseName
The name of the SQL Server database. Used with Server parameter to create connection string.

.PARAMETER Server
The SQL Server instance name. Defaults to 'localhost'.

.PARAMETER IsolationLevel
Transaction isolation level. Defaults to ReadCommitted.

.PARAMETER CreateDatabaseIfNotExists
Whether to create the database file if it doesn't exist. Defaults to true.

.PARAMETER ForceConsent
Force a consent prompt even if a preference is already set for SQL Server package
installation, overriding any saved consent preferences.

.PARAMETER ConsentToThirdPartySoftwareInstallation
Automatically consent to third-party software installation and set a persistent
preference flag for SQL Server package, bypassing interactive consent prompts.

.EXAMPLE
$transaction = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDatabase"
try {
    Invoke-SQLServerQuery -Transaction $transaction -Queries "INSERT INTO Users..."
    Invoke-SQLServerQuery -Transaction $transaction -Queries "UPDATE Users..."
    $transaction.Commit()
} catch {
    $transaction.Rollback()
    throw
} finally {
    $transaction.Connection.Close()
}

.EXAMPLE
$transaction = Get-SQLServerTransaction -ConnectionString "Server=localhost;Database=MyDB;Integrated Security=true"

.EXAMPLE
$transaction = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDatabase" -ConsentToThirdPartySoftwareInstallation
#>
function Get-SQLServerTransaction {

    [CmdletBinding(DefaultParameterSetName = 'DatabaseName')]
    [Alias('getsqltx', 'newsqltx')]
    param (
        [Parameter(
            Position = 0,
            Mandatory,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQL Server database.'
        )]
        [string]$ConnectionString,

        [Parameter(
            Position = 0,
            Mandatory,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The name of the SQL Server database.'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$DatabaseName,

        [Parameter(
            Position = 1,
            Mandatory = $false,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The SQL Server instance name.'
        )]
        [string]$Server = '.',

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Transaction isolation level.'
        )]
        [ValidateSet('ReadCommitted', 'ReadUncommitted', 'RepeatableRead', 'Serializable', 'Snapshot', 'Chaos')]
        [string]$IsolationLevel = "ReadCommitted",

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force a consent prompt even if preference is set for SQL Server package installation.'
        )]
        [switch] $ForceConsent,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Automatically consent to third-party software installation and set persistent flag for SQL Server package.'
        )]
        [switch] $ConsentToThirdPartySoftwareInstallation
    )

    begin {
        # load SQL Server client assembly with embedded consent using Copy-IdenticalParamValues
        $ensureParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\EnsureNuGetAssembly' `
            -DefaultValues (
            Microsoft.PowerShell.Utility\Get-Variable -Scope Local `
                -ErrorAction SilentlyContinue
        )

        # Set specific parameters for SQL Server package
        $ensureParams['PackageKey'] = 'System.Data.SqlClient'
        $ensureParams['Description'] = 'SQL Server client library required for database operations'
        $ensureParams['Publisher'] = 'Microsoft'

        GenXdev\EnsureNuGetAssembly @ensureParams

        # initialize connection string from parameters
        if ($PSCmdlet.ParameterSetName -eq 'DatabaseName') {
            $connString = "Server=$Server;Database=$DatabaseName;Integrated Security=true;TrustServerCertificate=true"
        }
        else {
            $connString = $ConnectionString
        }

        Microsoft.PowerShell.Utility\Write-Verbose "Creating SQL Server transaction with connection string: $connString"
    }

    process {
        try {
            # establish database connection
            $connectionClass = "System.Data.SqlClient.SqlConnection"
            $connection = Microsoft.PowerShell.Utility\New-Object $connectionClass($connString)
            $connection.Open()
            Microsoft.PowerShell.Utility\Write-Verbose 'SQL Server connection opened successfully'

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
Part of PowerShell module : GenXdev.Data.SqlServer
Original cmdlet filename  : Get-SQLServerViewColumnData.ps1
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
Retrieves column data from a SQL view with optional record limiting.

.DESCRIPTION
Executes a SELECT query against a specified SQL view to retrieve data from a
single column. Supports connecting via either a connection string or database file
path. Allows limiting the number of returned records or retrieving all records.

.PARAMETER ConnectionString
The SQL database connection string. This parameter is mutually exclusive with
DatabaseFilePath.

.PARAMETER DatabaseFilePath
The full path to the SQL database file. This parameter is mutually exclusive
with ConnectionString.

.PARAMETER ViewName
The name of the SQL view to query data from.

.PARAMETER ColumnName
The name of the column within the view to retrieve data from.

.PARAMETER Count
The maximum number of records to return. Use -1 to return all records. Defaults
to 100 if not specified.

.EXAMPLE
Get-SQLServerViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `
    -ViewName "CustomersView" `
    -ColumnName "Email" `
    -Count 50

.EXAMPLE
Get-SQLServerViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"
#>
function Get-SQLServerViewColumnData {

    [CmdletBinding(DefaultParameterSetName = 'DatabaseName')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQL Server database.'
        )]
        [string]$ConnectionString,
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The name of the SQL Server database.'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$DatabaseName,
        [Parameter(
            Position = 1,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The SQL Server instance name.'
        )]
        [string]$Server = 'localhost',
        [Parameter(
            Position = 2,
            Mandatory = $true,
            HelpMessage = 'The name of the view.'
        )]
        [string]$ViewName,
        [Parameter(
            Position = 3,
            Mandatory = $true,
            HelpMessage = 'The name of the column.'
        )]
        [string]$ColumnName,
        [Parameter(
            Position = 4,
            Mandatory = $false,
            HelpMessage = 'The number of records to return. Default is 100. -1 for all.'
        )]
        [int]$Count = 100
    )

    begin {

        # log the start of the operation
        Microsoft.PowerShell.Utility\Write-Verbose "Starting Get-SQLServerViewColumnData for view '$ViewName'"
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

        # execute the query using the existing Invoke-SQLServerQuery cmdlet
        GenXdev\Invoke-SQLServerQuery @PSBoundParameters
    }

    end {

        # log completion of the operation
        Microsoft.PowerShell.Utility\Write-Verbose "Completed Get-SQLServerViewColumnData for view '$ViewName'"
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SqlServer
Original cmdlet filename  : Get-SQLServerViewData.ps1
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
Retrieves data from a SQL database view with optional record limiting.

.DESCRIPTION
Queries a SQL database view using either a connection string or database file
path. The function supports limiting the number of returned records and provides
verbose output for tracking query execution.

.PARAMETER ConnectionString
The connection string to connect to the SQL database. This parameter is
mutually exclusive with DatabaseFilePath.

.PARAMETER DatabaseFilePath
The file path to the SQL database file. This parameter is mutually exclusive
with ConnectionString.

.PARAMETER ViewName
The name of the view from which to retrieve data.

.PARAMETER Count
The maximum number of records to return. Use -1 to return all records.
Defaults to 100 if not specified.

.EXAMPLE
Get-SQLServerViewData -DatabaseFilePath "C:\MyDb.sqlite" `
    -ViewName "CustomerView" `
    -Count 50

.EXAMPLE
Get-SQLServerViewData "C:\MyDb.sqlite" "CustomerView"
#>
function Get-SQLServerViewData {

    [CmdletBinding(DefaultParameterSetName = 'DatabaseName')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQL Server database.'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$ConnectionString,

        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The name of the SQL Server database.'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$DatabaseName,

        [Parameter(
            Position = 1,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The SQL Server instance name.'
        )]
        [string]$Server = 'localhost',

        [Parameter(
            Position = 2,
            Mandatory = $true,
            HelpMessage = 'The name of the view to query.'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$ViewName,

        [Parameter(
            Position = 3,
            Mandatory = $false,
            HelpMessage = 'Number of records to return. -1 for all records.'
        )]
        [ValidateRange(-1, [int]::MaxValue)]
        [int]$Count = 100
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose "Starting Get-SQLServerViewData for view: $ViewName"
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

        # prepare parameters for Invoke-SQLServerQuery
        $PSBoundParameters['Queries'] = $query

        # execute query and return results
        GenXdev\Invoke-SQLServerQuery @PSBoundParameters
    }

    end {

        Microsoft.PowerShell.Utility\Write-Verbose "Completed querying view: $ViewName"
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SqlServer
Original cmdlet filename  : Get-SQLServerViews.ps1
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
Retrieves a list of views from a SQL Server database.

.DESCRIPTION
Gets all view names from the specified SQL Server database. Returns an array
of view names that can be used for further database operations. The function
supports two parameter sets for flexibility: providing either a connection string
or a database name with server.

.PARAMETER ConnectionString
The connection string to connect to the SQL Server database. Use this when you
need to specify custom connection parameters.

.PARAMETER DatabaseName
The name of the SQL Server database.

.PARAMETER Server
The SQL Server instance name. Defaults to 'localhost'.

.EXAMPLE
Get-SQLServerViews -DatabaseName "MyDatabase" -Server "localhost"

.EXAMPLE
Get-SQLServerViews -ConnectionString "Server=localhost;Database=MyDatabase;Integrated Security=true;"
#>
function Get-SQLServerViews {

    [CmdletBinding(DefaultParameterSetName = 'DatabaseName')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQL Server database.'
        )]
        [string]$ConnectionString,
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The name of the SQL Server database.'
        )]
        [string]$DatabaseName,
        [Parameter(
            Position = 1,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The SQL Server instance name.'
        )]
        [string]$Server = '.'
    )

    begin {

        # log the start of the view retrieval process
        Microsoft.PowerShell.Utility\Write-Verbose 'Preparing to retrieve SQL views...'
    }


    process {

        # define the SQL query to retrieve all view names from SQL Server system tables
        $query = "SELECT name FROM sys.views ORDER BY name"

        # log the query being executed for troubleshooting
        Microsoft.PowerShell.Utility\Write-Verbose "Executing query: $query"

        # execute the query using existing parameter set and store in $PSBoundParameters
        $PSBoundParameters['Queries'] = $query

        # invoke the query and return results using parameter splatting
        GenXdev\Invoke-SQLServerQuery @PSBoundParameters
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SqlServer
Original cmdlet filename  : Get-SQLServerViewSchema.ps1
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
Retrieves the SQL schema definition for a SQL Server view.

.DESCRIPTION
This function queries the SQL Server database's system tables to extract the SQL
definition of a specified view. It supports connecting via either a connection
string or database name with server parameters and returns the complete SQL schema
that defines the requested view.

.PARAMETER ConnectionString
The connection string used to connect to the SQL Server database. This parameter is
mutually exclusive with DatabaseName.

.PARAMETER DatabaseName
The name of the SQL Server database. This parameter is mutually exclusive with
ConnectionString.

.PARAMETER Server
The SQL Server instance name. Defaults to 'localhost'.

.PARAMETER ViewName
The name of the view whose schema definition should be retrieved.

.EXAMPLE
Get-SQLServerViewSchema -DatabaseFilePath "C:\Databases\MyApp.sqlite" `
                    -ViewName "CustomerOrders"

#>
function Get-SQLServerViewSchema {

    [CmdletBinding(DefaultParameterSetName = 'DatabaseName')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to the SQL Server database.'
        )]
        [string]$ConnectionString,
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The name of the SQL Server database.'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$DatabaseName,
        [Parameter(
            Position = 1,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The SQL Server instance name.'
        )]
        [string]$Server = 'localhost',
        [Parameter(
            Position = 2,
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

        # construct query to fetch the view definition from SQL Server system views
        $query = "SELECT OBJECT_DEFINITION(OBJECT_ID('$ViewName')) AS view_definition"

        # log the query being executed
        Microsoft.PowerShell.Utility\Write-Verbose "Executing query: $query"

        # add the query to parameters and execute it using Invoke-SQLServerQuery
        $PSBoundParameters['Queries'] = $query
        GenXdev\Invoke-SQLServerQuery @PSBoundParameters
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SqlServer
Original cmdlet filename  : Invoke-SQLServerQuery.ps1
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
Executes one or more SQL queries against a SQL Server database with transaction support.

.DESCRIPTION
Executes SQL queries against a SQL Server database with parameter support and
configurable transaction isolation. Can use an external transaction for batch
operations or create its own internal transaction. When using an external
transaction, the caller is responsible for committing/rolling back.
Connection priority: Transaction > ConnectionString > DatabaseName (requires Server).

.PARAMETER ConnectionString
The SQL Server connection string for database access. Used if no Transaction is provided.

.PARAMETER DatabaseName
The name of the SQL Server database to connect to. Requires Server parameter.
Used if no Transaction or ConnectionString is provided.

.PARAMETER Server
The SQL Server instance name. Used with DatabaseName to create connection string.

.PARAMETER Transaction
An existing SQL Server transaction to use. When provided, the function will not
commit or rollback the transaction - that's the caller's responsibility.
Takes priority over ConnectionString and DatabaseName/Server.

.PARAMETER Queries
One or more SQL queries to execute. Can be passed via pipeline.

.PARAMETER SqlParameters
Optional parameters for the queries as hashtables. Format: @{"param"="value"}

.PARAMETER IsolationLevel
Transaction isolation level. Defaults to ReadCommitted. Only used when creating
an internal transaction.

.PARAMETER ForceConsent
Force a consent prompt even if a preference is already set for SQL Server package
installation, overriding any saved consent preferences.

.PARAMETER ConsentToThirdPartySoftwareInstallation
Automatically consent to third-party software installation and set a persistent
preference flag for SQL Server package, bypassing interactive consent prompts.

.EXAMPLE
Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users"

.EXAMPLE
"SELECT * FROM Users" | Invoke-SQLServerQuery -ConnectionString "Server=localhost;Database=MyDB;Integrated Security=true" -SqlParameters @{"UserId"=1}

.EXAMPLE
Batch operations using external transaction
$tx = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDB"
try {
    Invoke-SQLServerQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}
    Invoke-SQLServerQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}
    $tx.Commit()
} catch {
    $tx.Rollback()
    throw
} finally {
    $tx.Connection.Close()
}

.EXAMPLE
Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation
#>
function Invoke-SQLServerQuery {

    [CmdletBinding()]

    param (
        [Alias("q", "Value", "Name", "Text", "Query")]
        [parameter(
            Position = 0,
            ValueFromPipeline,
            ValueFromPipelineByPropertyName,
            HelpMessage = 'The query or queries to execute.'
        )]
        [string[]]$Queries,

        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = 'The name of the SQL Server database.'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$DatabaseName = 'master',

        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'The SQL Server instance name.'
        )]
        [string]$Server = '.',

        [Parameter(
            Position = 3,
            Mandatory = $false,
            HelpMessage = 'An existing SQL Server transaction to use for the queries.'
        )]
        [object]$Transaction,

        [Parameter(
            Position = 4,
            Mandatory = $false,
            HelpMessage = 'The connection string to the SQL database.'
        )]
        [string]$ConnectionString,

        [Alias('data', 'parameters', 'args')]
        [parameter(
            Position = 5,
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
            HelpMessage = 'Force a consent prompt even if preference is set for SQL Server package installation.'
        )]
        [switch] $ForceConsent,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Automatically consent to third-party software installation and set persistent flag for SQL Server package.'
        )]
        [switch] $ConsentToThirdPartySoftwareInstallation
    )

    begin {
        # load SQL Server client assembly with embedded consent using Copy-IdenticalParamValues
        $ensureParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\EnsureNuGetAssembly' `
            -DefaultValues (
            Microsoft.PowerShell.Utility\Get-Variable -Scope Local `
                -ErrorAction SilentlyContinue
        )

        # Set specific parameters for SQL Server package
        $ensureParams['PackageKey'] = 'System.Data.SqlClient'
        $ensureParams['Description'] = 'SQL Server client library required for database operations'
        $ensureParams['Publisher'] = 'Microsoft'

        GenXdev\EnsureNuGetAssembly @ensureParams
        Microsoft.PowerShell.Utility\Add-Type -AssemblyName System.Data.SqlClient

        # determine connection source priority: Transaction > ConnectionString > DatabaseName+Server
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
        elseif (-not [String]::IsNullOrWhiteSpace($DatabaseName)) {
            $connString = "Server=$Server;Database=$DatabaseName;Integrated Security=true;TrustServerCertificate=true"
            $isExternalTransaction = $false
            Microsoft.PowerShell.Utility\Write-Verbose "Will create internal transaction with server: $Server, database: $DatabaseName"
        }
        else {
            throw 'You must provide either a Transaction, ConnectionString, or DatabaseName (with optional Server) parameter.'
        }
    }

    process {
        try {
            # establish database connection and transaction if not using external
            if (-not $isExternalTransaction) {
                $connectionClass = "System.Data.SqlClient.SqlConnection"
                $connection = Microsoft.PowerShell.Utility\New-Object $connectionClass($connString)
                $connection.Open()
                Microsoft.PowerShell.Utility\Write-Verbose "Successfully connected using System.Data.SqlClient"

                # begin transaction with specified isolation
                $transaction = $connection.BeginTransaction($IsolationLevel)
                Microsoft.PowerShell.Utility\Write-Verbose "Started internal transaction with $IsolationLevel isolation"
            }

            # ensure parameters array exists
            $SqlParameters = if ($SqlParameters) { $SqlParameters } else { @() }

            # validate that queries are provided
            if (-not $Queries -or $Queries.Count -eq 0) {
                throw 'You must provide at least one query to execute.'
            }

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
                            $value = if ($null -eq $PSItem.Value) {
                                [DBNull]::Value
                            }
                            else {
                                $PSItem.Value
                            }

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
                if ($null -ne $reader) { $reader.Close(); $reader = $null; }

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
Part of PowerShell module : GenXdev.Data.SqlServer
Original cmdlet filename  : Invoke-SSMS.ps1
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
Executes SQL Server database queries with support for parameters and transactions.

.DESCRIPTION
Provides a PowerShell interface for executing SQL Server queries with support for:
- Connection via connection string or database name with server
- Parameterized queries to prevent SQL injection
- Transaction isolation level control
- Multiple query execution in a single transaction
- Pipeline input for queries and parameters

.PARAMETER ConnectionString
The SQL Server connection string for connecting to the database.
Format: "Server=servername;Database=databasename;Integrated Security=true"

.PARAMETER DatabaseName
The name of the SQL Server database.

.PARAMETER Server
The SQL Server instance name. Defaults to 'localhost'.

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
Invoke-SSMS `
    -DatabaseName "users" -Server "localhost" `
    -Queries "SELECT * FROM Users WHERE active = @status" `
    -SqlParameters @{"status" = 1}

.EXAMPLE
"SELECT * FROM Users" | Invoke-SSMS -DatabaseName "users"
#>
function Invoke-SSMS {

    [CmdletBinding()]
    [Alias("ssms", "sqlservermanagementstudio")]
    param (
    )

    begin {

        EnsureSSMS
    }


    process {


    }

    end {
        $searchPath  = GenXdev\Find-Item `
             "${Env:ProgramFiles(x86)}\*SQL Server Management*\Ssms.exe",
             "${Env:ProgramFiles}\*SQL Server Management*\Ssms.exe" |
             Microsoft.PowerShell.Utility\Sort-Object LastWriteTime -Descending | Microsoft.PowerShell.Utility\Select-Object -First 1

        if (-not $searchPath) {
            Throw "SSMS not found after installation attempt."
        }

        & $searchPath
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Data.SqlServer
Original cmdlet filename  : New-SQLServerDatabase.ps1
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
Creates a new SQL Server database.

.DESCRIPTION
Creates a new SQL Server database with the specified name on the specified
server. Requires appropriate permissions to create databases on the target SQL
Server instance. If the database already exists, the operation will be skipped.
Supports file-based database creation with explicit .mdf/.ldf paths.

.PARAMETER DatabaseName
The name of the SQL Server database to create. Must be a valid SQL Server
database name.

.PARAMETER Server
The SQL Server instance name where the database should be created. Defaults to
'.' (local instance).

.PARAMETER ConnectionString
Alternative connection string to use instead of Server parameter. Should
connect to master database or have appropriate permissions.

.PARAMETER DataFilePath
Optional path for the database data file (.mdf). When specified, creates a
file-based database at this location instead of using default SQL Server paths.

.PARAMETER LogFilePath
Optional path for the database log file (.ldf). If not specified but
DataFilePath is provided, defaults to same directory with _log.ldf suffix.

.PARAMETER DetachAfterCreation
Detach the database after creation. Typically used with DataFilePath to create
a portable database file that can be attached via connection string.

.PARAMETER ForceConsent
Force a consent prompt even if a preference is already set for SQL Server
package installation, overriding any saved consent preferences.

.PARAMETER ConsentToThirdPartySoftwareInstallation
Automatically consent to third-party software installation and set a persistent
preference flag for SQL Server package, bypassing interactive consent prompts.

.EXAMPLE
New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"

.EXAMPLE
New-SQLServerDatabase "MyNewDatabase"

.EXAMPLE
New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."

.EXAMPLE
New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation

.EXAMPLE
New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation
#>
function New-SQLServerDatabase {

    [CmdletBinding(SupportsShouldProcess = $true)]
    [Alias('nsqldb')]

    param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The name of the SQL Server database to create'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$DatabaseName,
        [Parameter(
            Position = 1,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'The SQL Server instance name'
        )]
        [string]$Server = '.',
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ParameterSetName = 'ConnectionString',
            HelpMessage = 'The connection string to connect to SQL Server'
        )]
        [string]$ConnectionString,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force a consent prompt even if preference is set for SQL Server package installation.'
        )]
        [switch] $ForceConsent,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Automatically consent to third-party software installation and set persistent flag for SQL Server package.'
        )]
        [switch] $ConsentToThirdPartySoftwareInstallation,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'Optional data file path (.mdf) for file-based database creation.'
        )]
        [string]$DataFilePath,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'Optional log file path (.ldf) for file-based database creation.'
        )]
        [string]$LogFilePath,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'DatabaseName',
            HelpMessage = 'Detach database after creation (for file-based databases).'
        )]
        [switch]$DetachAfterCreation
    )

    begin {
        # load SQL Server client assembly with embedded consent using Copy-IdenticalParamValues
        $ensureParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\EnsureNuGetAssembly' `
            -DefaultValues (
            Microsoft.PowerShell.Utility\Get-Variable -Scope Local `
                -ErrorAction SilentlyContinue
        )

        # Set specific parameters for SQL Server package
        $ensureParams['PackageKey'] = 'System.Data.SqlClient'
        $ensureParams['Description'] = 'SQL Server client library required for database operations'
        $ensureParams['Publisher'] = 'Microsoft'

        GenXdev\EnsureNuGetAssembly @ensureParams
        Microsoft.PowerShell.Utility\Add-Type -AssemblyName System.Data.SqlClient


        # prepare connection string
        if ($PSCmdlet.ParameterSetName -eq 'DatabaseName') {
            $masterConnectionString = "Server=$Server;Database=master;Integrated Security=true;TrustServerCertificate=true"
        }
        else {
            $masterConnectionString = $ConnectionString
        }
    }

    process {

        # build a meaningful should process message
        $targetObject = 'SQL Server database'
        $action = 'Create'
        $target = if ($PSCmdlet.ParameterSetName -eq 'DatabaseName') { "$DatabaseName on $Server" } else { "database via connection string" }

        # check if user wants to proceed with operation
        if ($PSCmdlet.ShouldProcess($target, "$action $targetObject")) {
            try {
                # create connection to master database to check if target database exists
                $connectionClass = "System.Data.SqlClient.SqlConnection"
                $connection = Microsoft.PowerShell.Utility\New-Object $connectionClass($masterConnectionString)
                $connection.Open()

                # check if database already exists
                $checkQuery = if ($PSCmdlet.ParameterSetName -eq 'DatabaseName') {
                    "SELECT database_id FROM sys.databases WHERE name = @DatabaseName"
                }
                else {
                    # For connection string mode, we'll try to connect directly and see if it fails
                    $null
                }

                if ($checkQuery) {
                    $checkCommand = $connection.CreateCommand()
                    $checkCommand.CommandText = $checkQuery
                    $checkCommand.Parameters.AddWithValue("@DatabaseName", $DatabaseName)
                    $existingDb = $checkCommand.ExecuteScalar()

                    if ($null -eq $existingDb) {
                        # Build CREATE DATABASE statement
                        if ($DataFilePath) {
                            # File-based database with explicit paths
                            $dbName = $DatabaseName -replace '-', '_' -replace ' ', '_'
                            $logPath = if ($LogFilePath) { $LogFilePath } else { $DataFilePath -replace '\.mdf$', '_log.ldf' }

                            # Ensure parent directories exist
                            $dataDir = [System.IO.Path]::GetDirectoryName($DataFilePath)
                            if (-not [System.IO.Directory]::Exists($dataDir)) {
                                [System.IO.Directory]::CreateDirectory($dataDir) | Microsoft.PowerShell.Utility\Out-Null
                            }

                            $logDir = [System.IO.Path]::GetDirectoryName($logPath)
                            if (-not [System.IO.Directory]::Exists($logDir)) {
                                [System.IO.Directory]::CreateDirectory($logDir) | Microsoft.PowerShell.Utility\Out-Null
                            }

                            $createQuery = @"
CREATE DATABASE [$DatabaseName]
ON PRIMARY (
    NAME = N'${dbName}',
    FILENAME = N'${DataFilePath}',
    SIZE = 8MB,
    FILEGROWTH = 64MB
)
LOG ON (
    NAME = N'${dbName}_log',
    FILENAME = N'${logPath}',
    SIZE = 8MB,
    FILEGROWTH = 64MB
)
"@
                        }
                        else {
                            # Standard database with default file locations
                            $createQuery = "CREATE DATABASE [$DatabaseName]"
                        }

                        $createCommand = $connection.CreateCommand()
                        $createCommand.CommandText = $createQuery
                        $createCommand.ExecuteNonQuery()

                        Microsoft.PowerShell.Utility\Write-Verbose "Successfully created database '$DatabaseName' on server '$Server'"

                        # Set recovery model to SIMPLE to avoid excessive log file growth
                        $recoveryCommand = $connection.CreateCommand()
                        $recoveryCommand.CommandText = "ALTER DATABASE [$DatabaseName] SET RECOVERY SIMPLE"
                        $recoveryCommand.ExecuteNonQuery()
                        Microsoft.PowerShell.Utility\Write-Verbose "Set recovery model to SIMPLE for database '$DatabaseName'"

                        # Detach if requested (typically for file-based databases)
                        if ($DetachAfterCreation) {
                            $detachCommand = $connection.CreateCommand()
                            $detachCommand.CommandText = "EXEC sp_detach_db @dbname = N'$DatabaseName'"
                            $detachCommand.ExecuteNonQuery()
                            Microsoft.PowerShell.Utility\Write-Verbose "Detached database '$DatabaseName' from server '$Server'"
                        }
                    }
                    else {
                        Microsoft.PowerShell.Utility\Write-Verbose "Database '$DatabaseName' already exists on server '$Server'"
                    }
                }

                $connection.Close()
            }
            catch {
                if ($null -ne $connection -and $connection.State -eq 'Open') {
                    $connection.Close()
                }
                throw "Failed to create database. Error: $($_.Exception.Message)"
            }
        }
    }

    end {
    }
}

