FROM docker.io/library/python:3.14.4-slim@sha256:c11aee3b3cae066f55d1e9318fc812673aa6557073b0db0d792b59491b262e0c AS base
WORKDIR /app
COPY hello_world.py .

FROM base AS test
RUN echo "Hello test"

FROM base AS runtime
RUN echo "Hello runtime"

USER 65532:65532
CMD [ "python", "/app/hello_world.py" ]
