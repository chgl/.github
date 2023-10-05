FROM docker.io/library/busybox:1.36.1@sha256:3fbc632167424a6d997e74f52b878d7cc478225cffac6bc977eedfe51c7f4e79

RUN echo "Hello World"

USER 65532:65532
