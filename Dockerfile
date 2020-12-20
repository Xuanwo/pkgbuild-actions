FROM archlinux:base-devel

LABEL "repository"="https://github.com/Xuanwo/pkgbuild-actions"
LABEL "homepage"="https://github.com/Xuanwo/pkgbuild-actions"
LABEL "maintainer"="Xuanwo <github@xuanwo.io>"

RUN useradd -d /home/builder -u 1000 -m -U builder
ADD sudoers /etc/sudoers
ADD run.sh /run.sh

ENTRYPOINT ["/run.sh"]