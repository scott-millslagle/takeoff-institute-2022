FROM gitpod/workspace-full:latest

USER gitpod

RUN pip update \
    export AIRFLOW_HOME=~/airflow \
    AIRFLOW_VERSION=2.3.3 \
    PYTHON_VERSION="$(python --version | cut -d " " -f 2 | cut -d "." -f 1-2)" \
    CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt" \
    pip install "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}" \
    airflow db init \
    airflow users create \
    --username admin \
    --firstname takeoff \
    --lastname institute \
    --role Admin \
    airflow webserver --port 8080 \
    airflow scheduler \
