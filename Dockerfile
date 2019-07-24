FROM bitnami/minideb:buster
MAINTAINER johanneskoester "johannes.koester@tu-dortmund.de"

# By default en_US.UTF-8 is not generated, and locale-gen is not installed
# (comes with locales)
# and uncomment the en_US.UTF-8 line from /etc/locale.gen and regenerate
RUN install_packages libglx-mesa0 locales openssh-client procps && \
    sed -i 's/^# *\(en_US.UTF-8\)/\1/' /etc/locale.gen && locale-gen

ENV LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8

CMD ["/bin/bash"]
