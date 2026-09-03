# Docker Multi-Stage Build & Image Management

## Student Details
- **Name:** `Apurv Dugar` 
- **Enrollment Number:** `24BCS10107` 

---

## Task 1: Run Multi-Stage Dockerfile

### What is a Multi-Stage Docker Build?
A multi-stage build uses multiple `FROM` instructions in a single `Dockerfile`. Each `FROM` instruction begins a new stage of the build. You can selectively copy artifacts from one stage to another, leaving behind everything you don't need in the final image (such as compilers, test dependencies, and temporary build files).

**Benefits:**
1. Drastically reduced final image size.
2. Improved security (fewer packages/tools in production image).
3. Simpler maintenance without needing separate build and runtime scripts.

---

### Step-by-Step Execution

![alt text](image.png)

![alt text](image-1.png)

---

## Task 2: Documentation 

### Application Verification
![alt text](image-1.png)

### Container Status (`docker ps`)
![alt text](image-2.png)

---

## Task 3: Docker Application Deployment (3 Different Types)

Below are three different types of applications containerized and deployed with Docker:

---

### Application 1: Node.js (Express API)
![alt text](./Docker-fundamentals/image.png)

![alt text](./Docker-fundamentals/image-2.png)

---

### Application 2: Python (Flask Web App)
![alt text](./Docker-fundamentals/image-3.png)

![alt text](./Docker-fundamentals/image-5.png)

---

### Application 3: Java (HTTP Microservice)
![alt text](./Docker-fundamentals/image-6.png)
![alt text](./Docker-fundamentals/image-7.png)

---
