# GraphNN Workspace
Use this workspace to tinker with `torch_geometric` and such with CUDA. 

## Docker Stuff
Using `nvidia-docker`:

```
nvidia-docker build -t graphs:latest .
nvidia-docker run -it -p 8888:8888 --mount type=bind,source="$(pwd)",target=/workspace graphs:latest
```

From inside container:

```
jupyter notebook --ip 0.0.0.0 --no-browser --allow-root
```

Then copy-paste token from terminal output and use this url to access:

```
localhost:8888/?token=<tokenz>
```