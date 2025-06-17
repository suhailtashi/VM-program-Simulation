<#
.SYNOPSIS
    Enforces SMB (Server Message Block) signing requirements by configuring 
    'RequireSecuritySignature' and 'EnableSecuritySignature' registry values 
    for both client and server components in Windows. This hardening step 
    mitigates the risk of man-in-the-middle (MITM) attacks on SMB traffic by 
    requiring cryptographic signing of all SMB communications.

    This script applies only to SMBv2 and SMBv3 protocols (SMBv1 is not addressed).
    It is essential for environments seeking compliance with security baselines 
    such as CIS, DISA STIG, or Microsoft Secure Score.

    WARNING: Enabling SMB signing may impact performance in high-throughput 
    environments and could affect interoperability with non-compliant systems.

    Must be run with Administrator privileges.
    Always test in a non-production environment before wide deployment.

.NOTES
    Author        : Suhail Al-Tashi
    Date Created  : 2025-06-14
    Last Modified : 2025-06-14
    Version       : 1.0

.TESTED ON
    Date(s) Tested  : 2025-06-14
    Tested By       : Suhail Al-Tashi
    Systems Tested  : Windows Server 2019 Datacenter, Build 1809
    PowerShell Ver. : 5.1.17763.6189
#>
Write-Output "`n============================="
Write-Output " Enforcing SMB Signing Policy"
Write-Output "=============================`n"

# Server-side setting: Require SMB signing
$serverKey = "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters"
if (Test-Path $serverKey) {
    Set-ItemProperty -Path $serverKey -Name "RequireSecuritySignature" -Value 1 -Force
    Write-Output "SMB signing is now required on the server."
} else {
    Write-Output "Server registry key not found: $serverKey"
}

# Optional: Enable server to support signing (should already be enabled by default)
Set-ItemProperty -Path $serverKey -Name "EnableSecuritySignature" -Value 1 -Force

# Client-side setting: Require SMB signing
$clientKey = "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters"
if (Test-Path $clientKey) {
    Set-ItemProperty -Path $clientKey -Name "RequireSecuritySignature" -Value 1 -Force
    Write-Output "SMB signing is now required on the client."
} else {
    Write-Output "Client registry key not found: $clientKey"
}

# Optional: Enable client to support signing (should already be enabled by default)
Set-ItemProperty -Path $clientKey -Name "EnableSecuritySignature" -Value 1 -Force

# Confirm applied settings
Write-Output "`nReviewing final SMB configuration:"
Get-SmbServerConfiguration | Select-Object EnableSecuritySignature, RequireSecuritySignature

Write-Output "`n Reboot recommended to apply all changes properly."
