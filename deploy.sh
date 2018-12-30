#!/bin/bash
##############################################################################
# Copyright (c) 2016 HUAWEI TECHNOLOGIES CO.,LTD and others.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Apache License, Version 2.0
# which accompanies this distribution, and is available at
# http://www.apache.org/licenses/LICENSE-2.0
##############################################################################

# Set OS version for target hosts
# Ubuntu16.04 or CentOS7
#export OS_VERSION=xenial/centos7
export OS_VERSION=xenial

# Set ISO image corresponding to your code
# export TAR_URL=file:///home/compass/compass4nfv.iso
#export TAR_URL=
#export TAR_URL=file:///home/opnfv/compass/opnfv-7.1.tar.gz

# build.sh first
export TAR_URL=file://$PWD/work/building/compass.tar.gz

#export DEPLOY_HARBOR="true"
#export HABOR_VERSION="1.5.0"

# Set hardware deploy jumpserver PXE NIC
# You need to comment out it when virtual deploy.
#export INSTALL_NIC=eth1

# TODO: deployment hosts / Openstack settings?
# DHA is your dha.yml's path
# export DHA=/home/compass4nfv/deploy/conf/vm_environment/os-nosdn-nofeature-ha.yml
#export DHA=
SCENARIO=${SCENARIO:-os-nosdn-nofeature-noha.yml}
export DHA=./deploy/conf/vm_environment/$SCENARIO

# NETWORK is your network.yml's path
# export NETWORK=/home/compass4nfv/deploy/conf/vm_environment/huawei-virtual1/network.yml
#export NETWORK=
export NETWORK=./deploy/conf/vm_environment/network.yml

export VIRT_NUMBER=2
export VIRT_CPUS=3
export VIRT_MEM=9000
export VIRT_DISK=200G

#export OPENSTACK_VERSION=${OPENSTACK_VERSION:-ocata}

export OPENSTACK_VERSION=queens

export COMPASS_ARCH=$(uname -m)

if [[ "x"$KUBERNETES_VERSION != "x" ]]; then
   unset OPENSTACK_VERSION
fi

COMPASS_DIR=`cd ${BASH_SOURCE[0]%/*}/;pwd`
export COMPASS_DIR

if [[ -z $DEPLOY_COMPASS && -z $DEPLOY_HOST && -z $REDEPLOY_HOST ]]; then
    export DEPLOY_COMPASS="true"
    export DEPLOY_HOST="true"
fi

LOG_DIR=$COMPASS_DIR/work/deploy/log
export LOG_DIR

mkdir -p $LOG_DIR

$COMPASS_DIR/deploy/launch.sh $* 2>&1 | tee $LOG_DIR/compass-deploy.log

if [[ $(tail -1 $LOG_DIR/compass-deploy.log) != 'compass deploy success' ]]; then
    exit 1
fi
