FROM docker.io/library/python:3.12.1-slim@sha256:ee9a59cfdad294560241c9a8c8e40034f165feb4af7088c1479c2cdd84aafbed AS base
WORKDIR /app
COPY hello_world.py .

FROM base AS test
RUN echo "Hello test"

FROM base AS runtime
RUN echo "Hello runtime"

USER 65532:65532
CMD [ "python", "/app/hello_world.py" ]
