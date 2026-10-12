FROM ubuntu:22.04

# Avoid interactive prompts during apt installation
ENV DEBIAN_FRONTEND=noninteractive

# Install lscpu (provided by util-linux in Ubuntu 22.04)
RUN apt-get update && \
    apt-get install -y util-linux && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY app.sh .
RUN chmod +x app.sh

CMD ["./app.sh"]
