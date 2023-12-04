FROM docker.io/library/python:3.12.0-slim@sha256:19a6235339a74eca01227b03629f63b6f5020abc21142436eced6ec3a9839a76 AS base
WORKDIR /app
COPY hello_world.py .

FROM base AS test
RUN echo "Hello test"

FROM base AS runtime
RUN echo "Hello runtime"

USER 65532:65532
CMD [ "python", "/app/hello_world.py" ]
