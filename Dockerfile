FROM jupyter/tensorflow-notebook
MAINTAINER Tetsutaro Ueda <tueda1207@gmail.com>

# Add 'conda-forge' to '.condarc' and lower its priority
RUN conda config --append channels conda-forge

# Install Jupyter notebook extensions
RUN conda install --quiet --yes \
    jupyter_contrib_nbextensions

# Install Jupyter-vim-binding
RUN git clone --quiet https://github.com/lambdalisue/jupyter-vim-binding $(jupyter --data-dir)/nbextensions/vim_binding && \
    jupyter nbextension enable vim_binding/vim_binding
