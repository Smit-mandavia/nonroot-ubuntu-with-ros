ARG ROS_MELODIC_BASE_TAG=0b33e61-20201008
FROM rrdockerhub/ros-base-melodic-amd64:$ROS_MELODIC_BASE_TAG
RUN groupadd -g 1000 rr && \
    useradd -u 1000 -g 1000 -mrs /bin/bash -b /home -p $(openssl passwd -1 rr) rr && \
    usermod -aG sudo rr && \
    echo "rr ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
ENV DEBIAN_FRONTEND=noninteractive
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn
