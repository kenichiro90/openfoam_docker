FROM openfoam/openfoam-dev-paraview56:latest

USER root

RUN echo export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0 >> /home/openfoam/.bashrc
RUN mkdir /home/openfoam/data
