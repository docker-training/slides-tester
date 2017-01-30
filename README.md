
# Overview
This container is supposed to be used when developing an offical Docker training module. It can be used to test slides of a single training module that is under development without having to always restart the `docker-present` container.

# Building the container
Clone this GitHub repository into a folder on your computer. In a terminal navigate to the folder and execute

```
docker build -t training/slides-tester .
```

# Usage
To use it open a terminal window and navigate into the folder that contains your module. Then execute the following command

```
docker container run --rm -it \
    -v `pwd`/slides.html:/app/slides.html \
    -v `pwd`/images:/app/images \
    -p 8080:8080 \
    training/slides-tester
```

Open a browser at `http://localhost:8080/index.html`

**Note:** If you update the slides you might need to force refresh the browser (<SHIFT>-click on the refresh button of the browser) to see the changes.