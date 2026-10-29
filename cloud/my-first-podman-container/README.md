# My First Podman Container

A step-by-step tutorial to build and run a rootless web server container using Podman.

## How to use this tutorial

### 1. Build the container image
Run this command in the directory containing the `Containerfile` and `index.html`:
```bash
podman build -t my-web-server .
```

### 2. Run the rootless container
Launch the container by mapping port 8080 of your machine to port 8080 of the container:
```bash
podman run -d -p 8080:8080 --name my-running-server my-web-server
```

### 3. Test your website
Open your browser and navigate to:
```text
http://localhost:8080
```

---

## Technical Explanations (Containerfile)

Here is what happens under the hood in our `Containerfile`:

* **`FROM ... nginx-unprivileged:stable-alpine`**
  * **Registry & Security:** Downloads an official Nginx web server from a secured OpenShift registry.
  * **Unprivileged:** Configured to run without "Root" (admin) privileges. If a hacker breaches the website, they remain trapped inside the container without affecting the host Linux system.
  * **Alpine Linux:** Uses an ultra-lightweight Linux distribution (only 5 MB!). It reduces the *attack surface* by removing unnecessary tools, making it extremely secure and fast to boot.

* **`COPY index.html ...`**
  * Copies our local web page into the container's internal folder where Nginx looks for files to display.

* **`EXPOSE 8080`**
  * Opens a communication port. Since containers are isolated boxes by default, this creates a gateway allowing your web browser to access the website inside.
