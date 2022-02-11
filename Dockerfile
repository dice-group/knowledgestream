FROM python:2.7.18

# Install dependencies
RUN pip install Cython==0.28.5 numpy==1.16.6 pandas==0.24.2 scipy==1.2.3 ujson==2.0.3 scikit-learn==0.20.4

# Copy kstreams files
COPY datastructures /usr/app/ks/datastructures
COPY algorithms /usr/app/ks/algorithms
COPY setup.py /usr/app/ks
WORKDIR /usr/app/ks

# Build and install kstreams
RUN python setup.py build_ext -if
RUN python setup.py install


