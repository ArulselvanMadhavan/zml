FROM redhat/ubi9 AS build
RUN dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm
RUN dnf -y upgrade
RUN dnf install -y git wget
#RUN yum install -y snapd
#RUN systemctl enable --now snapd.socket
#RUN ln -s /var/lib/snapd/snap /snap
#RUN snap install emacs --classic
RUN cd /etc/yum.repos.d/ && wget --no-check-certificate https://download.opensuse.org/repositories/shells:fish:release:3/CentOS_8/shells:fish:release:3.repo && yum install -y fish
RUN curl -L -o /usr/local/bin/bazel 'https://github.com/bazelbuild/bazelisk/releases/download/v1.25.0/bazelisk-linux-amd64' && chmod +x /usr/local/bin/bazel
