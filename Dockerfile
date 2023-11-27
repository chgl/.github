FROM docker.io/library/python:3.12.0-slim@sha256:32477c7ecb3b18a47cff8eb5b8149bc21c858998b0ae2bb36f4ddb43cc79d240 AS base
WORKDIR /app
COPY hello_world.py .

FROM base AS test
RUN echo "Hello test"

FROM base AS runtime
RUN echo "Hello runtime"

USER 65532:65532
CMD [ "python", "/app/hello_world.py" ]
