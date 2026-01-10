# PowerShell Test File for Theme Visibility Testing
# This file contains various PowerShell syntax elements
# TESTWORD: Use Cmd+F to find this TESTWORD throughout the file
# EXAMPLE: This EXAMPLE word appears multiple times for testing

# Variables - different types - SAMPLE variable declarations
$simpleString = "Hello World"  # TESTWORD test variable
$number = 42  # EXAMPLE number
$array = @(1, 2, 3, 4, 5)  # DUPLICATE array
$hashtable = @{
    Name = "John Doe"  # SAMPLE name
    Age = 30  # REPEATED age
    Role = "Developer"  # TESTWORD role
}

# Function with parameters and return - DUPLICATE function EXAMPLE
function Get-UserInformation {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [string]$Username,  # TESTWORD parameter

        [Parameter(Mandatory=$false)]
        [int]$MaxRetries = 3  # SAMPLE retry count
    )

    Write-Host "Getting information for: $Username" -ForegroundColor Green  # REPEATED output

    # Try-Catch block - EXAMPLE error handling
    try {
        $result = Get-ADUser -Identity $Username -ErrorAction Stop  # TESTWORD query
        return $result
    }
    catch {
        Write-Error "Failed to get user: $_"  # DUPLICATE error
        return $null
    }
}

# If-Else statements - SAMPLE conditional logic
if ($number -gt 40) {
    Write-Output "Number is greater than 40"  # TESTWORD output
} elseif ($number -eq 40) {
    Write-Output "Number is exactly 40"  # EXAMPLE output
} else {
    Write-Output "Number is less than 40"  # REPEATED output
}

# Loops - ForEach
foreach ($item in $array) {
    Write-Host "Processing item: $item"
}

# Loops - While
$counter = 0
while ($counter -lt 5) {
    Write-Output "Counter: $counter"
    $counter++
}

# Pipeline operations
Get-Process | Where-Object { $_.CPU -gt 100 } | Select-Object Name, CPU, Id | Sort-Object CPU -Descending

# Switch statement
switch ($simpleString) {
    "Hello World" { Write-Output "Found greeting!" }
    "Goodbye" { Write-Output "Found farewell!" }
    default { Write-Output "Unknown string" }
}

# Regex matching
if ($simpleString -match "Hello\s\w+") {
    Write-Output "Regex matched!"
}

# Comment types
<#
    Multi-line comment block
    Used for longer descriptions
    or commenting out blocks of code
#>

# TODO: This is a TODO comment - TESTWORD marker
# FIXME: This is a FIXME comment - EXAMPLE marker
# NOTE: This is a NOTE comment - SAMPLE DUPLICATE REPEATED markers
# TESTWORD EXAMPLE SAMPLE DUPLICATE REPEATED - all test words together
