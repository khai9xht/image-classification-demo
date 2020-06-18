FROM continuumio/miniconda3
WORKDIR /app
COPY environment.yml .
COPY ./ ./
RUN conda env create -f environment.yml
RUN ls
RUN echo "source activate clsDemo" > ~/.bashrc
ENV PATH /opt/conda/envs/env/bin:$PATH
CMD [ "python", "app.py" ]
