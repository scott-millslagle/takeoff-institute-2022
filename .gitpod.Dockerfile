FROM gitpod/workspace-full:latest

USER gitpod

RUN pip update \
    install "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"
