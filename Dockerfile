FROM centos:7

#Import necessary rpms, scripts and conf files
#(conf files will be in readonly shared folder afterwards)
RUN mkdir /slurm_rpm && mkdir /var/log/slurm/
COPY ./etc/slurm_rpm/ /slurm_rpm/

#Install munge for slurm
RUN yum install epel-release -y
RUN yum update -y
RUN yum install munge munge-libs munge-devel libnsl mariadb mariadb-devel nc -y
COPY ./etc/munge/* /etc/munge/

#Install slurm and plugins from imported rpms
RUN useradd slurm
RUN mkdir /opt/SLURM && chown -R -H slurm /opt/SLURM
RUN yum install ./slurm_rpm/* -y

#Cleanup after install
RUN rm -d -r /slurm_rpm
##RUN yum clean all
##This ^ command makes the image heavyer for some reason...##
RUN rm -d -r /var/cache/*
RUN rm -r /tmp/*

COPY ./etc/script.sh /script.sh
CMD [ "/script.sh" ]