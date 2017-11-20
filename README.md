
# Overview
This container is supposed to be used when developing an offical Docker training module. It can be used to test slides of a single training module that is under development without having to always restart the `docker-present` container.

# Building the container
Clone this GitHub repository into a folder on your computer. In a terminal navigate to the folder and execute

```
docker build -t training/slides-tester .
```

# Usage
1. Check out [https://github.com/docker-training/presentations](https://github.com/docker-training/presentations)
2. Navigate to the root folder of the above repository
3. Execute the script `slides-tester.sh` as follows:

    ```
    $ ./slides-tester.sh <relative path to module> <port>
    ```

   where `<relative path to module>` is the relative path to the module whose slides you want to live edit and `<port>` is the public port to which the slides are mapped (if omitted it is `8080`)

4. In your browser navigate to `localhost:<port>`

**Note:** After an edit of the slides you need to hard refresh your browser (Mac: `SHIFT-COMMAND-R`; Windows: `SHIFT-CTRL-R`)
