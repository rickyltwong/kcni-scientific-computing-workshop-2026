FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y dcm2niix
COPY --chmod=755 convert.sh /usr/local/bin/convert.sh
ENTRYPOINT ["/usr/local/bin/convert.sh"]
