FROM jupyter/scipy-notebook

RUN pip install --upgrade pip

RUN pip install jupyterlab-language-pack-ja-JP