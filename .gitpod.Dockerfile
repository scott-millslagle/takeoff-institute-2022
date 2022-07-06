FROM gitpod/workspace-full:latest

USER gitpod

RUN pip install  \
    apache-airflow==2.3.2