#!/bin/sh

set -o errexit

export ASSUME_ALWAYS_YES=yes

pkg update
pkg install -y \
	devel/git \
	editors/vim-console \
	lang/go \
	security/ca_root_nss \
	shells/bash \
	sysutils/tmux \
	sysutils/tree

chsh -s /usr/local/bin/bash vagrant
chsh -s /usr/local/bin/bash root

cat <<EOT >> /home/vagrant/.profile
export GOPATH=/home/vagrant/go
export PATH=\$GOPATH/bin:\$PATH
EOT

