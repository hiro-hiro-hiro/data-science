FROM jupyter/minimal-notebook
# RUN echo "c.NotebookApp.password='sha1:... としたほうがセキュリティ的に安全
RUN echo "c.NotebookApp.token=''" >> ~/.jupyter/jupyter_notebook_config.py
RUN conda install -y jupyter_contrib_nbextensions