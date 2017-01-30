
# Introduction
This container can be used to test slides of a training module that are under development without having to always restart.

To use it open a terminal window and navigate into the folder that contains your module. Then execute the following command

```
docker container run --rm -it \
    -v `pwd`/slides.html:/app/slides.html \
    -v `pwd`/images:/app/images \
    -p 8080:8080 \
    training/test-slides
```

Open a browser at `http://localhost:8080/index.html`

Note: If you update the slides you might need to force refresh the browser (<SHIFT>-click on the refresh button of the browser) to see the changes.