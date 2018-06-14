FROM jupyter/datascience-notebook
MAINTAINER Tetsutaro Ueda <tueda1207@gmail.com>

# Install Jupyter
RUN pip --no-cache-dir install \
    jupyterthemes && \
    jt -t chesterish

# Install Jupyter notebook extensions
RUN conda install --quiet --yes \
    jupyter_contrib_nbextensions
