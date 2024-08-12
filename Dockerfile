FROM docker.io/library/python:3.12.5-slim@sha256:105e9d85a67db1602e70fa2bbb49c1e66bae7e3bdcb6259344fe8ca116434f74 AS base
WORKDIR /app
COPY hello_world.py .

FROM base AS test
RUN echo "Hello test"

FROM base AS runtime
RUN echo "Hello runtime"

USER 65532:65532
CMD [ "python", "/app/hello_world.py" ]
