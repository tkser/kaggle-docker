FROM jupyter/scipy-notebook:lab-3.6.3

# Install JupyterLab extensions
RUN pip install --upgrade pip \
&&  pip install --no-cache-dir \
    jupyterlab-language-pack-ja-JP \
    jupyterlab_code_formatter \
    lckr-jupyterlab-variableinspector \
    jupyterlab_widgets \
    ipywidgets \
    black

# Install RAPIDS
RUN pip install --no-cache-dir --extra-index-url https://pypi.nvidia.com \
    cudf-cu11 dask-cudf-cu11 cuml-cu11 cugraph-cu11 cuspatial-cu11 cuproj-cu11 cuxfilter-cu11 cucim

# Install PyTorch
RUN pip install --no-cache-dir \
    torch \
    torchvision \
    torchaudio \
    --index-url https://download.pytorch.org/whl/cu118
RUN pip install --no-cache-dir \
    pytorch-lightning \
    pytorch_optimizer

# Install TensorFlow
RUN pip install --no-cache-dir \
    tensorflow \
    tensorflow-datasets \
    tensorflow-addons \
    tensorflow-probability

# Install Keras
RUN pip install --no-cache-dir \
    keras \
    keras-tuner

# Install Others
RUN pip install --no-cache-dir \
    timm \
    albumentations \
    featuretools \
    optuna \
    geopandas \
    polars \
    ttach