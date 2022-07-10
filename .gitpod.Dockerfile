FROM gitpod/workspace-base:latest

USER gitpod

RUN curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.3.2/docker-compose.yaml'