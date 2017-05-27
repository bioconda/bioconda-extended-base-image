FROM debian:latest
MAINTAINER johanneskoester "johannes.koester@tu-dortmund.de"

ENV LANG C.UTF-8

RUN apt-get update \
 && apt get install -y libgl1-mesa-glx

CMD ["/bin/bash"]
