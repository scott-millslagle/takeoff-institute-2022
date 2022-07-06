FROM gitpod/workspace-full:latest

USER gitpod

RUN pip3 install  \
    apache-airflow==2.3.2