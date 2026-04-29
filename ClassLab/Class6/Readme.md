# Uploding Image on Docker Hub

## Login/SignUp on docker hub website

Login and get your username

![login](img/login.png)

Inside WSL:

---

```bash
docker login
```

![dokerLogin](img/dokerLogin.png)

---

## Push image to docker hub

Check for images available:

```bash
docker images
```

Add label:

```bash
docker tag java-app rajrishu14
01/java-app
```

Push the image

```bash
docker tag java-app rajrishu14
01/java-app
```

![push](img/push.png)

## Result

image add to our repository:

![repo](img/repo.png)

