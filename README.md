# GraphNN Workspace - CS224W (Local)
This is a helper repository to help students and auditors of [CS224W](http://web.stanford.edu/class/cs224w/index.html) run the class notebooks locally - if you have a GPU on your computer, maybe you want to use it instead of Google collab to run everything. That's what I wanted to do. I set this project up to help myself, and perhaps others, get the class workbooks to run on our local machines.<br><br>
OR: Use this workspace to tinker with `torch_geometric` and such with CUDA locally.


## CS224W Stuff
The notebook contents of [cs224w](cs224w/) are taken from [Stanford's snap website](http://web.stanford.edu/class/cs224w/index.html) and are not mine - they have been slightly modified for running in vanilla jupyter and the solutions ARE mine. I am not a student nor faculty so I cannot vouch for my solutions, whether they are correct (they have not been graded!!)

## Docker Stuff
This project relies on using `nvidia-docker`, a version of docker that plays nice with NVIDIA graphics cards and CUDA. This miraculous technology allows me to run CUDA 11.2 on my system but use CUDA 10.X within my CS224W environment.<br><br>
Using `nvidia-docker` (for build, nvidia-docker probably isn't necessary):

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
