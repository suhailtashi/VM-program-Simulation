# Vulnerability Management Program Implementation

This project walks through a full simulation of building a vulnerability management program from the ground up. Starting with no policy in place, and ending with a fully functional and tested remediation cycle.

- **Starting Point:** No existing vulnerability management framework or policy.
- **Final Outcome:** A formal policy is rolled out, stakeholder alignment is achieved, and a full remediation lifecycle is completed across the environment.

---

<img width="1000" alt="image" src="https://github.com/user-attachments/assets/cfc5dbcf-3fcb-4a71-9c13-2a49f8bab3e6">

## 🔧 Technologies Used

- **Tenable** – Enterprise vulnerability management (Nessus for scanning)
- **Azure VMs** – Scan targets and scan engine host
- **PowerShell & Bash** – Custom remediation scripting

---


# Table of Contents

- [Vulnerability Management Policy Draft Creation](#vulnerability-management-policy-draft-creation)
- [Mock Meeting: Policy Buy-In (Stakeholders)](#step-2-mock-meeting-policy-buy-in-stakeholders)
- [Policy Finalization and Senior Leadership Sign-Off](#step-3-policy-finalization-and-senior-leadership-sign-off)
- [Mock Meeting: Initial Scan Permission (Server Team)](#step-4-mock-meeting-initial-scan-permission-server-team)
- [Initial Scan of Server Team Assets](#step-5-initial-scan-of-server-team-assets)
- [Vulnerability Assessment and Prioritization](#step-6-vulnerability-assessment-and-prioritization)
- [Distributing Remediations to Remediation Teams](#step-7-distributing-remediations-to-remediation-teams)
- [Mock Meeting: Post-Initial Discovery Scan (Server Team)](#step-8-mock-meeting-post-initial-discovery-scan-server-team)
- [Mock CAB Meeting: Implementing Remediations](#step-9-mock-cab-meeting-implementing-remediations)
- [Remediation Round 1: Outdated Wireshark Removal](#remediation-round-1-outdated-wireshark-removal)
- [Remediation Round 2: Insecure Protocols & Ciphers](#remediation-round-2-insecure-protocols--ciphers)
- [Remediation Round 3: Guest Account Group Membership](#remediation-round-3-guest-account-group-membership)
- [Remediation Round 4: Windows OS Updates](#remediation-round-4-windows-os-updates)
- [Remediation Round 5: Certificate Trust Bypass (CVE-2013-3900)](#remediation-round-5-certificate-trust-bypass-cve-2013-3900--smb-signing-enforcement)
- [First Cycle Remediation Effort Summary](#first-cycle-remediation-effort-summary)

---

### Vulnerability Management Policy Draft Creation

This phase focuses on drafting a Vulnerability Management Policy as a starting point for stakeholder engagement. The initial draft outlines scope, responsibilities, and remediation timelines, and may be adjusted based on feedback from relevant departments to ensure practical implementation before final approval by upper management.  
[Draft Policy](https://docs.google.com/document/d/1OZNUPAKGgU6FN7_r8ducf47bTqkq5Z1gG84b28w8SnM/edit?usp=sharing)

---

### Step 2) Mock Meeting: Policy Buy-In (Stakeholders)

In this phase, a meeting with the server team introduces the draft Vulnerability Management Policy and assesses their capability to meet remediation timelines. Feedback leads to adjustments, like extending the critical remediation window from 48 hours to one week, ensuring collaborative implementation.

<a href='https://youtu.be/_Dd3Mzivk9w?si=bAzqfu1bKw-hYnfH' target="_"><img width="600" alt="image" src="https://github.com/user-attachments/assets/f0527137-ba1d-4f5c-9eec-21b7fe658cda"></a>



[YouTube Video: Stakeholder Policy Buy-In Meeting](https://youtu.be/_Dd3Mzivk9w?si=bAzqfu1bKw-hYnfH)

---

### Step 3) Policy Finalization and Senior Leadership Sign-Off

After gathering feedback from the server team, the policy is revised, addressing aggressive remediation timelines. With final approval from upper management, the policy now guides the program, ensuring compliance and reference for pushback resolution.  
[Finalized Policy](https://docs.google.com/document/d/1gMHGbobC-UQQ3vzkS2QO7yCioJgQqN13v4MEK5oeSVM/edit?usp=sharing)
<div style="text-align: center;">
    <img src="https://github.com/user-attachments/assets/f86a2851-af35-47a8-92ac-321653cd4197" alt="image" width="400">

</div>

---

### Step 4) Mock Meeting: Initial Scan Permission (Server Team)

The team collaborates with the server team to initiate scheduled credential scans. A compromise is reached to scan a single server first, monitoring resource impact, and using just-in-time Active Directory credentials for secure, controlled access.  

<a href='https://youtu.be/cuktQuDc6xE?si=1cLLNvhVszSS8Zmv' target="_"><img width="600" alt="image" src="https://github.com/user-attachments/assets/cd94b659-f6c8-40b3-adbd-9d712fb8ba8d"></a>

[YouTube Video: Initial Discovery Scan](https://youtu.be/cuktQuDc6xE?si=1cLLNvhVszSS8Zmv)

---

### Step 5) Initial Scan of Server Team Assets

In this phase, an insecure Windows Server is provisioned to simulate the server team's environment. After creating vulnerabilities, an authenticated scan is performed, and the results are exported for future remediation steps.  

<img width="635" alt="image" src="https://github.com/user-attachments/assets/c0400a7f-7c59-4711-ad20-b82353bbc2d3" style="border: 2px solid black;">

[Scan 1 - Initial Scan](https://drive.google.com/file/d/1bdTIsjVUDZR00YsX0yteA5y-SzsipkYv/view?usp=sharing)




---

### Step 6) Vulnerability Assessment and Prioritization

We assessed vulnerabilities and established a remediation prioritization strategy based on ease of remediation and impact. The following priorities were set:

1. Third Party Software Removal (Wireshark)
2. Windows OS Secure Configuration (Protocols & Ciphers)
3. Windows OS Secure Configuration (Guest Account Group Membership)
4. Windows OS Updates
5. Windows OS Secure Configuration (WinVerifyTrust Signature Padding Check & SMB Signing Enforcement)
---

### Step 7) Distributing Remediations to Remediation Teams

The server team received remediation scripts and scan reports to address key vulnerabilities. This streamlined their efforts and prepared them for a follow-up review.  

<img width="635" alt="image" src="https://github.com/user-attachments/assets/c04dd4b1-deb1-449f-9212-b304a52fd97a">

[Remediation Email](https://github.com/suhailtashi/vulnerability-management-program/blob/main/remediation-email.md)

---

### Step 8) Mock Meeting: Post-Initial Discovery Scan (Server Team)

The server team reviewed vulnerability scan results, identifying outdated software, insecure accounts, and deprecated protocols. The remediation packages were prepared for submission to the Change Control Board (CAB). 

<a href="https://youtu.be/moMX0jtLCdg?si=GeDHR3aHpzvSiLmY" target="_"><img width="600" src="https://github.com/user-attachments/assets/6a02aea0-d8e3-4fd7-9e5b-e218e0de8f5b"/></a>

[Meeting Video](https://youtu.be/moMX0jtLCdg?si=GeDHR3aHpzvSiLmY)

---

### Step 9) Mock CAB Meeting: Implementing Remediations

The Change Control Board (CAB) reviewed and approved the plan to remove insecure protocols and cipher suites. The plan included a rollback script and a tiered deployment approach.  

<a href="https://youtu.be/" target="_"><img width="600" src="https://github.com/user-attachments/assets/fe910022-c90a-4b75-807a-8d48c35840e8"/></a>

[Meeting Video](https://youtu.be/)

---
### Step 10 ) Remediation Effort

#### Remediation Round 1: Outdated Wireshark Removal

The server team used a PowerShell script to remove outdated Wireshark. A follow-up scan confirmed successful remediation.  
[Wireshark Removal Script](https://github.com/suhailtashi/vulnerability-management-program/blob/main/Remediation%20Scripts/remediation-wireshark-uninstall.ps1)  

<img width="634" alt="image" src="https://github.com/user-attachments/assets/53d5172d-0a31-4b86-a27e-ddb4d993b6f1">

[Scan 2 - Third Party Software Removal](https://drive.google.com/file/d/1JzqZDlNsKDH7PpgjUgHZwrVxdxXLDsvj/view?usp=sharing)

#### Remediation Round 2: Insecure Protocols & Ciphers

The server team used PowerShell scripts to remediate insecure protocols and cipher suites. A follow-up scan verified successful remediation, and the results were saved for reference.  
[PowerShell: Insecure Protocols Remediation](https://github.com/suhailtashi/vulnerability-management-program/blob/main/Remediation%20Scripts/toggle-protocols.ps1)
[PowerShell: Insecure Ciphers Remediation](https://github.com/suhailtashi/vulnerability-management-program/blob/main/Remediation%20Scripts/toggle-cipher-suites.ps1)

<img width="630" alt="image" src="https://github.com/user-attachments/assets/e39db892-1517-40e6-af8c-1d613dcdffb2">

[Scan 3 - Ciphersuites and Protocols](https://drive.google.com/file/d/1Y6SvxwpHmj7VdYnjEJ2OQAWPpkDoaWhX/view?usp=sharing)


#### Remediation Round 3: Guest Account Group Membership

The server team removed the guest account from the administrator group. A new scan confirmed remediation, and the results were exported for comparison.  
[PowerShell: Guest Account Group Membership Remediation](https://github.com/suhailtashi/vulnerability-management-program/blob/main/Remediation%20Scripts/toggle-guest-local-administrators.ps1)  

<img width="627" alt="image" src="https://github.com/user-attachments/assets/12aebec3-6000-44cf-a872-5f77b94ad029">

[Scan 4 - Guest Account Group Removal](https://drive.google.com/file/d/16BR8Z2vG3uVRjS3jSrVUj79w8qpkD8KT/view?usp=sharing)


#### Remediation Round 4: Windows OS Updates

Windows updates were re-enabled and applied until the system was fully up to date. A follow-up scan verified the changes, in preperation for the final round.

<img width="627" alt="image" src="https://github.com/user-attachments/assets/2092eee3-58b9-43cc-a67e-447da41fb130">

[Scan 5 - Post Windows Updates](https://drive.google.com/file/d/1TPp3UJxYyRgXtpm0MiERuPxAYfG3Qem_/view?usp=sharing)

#### Remediation Round 5: Certificate Trust Bypass (CVE-2013-3900) & SMB Signing Enforcement

The server team used PowerShell scripts to apply the CVE-2013-3900 registry mitigation and enforce SMB signing via local policy configuration. A final scan verified successful remediation, and the results were saved for reference.  
[PowerShell: CVE-2013-3900 Mitigation](https://github.com/suhailtashi/vulnerability-management-program/blob/main/Remediation%20Scripts/CVE-2013-3900%20Mitigation.ps1)  
[PowerShell: SMB Signing Enforcement](https://github.com/suhailtashi/vulnerability-management-program/blob/main/Remediation%20Scripts/SMB%20Signing%20Required%20enforcement.ps1)

<img width="627" alt="image" src="https://github.com/user-attachments/assets/d61f4f20-0cfb-4fd6-beff-245a29f989f6">

[Scan 6 - CVE-2013-3900 Patch & SMB Fix](https://drive.google.com/file/d/1Mh84857PWtjelQ38Vakm6O95wd4x4L8G/view?usp=sharing)

---

### First Cycle Remediation Effort Summary

The remediation process reduced total vulnerabilities by **87%**, from 30 in Scan 1 to 4 in Scan 6.  
- **Critical vulnerabilities** were eliminated entirely by Scan 2 (100% reduction).  
- **High vulnerabilities** dropped by 90%, from 10 to 1.  
- **Medium vulnerabilities** were reduced by 82%, from 17 to 3.  
- **Low vulnerabilities** remained constant, with 1 identified in each scan.

This trend demonstrates effective remediation across multiple severity levels. In a production environment, asset criticality and risk tolerance would further guide prioritization in future cycles.  

<img width="1920" alt="image" src="https://github.com/user-attachments/assets/d5864854-faf7-47a5-9528-9b5dd4b53876">


[Remediation Data](https://docs.google.com/spreadsheets/d/1_fzKfQfXqMSg8cw1wEN49fZ4KFz6YRk8lVyyA5Y31W0/edit?usp=sharing)

---

### On-going Vulnerability Management (Maintenance Mode)

After completing the initial remediation cycle, the vulnerability management program transitions into **Maintenance Mode**. This phase ensures that vulnerabilities continue to be managed proactively, keeping systems secure over time. Regular scans, continuous monitoring, and timely remediation are crucial components of this phase. (See [Finalized Policy](https://docs.google.com/document/d/1gMHGbobC-UQQ3vzkS2QO7yCioJgQqN13v4MEK5oeSVM/edit?usp=sharing) for scanning and remediation cadence requirements.)

Key activities in Maintenance Mode include:
- **Scheduled Vulnerability Scans**: Perform regular scans (e.g., weekly or monthly) to detect new vulnerabilities as systems evolve.
- **Patch Management**: Continuously apply security patches and updates, ensuring no critical vulnerabilities remain unpatched.
- **Remediation Follow-ups**: Address newly identified vulnerabilities promptly, prioritizing based on risk and impact.
- **Policy Review and Updates**: Periodically review the Vulnerability Management Policy to ensure it aligns with the latest security best practices and organizational needs.
- **Audit and Compliance**: Conduct internal audits to ensure compliance with the vulnerability management policy and external regulations.
- **Ongoing Communication with Stakeholders**: Maintain open communication with teams responsible for remediation, ensuring efficient coordination.

By maintaining an active vulnerability management process, organizations can stay ahead of emerging threats and ensure long-term security resilience.

### Special Thanks To
- **Josh Madakor** for creating the [Cyber Range](https://www.skool.com/cyber-range/about?ref=55aab77677f844cba064b72c3d055fca) which this project was a part of.
- **Ibrahim Hefzulla** for participating in the mock meetings.
