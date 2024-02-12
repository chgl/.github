FROM docker.io/library/python:3.12.2-slim@sha256:eb53cb99a609b86da6e239b16e1f2aed5e10cfbc538671fc4631093a00f133f2 AS base
WORKDIR /app
COPY hello_world.py .

FROM base AS test
RUN echo "Hello test"

FROM base AS runtime
RUN echo "Hello runtime"

USER 65532:65532
CMD [ "python", "/app/hello_world.py" ]
