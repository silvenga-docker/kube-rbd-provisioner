FROM quay.io/external_storage/rbd-provisioner:latest

RUN rpm -e ceph-release-1-1.el7.noarch && \ 
    rpm -Uvh https://download.ceph.com/rpm-luminous/el7/noarch/ceph-release-1-1.el7.noarch.rpm && \
    yum install -y epel-release && \
    yum install -y ceph-common