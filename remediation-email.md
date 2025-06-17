**Subject:** Vulnerability Remediation Scripts for Testing and Deployment

**Hi LambVda Server Team,**

Based on our initial vulnerability scan and assessment, we have created a set of scripts to help you tackle the initial remediation efforts. These scripts target key vulnerabilities and can be easily integrated into your deployment platform (e.g., SCCM). Please test them before deploying to production.

### Vulnerabilities and Remediations:
1. [**Third-Party Software Removal (Wireshark)**](https://github.com/suhailtashi/VM-program-Simulation/blob/main/Remediation%20Scripts/remediation-wireshark-uninstall.ps1)
2. [**Windows OS Secure Configuration (Insecure Protocols)**](https://github.com/suhailtashi/VM-program-Simulation/blob/main/Remediation%20Scripts/toggle-protocols.ps1)
3. [**Windows OS Secure Configuration (Insecure Ciphersuites)**](https://github.com/suhailtashi/VM-program-Simulation/blob/main/Remediation%20Scripts/toggle-cipher-suites.ps1)
4. [**Windows OS Secure Configuration (Guest Account Group Membership)**](https://github.com/suhailtashi/VM-program-Simulation/blob/main/Remediation%20Scripts/toggle-guest-local-administrators.ps1)
5. [**Windows OS Secure Configuration (CVE-2013-3900 Mitigation)**](https://github.com/suhailtashi/VM-program-Simulation/blob/main/Remediation%20Scripts/CVE-2013-3900%20Mitigation.ps1)
6. [**Windows OS Secure Configuration (SMB Signing Enforcement)**](https://github.com/suhailtashi/VM-program-Simulation/blob/main/Remediation%20Scripts/SMB%20Signing%20Required%20enforcement.ps1)

Let me know if you have any questions or need any adjustments!

Best regards,

**Suhail Al-Tashi, Security Analyst**<br/>
**Governance, Risk, and Compliance**
