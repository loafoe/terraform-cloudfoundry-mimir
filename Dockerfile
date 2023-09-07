FROM grafana/mimir:2.9.0 as mimir

FROM alpine:latest
RUN apk add --no-cache ca-certificates tzdata
COPY --from=mimir /bin/mimir /bin/mimir
