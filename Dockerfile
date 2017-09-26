FROM bitnami/minideb:jessie
MAINTAINER johanneskoester "johannes.koester@tu-dortmund.de"

ENV LC_ALL=C.UTF-8
    LANG=C.UTF-8

# By default en_US.UTF-8 is not generated, and locale-gen is not installed
# (comes with locales)
RUN install_packages libgl1-mesa-glx locales

# Uncomment the en_US.UTF-8 line from /etc/locale.gen and regenerate
RUN sed -i 's/^# *\(en_US.UTF-8\)/\1/' /etc/locale.gen && locale-gen

CMD ["/bin/bash"]
