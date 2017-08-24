FROM bitnami/minideb:jessie
MAINTAINER johanneskoester "johannes.koester@tu-dortmund.de"

ENV LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8

RUN install_packages libgl1-mesa-glx

CMD ["/bin/bash"]
