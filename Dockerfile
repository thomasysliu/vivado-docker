# Pull base image.
FROM ubuntu:18.10

# docker build --build-arg UNAME=$USER --build-arg UID=$(id -u) --build-arg GID=$(id -g) -f Dockerfile -t myvivado .
# docker run myvivado

ARG UNAME=developer
ARG UID=1000
ARG GID=1000

ARG UHOME=/home/$UNAME
#ENV LANG zh_TW.UTF-8
RUN groupadd -g $GID -o $UNAME
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME

# Install.
RUN apt-get clean
RUN apt-get update
RUN apt-get install -y libboost-filesystem-dev
RUN apt-get install -y libtinfo5
RUN apt-get install -y libx11-6
RUN apt-get install -y libxext6
RUN apt-get install -y libxrender1
RUN apt-get install -y libxtst6 libxi6 libxslt1.1 libfreetype6 libfontconfig 
RUN apt-get install -y libatk1.0-0
RUN apt-get install -y liboss4-salsa-asound2
RUN apt-get install -y libavformat58
RUN apt-get install -y build-essential
RUN apt-get install -y libxxf86vm1
RUN apt-get install -y libcairo2
RUN apt-get install -y libglib2.0-0
RUN apt-get install -y libgtk-3-0
RUN apt-get install -y libasound2
RUN apt-get install -y libopenjfx-jni
RUN apt-get install -y libavcodec58
RUN apt-get install -y libgtk2.0-0
RUN apt-get install -y libcairo-gobject2
RUN apt-get install -y openjdk-11-jre-zero
RUN rm -rf /var/lib/apt/lists/*

USER $UNAME
# Set environment variables.
ENV HOME $UHOME

# Define working directory.
WORKDIR $UHOME

# Define default command.
CMD ["bash"]
  



