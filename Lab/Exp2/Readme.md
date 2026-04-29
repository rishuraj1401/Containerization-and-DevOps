## Experiment 2

### Docker Installation, Configuration, and Running Images

---

### Objective

* Pull Docker images
* Run containers
* Manage container lifecycle

---

### Procedure

#### Step 1: Pull Image

```bash
docker pull nginx
```

![pullNginx](img/pullNginx.png)


---



#### Step 2: Run Container with Port Mapping

```bash
docker run -d -p 8080:80 nginx
```

![VerifyPort](img/VerifyPort.png)

---

#### Step 3: Verify Running Containers

```bash
docker ps
```
![ps](img/ps.png)

---



#### Step 4: Stop and Remove Container

```bash
docker stop <container_id>
docker rm <container_id>
```
![stopRemove](img/stopRemove.png)

---

#### Step 5: Remove Image

```bash
docker rmi nginx
```

![RemoveImg](img/RemoveImg.png)

---

### Result

Docker images were successfully pulled, containers executed, and lifecycle commands performed.

---

## Overall Conclusion

This lab demonstrated virtualization using **Vagrant + VirtualBox** and containerization using **Docker**, highlighting clear performance and resource efficiency differences. Containers are better suited for rapid deployment and microservices, while VMs provide stronger isolation.