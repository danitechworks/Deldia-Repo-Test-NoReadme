# Illustrative container configuration; no build is performed.
FROM scratch

LABEL org.opencontainers.image.title="DelDia Preview Sample"
LABEL org.opencontainers.image.description="Example files for explorer tests"

ENV APP_ENV=example
ENV APP_ENABLED=true
ENV APP_PORT=8080

WORKDIR /samples
COPY config/ /samples/config/
COPY examples/ /samples/examples/

# This image holds sample data and has no executable entry point.
