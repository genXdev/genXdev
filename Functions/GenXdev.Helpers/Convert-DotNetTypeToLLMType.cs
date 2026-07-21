// ################################################################################
// Part of PowerShell module : GenXdev.Helpers
// Original cmdlet filename  : Convert-DotNetTypeToLLMType.cs
// Original author           : René Vaessen / GenXdev
// Version                   : 3.26.2026
// ################################################################################
// Copyright (c) 2026 René Vaessen / GenXdev
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ################################################################################



using System.Management.Automation;

namespace GenXdev.Helpers
{
    [System.ComponentModel.Description(@"
.SYNOPSIS
Converts .NET type names to LLM (Language Model) type names.
.DESCRIPTION
Takes a .NET type name as input and returns the corresponding simplified type name used in Language Models. It handles common .NET types and provides appropriate type mappings.
.EXAMPLE
```powershell
Convert-DotNetTypeToLLMType -DotNetType ""System.String""
```

Converts a System.String type to its LLM equivalent.
")]
    [Cmdlet(VerbsData.Convert, "DotNetTypeToLLMType")]
    [OutputType(typeof(string))]
    public class ConvertDotNetTypeToLLMTypeCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// The .NET type name to convert to an LLM type name
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            HelpMessage = "The .NET type name to convert to an LLM type name")]
        public string DotNetType { get; set; }

        /// <summary>
        /// Begin processing - initialization logic
        /// </summary>
        protected override void BeginProcessing()
        {
            WriteVerbose($"Converting .NET type '{DotNetType}' to LLM type");
        }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Convert the .net type to a simplified llm type using a switch statement
            // Note: For MCP content types, arrays should be treated as objects since 'array' is not a valid MCP content type
            string result = DotNetType switch
            {
                "System.Management.Automation.SwitchParameter" => "boolean",
                "System.Management.Automation.PSObject" => "object",
                "System.String" => "string",
                "System.Int32" => "number",
                "System.Int64" => "number",
                "System.Double" => "number",
                "System.Boolean" => "boolean",
                "System.Object[]" => "object",
                "System.Collections.Generic.List`1" => "object",
                "System.Collections.Hashtable" => "object",
                "System.Collections.Generic.Dictionary`2" => "object",
                _ => "object"
            };

            WriteVerbose($"Converted '{DotNetType}' to '{result}'");

            WriteObject(result);
        }

        /// <summary>
        /// End processing - cleanup logic
        /// </summary>
        protected override void EndProcessing()
        {
        }
    }
}