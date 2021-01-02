FROM continuumio/anaconda3

RUN pip install DA-DAPPER==1.1.0

EXPOSE 8888

CMD [ "opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root" ]