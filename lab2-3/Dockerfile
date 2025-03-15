# Сборка
FROM python:3.8-slim AS builder

WORKDIR /usr/src

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY src .

# Запуск
FROM python:3.8-slim AS runner

ARG GROUP_NAME=app_group
ARG USER_NAME=app_user

RUN addgroup -S $GROUP_NAME && adduser -S $USER_NAME -G $GROUP_NAME

USER $USER_NAME

WORKDIR /usr/src

COPY --from=builder /usr/src /usr/src
RUN pip install -r requirements.txt

CMD ["python", "app.py"]
