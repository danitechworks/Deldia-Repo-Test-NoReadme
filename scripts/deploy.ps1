# Display a deployment simulation; no resources are changed.
param([string]$Environment = 'example')

$settings = @{
    Name = 'DelDia <Preview> & Demo'
    Port = 8080
    Enabled = $true
    Steps = @('Validate', 'Preview', 'Finish')
}

function Show-Deployment {
    param([hashtable]$Configuration)
    foreach ($step in $Configuration.Steps) {
        Write-Output ("{0}: {1}" -f $step, $Configuration.Name)
    }
}

Write-Output "Simulation environment: $Environment"
Show-Deployment -Configuration $settings
