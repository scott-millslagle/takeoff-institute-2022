FROM gitpod/workspace-full:latest

USER gitpod

RUN pip install --upgrade pip \
    "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"
