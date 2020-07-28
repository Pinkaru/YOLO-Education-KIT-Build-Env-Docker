FROM ubuntu:18.04

RUN apt -y update
RUN apt -y install apt-utils dialog
RUN apt -y install vim cmake wget
RUN apt -y install ssh
RUN mkdir /root/.ssh/
RUN mkdir /root/work
ADD gitlab_ssh_key/* /root/.ssh/

RUN apt -y install git
RUN apt -y install device-tree-compiler
RUN apt -y install u-boot-tools
RUN apt -y install libncurses5-dev
RUN apt -y install python
RUN apt -y install sunxi-tools

RUN mkdir /root/EduKit
WORKDIR /root/EduKit


RUN git clone git@gitlab.com:educational-kit_yolo/i3-bsp/u-boot.git
RUN git clone git@gitlab.com:educational-kit_yolo/i3-bsp/preboot-config.git
RUN git clone git@gitlab.com:educational-kit_yolo/i3-bsp/buildroot.git
RUN git clone git@gitlab.com:educational-kit_yolo/actuator_and_sensor.git
RUN git clone git@gitlab.com:educational-kit_yolo/i3-bsp/linaro-4.9.4-gcc.git
RUN git clone git@gitlab.com:educational-kit_yolo/i3-bsp/debian.git
RUN git clone git@gitlab.com:educational-kit_yolo/i3-bsp/kernel.git
RUN git clone git@gitlab.com:educational-kit_yolo/camera.git
RUN git clone git@gitlab.com:educational-kit_yolo/ai-demo.git

WORKDIR /opt/

COPY .bashrc /root/

WORKDIR /root/
