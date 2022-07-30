FROM gitpod/workspace-postgresql

USER gitpod

RUN pip install --upgrade pip \
    "apache-airflow==2.3.3" --constraint "https://raw.githubusercontent.com/apache/airflow/constraints-2.3.3/constraints-3.8.txt"
