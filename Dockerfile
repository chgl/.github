FROM docker.io/library/python:3.12.0-slim@sha256:58a331d2f809ef8c2c848df61ae082fd6448defb1b66a04e56369e9565a47f8a AS base
WORKDIR /app
COPY hello_world.py .

FROM base AS test
RUN echo "Hello test"

FROM base AS runtime
RUN echo "Hello runtime"

USER 65532:65532
CMD [ "python", "/app/hello_world.py" ]
