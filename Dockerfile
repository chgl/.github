FROM docker.io/library/python:3.13.0-slim@sha256:751d8bece269ba9e672b3f2226050e7e6fb3f3da3408b5dcb5d415a054fcb061 AS base
WORKDIR /app
COPY hello_world.py .

FROM base AS test
RUN echo "Hello test"

FROM base AS runtime
RUN echo "Hello runtime"

USER 65532:65532
CMD [ "python", "/app/hello_world.py" ]
