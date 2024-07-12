FROM docker.io/library/python:3.12.4-slim@sha256:f11725aba18c19664a408902103365eaf8013823ffc56270f921d1dc78a198cb AS base
WORKDIR /app
COPY hello_world.py .

FROM base AS test
RUN echo "Hello test"

FROM base AS runtime
RUN echo "Hello runtime"

USER 65532:65532
CMD [ "python", "/app/hello_world.py" ]
