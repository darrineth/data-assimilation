FROM continuumio/anaconda3

RUN pip install numpy scipy numba pyfftw
RUN apt-get update && apt-get install --reinstall build-essential -y && apt-get install gcc -y

RUN git clone https://github.com/thiery-lab/data-assimilation.git /tmp/data-assimilation
RUN cd /tmp/data-assimilation && python setup.py build_ext --use-cython && python setup.py install

RUN git clone https://github.com/cknd/pyESN.git /tmp/pyESN

ADD ./static/ /opt/static/

EXPOSE 8888

CMD [ "opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root" ]