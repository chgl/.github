FROM docker.io/library/python:3.13.1-slim@sha256:23a81be7b258c8f516f7a60e80943cace4350deb8204cf107c7993e343610d47 AS base
WORKDIR /app
COPY hello_world.py .

FROM base AS test
RUN echo "Hello test"

FROM base AS runtime
RUN echo "Hello runtime"

USER 65532:65532
CMD [ "python", "/app/hello_world.py" ]
