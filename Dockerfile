ARG OWNER=jovyan
FROM $OWNER/minimal-notebook

RUN conda install pytorch torchvision torchaudio cudatoolkit=11.6 -c pytorch
RUN conda install ipywidgets jupyter_http_over_ws
RUN jupyter nbextension enable --py widgetsnbextension --sys-prefix
RUN jupyter serverextension enable --py jupyter_http_over_ws

# Allow to point Colab at this notebook
ENV NOTEBOOK_ARGS="--NotebookApp.allow_origin='https://colab.research.google.com' --NotebookApp.disable_check_xsrf=true"
