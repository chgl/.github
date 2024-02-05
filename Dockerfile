FROM docker.io/library/python:3.12.1-slim@sha256:a64ac5be6928c6a94f00b16e09cdf3ba3edd44452d10ffa4516a58004873573e AS base
WORKDIR /app
COPY hello_world.py .

FROM base AS test
RUN echo "Hello test"

FROM base AS runtime
RUN echo "Hello runtime"

USER 65532:65532
CMD [ "python", "/app/hello_world.py" ]
