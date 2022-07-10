FROM gitpod/workspace-base:latest

USER gitpod

RUN pip install apache-airflow[celery]==2.3.2  \
    --constraint "https://raw.githubusercontent.com/apache/airflow/constraints-2.3.2/constraints-3.7.txt"