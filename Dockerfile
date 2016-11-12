FROM rocker/rstudio

RUN apt-get update && \
  apt-get install -y \
  libgdal1-dev \
  libproj-dev \
  libv8-dev \
  ssh && \
  apt-get clean all

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y  software-properties-common



# add webupd8 repository
RUN \
    echo "===> add webupd8 repository..."  && \
    echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list  && \
    echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list  && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886  && \
    apt-get update  && \
    \
    \
    echo "===> install Java"  && \
    echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections  && \
    echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections  && \
    DEBIAN_FRONTEND=noninteractive  apt-get install -y --force-yes oracle-java8-installer oracle-java8-set-default  && \
    \
    \
    echo "===> clean up..."  && \
    rm -rf /var/cache/oracle-jdk8-installer  && \
    apt-get clean all  && \
    rm -rf /var/lib/apt/lists/*


# define default command
# CMD ["java"]


# ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN install2.r --error \
  gbm \
  pROC \
  ROCR \
  chron \
  lubridate \
  tm \
  textcat \
  stringr \
  wordcloud \
  SnowballC \
  dplyr \
  tidyr \
  sqldf \
  reshape2 \
  geojsonio \
  scales \
  maptools \
  geosphere \
  sp \
  doParallel \
  foreach \
  ggplot2 \
  RColorBrewer \
  hexbin \
  mlr \
  rjson \
  sp \
  spatial \
  fields \
  ggmap \
  maptools \
  rgdal \
  dbscan \
  binom \
  data.table \
  readr \
  corrplot \
  caret \
  nnet \
  randomForest \
  ranger \
  xgboost \
  rpart \ 
  kernlab 
