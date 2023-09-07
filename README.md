# docker cadmium usage example
This is a example Dockerized simulation using the Cadmium Simulator docker container.

The example contains a Dockerfile that pulls Cadmium simulator image, run build via cmake of the code in the workspace to create a simulation image.

The simulation example can later be run by `docker run` to get the dynamic behavior generated log.


## How to build your simulation
Replace the cpp files in SRC directory.
Update the CMakeLists.txt file if required, most cases do not require it.
Then  build the simulation docker image by running:
```
docker build . --tag my_simulation_img
```

## How to run your simulation
Once the image is build, its run can be started by:
```
docker run --name mysimulation_cont my_simulation_img:latest
```

