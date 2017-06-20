FROM bitnami/minideb:jessie
MAINTAINER johanneskoester "johannes.koester@tu-dortmund.de"

ENV LANG C.UTF-8

RUN install_packages libgl1-mesa-glx

CMD ["/bin/bash"]
