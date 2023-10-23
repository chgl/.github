FROM docker.io/library/python:3.12.0-slim@sha256:babc0d450bf9ed2b369814bc2f466e53a6ea43f1201f6df4e7988751f755c52c AS base
WORKDIR /app
COPY hello_world.py .

FROM base AS test
RUN echo "Hello test"

FROM base AS runtime
RUN echo "Hello runtime"

USER 65532:65532
CMD [ "python", "/app/hello_world.py" ]
