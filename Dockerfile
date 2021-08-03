FROM pytorch/pytorch:1.9.0-cuda10.2-cudnn7-runtime

RUN pip install torch-scatter torch-sparse torch-cluster torch-spline-conv torch-geometric -f https://pytorch-geometric.com/whl/torch-1.9.0+cu102.html
RUN pip install jupyter matplotlib seaborn