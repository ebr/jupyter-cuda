FROM brodsky/jupyter-minimal-notebook-cudnn8-cuda11.4.0-runtime-ubuntu20.04



RUN conda install pytorch torchvision torchaudio cudatoolkit=11.6 -c pytorch
RUN conda install ipywidgets
RUN jupyter nbextension enable --py widgetsnbextension --sys-prefix
