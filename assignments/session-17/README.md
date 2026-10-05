# Session 17: DevSecOps Demo Project

In modern software delivery, security is integrated directly into the CI/CD pipeline ("shifting security left"). This guarantees that every commit is built, tested, scanned for code vulnerabilities, checked for insecure dependencies, audited for leaked secrets, containerized, and scanned for CVEs before being allowed through automated Security Gates to Docker Hub and Kubernetes.

---

## Practical Implementation

### 1. GitHub Actions Workflow Trigger & Jobs Graph
![Workflow Run Graph](./screenshots/image.png)

---

### 2. Unit Testing & SAST (CodeQL) Execution
![Unit Tests](./screenshots/image-1.png)

![SAST CodeQL](./screenshots/image-2.png)

---

### 3. SCA (pip-audit) & Secret Scanning Execution
![SCA and Secret Scanning Logs](./screenshots/image-3.png)

---

### 4. Docker Build & Trivy Image Security Scan
![Docker Build](./screenshots/image-4.png)

![Trivy Scan](./screenshots/image-5.png)

---

### 5. Docker Hub Push & Kubernetes Rollout Verification
![Docker Hub Push](./screenshots/image-6.png)

![Kubernetes Deployment](./screenshots/image-7.png)

---
