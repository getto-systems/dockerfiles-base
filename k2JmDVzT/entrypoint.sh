#!/bin/bash

: ${LABO_USER:=labo}

useradd $LABO_USER -s /bin/bash && \
  usermod -aG sudo $LABO_USER

exec sudo -E -H -u $LABO_USER "$@"
