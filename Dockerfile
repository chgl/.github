FROM docker.io/library/python:3.12.4-slim@sha256:e3ae8cf03c4f0abbfef13a8147478a7cd92798a94fa729a36a185d9106cbae32 AS base
WORKDIR /app
COPY hello_world.py .

FROM base AS test
RUN echo "Hello test"

FROM base AS runtime
RUN echo "Hello runtime"

USER 65532:65532
CMD [ "python", "/app/hello_world.py" ]
