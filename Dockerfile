FROM python:3.10.6-slim-bullseye


ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Sao_Paulo
ENV LOCALE=pt_BR.UTF-8
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONFAULTHANDLER 1

WORKDIR /app
ENV PYTHONPATH=/app

# instal container dependences
RUN apt-get update -yy \
    && apt-get install -yy libpq-dev make git \
    && pip install --upgrade pip \
    && pip install --no-cache-dir pipenv


# Copy pipfile and install dependencies

COPY Pipfile Pipfile.lock* /app/

# install dependencies
RUN pipenv install --dev

COPY . .

CMD ["tail", "-f", "/dev/null"]