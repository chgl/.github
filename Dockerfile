FROM docker.io/library/python:3.12.0-slim@sha256:fde1011b3a944e4e750982480905b563fd08a0f3fde49b963b05d8ebf6846ce8 AS base
WORKDIR /app
COPY hello_world.py .

FROM base AS test
RUN echo "Hello test"

FROM base AS runtime
RUN echo "Hello runtime"

USER 65532:65532
CMD [ "python", "/app/hello_world.py" ]
