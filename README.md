# 🔧 GL-X750 Spitz Firmware — CI/CD Pipeline & Edge Automation

A CI/CD pipeline and edge automation project built on the GL-iNet GL-X750 Spitz — a 4G LTE router used in industrial and edge computing environments. This project automates the firmware build and validation process using GitHub Actions, and includes custom agents for telemetry monitoring, remote SMS control, and network firewall management.

---

## 🎯 Purpose

This project demonstrates real-world CI/CD pipeline implementation on embedded hardware — automating the build, test, and deployment process so that every code change triggers a validated workflow without manual intervention.

Built to develop hands-on experience with automation pipelines, edge computing concepts, and shell scripting in a Linux-based embedded environment.

---

## 🛠️ Tech Stack

| Tool / Technology | Role |
|---|---|
| GitHub Actions | CI/CD pipeline — automates build and validation on every push |
| Shell Scripting (Bash) | Core scripting language for all agents and configs |
| nftables | Linux firewall framework for network traffic rules |
| GL-X750 Spitz (OpenWrt) | Target hardware — 4G LTE edge router |
| LTE / Cellular Networking | Connectivity layer for telemetry and remote control |

---

## 📁 Project Structure

```
gl-x750-firmware/
├── .github/
│   └── workflows/          ← GitHub Actions CI/CD pipeline definitions
├── lte-edge-telemetry-agent/   ← Monitors and reports LTE signal & network data
├── sms-terminal-controller/    ← Remote device control via SMS commands
├── 10-ttl-mangle.nft           ← Custom nftables firewall & TTL rules
└── README.md
```

---

## ⚙️ Components Breakdown

### 🔄 CI/CD Pipeline — GitHub Actions
Every push to the repository triggers an automated GitHub Actions workflow that:
- Validates shell scripts for syntax errors
- Runs build checks on the firmware components
- Ensures consistent, repeatable deployments without manual steps

This mirrors how professional software teams ship code — no manual deployments, every change is automatically validated.

---

### 📡 LTE Edge Telemetry Agent
A background monitoring agent that:
- Collects real-time LTE signal strength, network quality, and connection data from the router
- Logs telemetry data for monitoring and diagnostics
- Designed to run continuously on the device as a lightweight edge service

**Why it matters:** Edge telemetry is critical in IoT and industrial environments — you need visibility into device health without physically accessing the hardware.

---

### 📲 SMS Terminal Controller
A remote management tool that:
- Listens for incoming SMS commands sent to the router's SIM card
- Executes predefined system actions in response (status checks, restarts, diagnostics)
- Provides a fallback control method when network-based access is unavailable

**Why it matters:** In manufacturing and field environments, SMS-based control is a reliable fallback when internet connectivity is degraded or unavailable.

---

### 🛡️ Firewall & TTL Rules (nftables)
Custom network rules that:
- Manage traffic flow through the router using nftables — the modern Linux firewall framework
- Apply TTL (Time To Live) manipulation to control packet routing behavior
- Enforce security boundaries on inbound and outbound traffic

---

## 🧠 What I Learned

- How CI/CD pipelines work in a real hardware deployment context — not just cloud apps
- How GitHub Actions triggers, jobs, and steps connect to create an automated workflow
- How to write shell scripts that run reliably in a resource-constrained Linux environment
- How edge devices communicate, report telemetry, and accept remote commands
- How nftables manages network security at the firewall level
- The importance of automation in reducing human error during deployments — a principle that applies equally to manufacturing software systems

---

## 📌 Relevance to Software Engineering Roles

This project demonstrates:
- ✅ Real CI/CD pipeline implementation using GitHub Actions
- ✅ Shell scripting in a production Linux environment
- ✅ Automation-first thinking — manual steps replaced with triggered workflows
- ✅ Understanding of networked hardware, telemetry, and remote management
- ✅ Firewall and network security configuration
- ✅ Edge computing concepts applicable to IoT and Digital Manufacturing environments

---

## 👤 Author

**Oluwatobiloba "Toby" Orisadare**
AWS re/Start | Per Scholas
[LinkedIn](https://www.linkedin.com/in/toby-orisadare/)
