# mahdidarabi/openssh-server:0.0.1

# Args
ARG BUILD_IMG=ubuntu:22.04

FROM ${BUILD_IMG}

# Install OpenSSH server
RUN apt-get update && apt-get install -y openssh-server && mkdir /var/run/sshd


# Allow root login (for demonstration purposes only; not recommended for production)
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Expose SSH port
EXPOSE 22

# Start SSH service
CMD ["/usr/sbin/sshd", "-D"]