FROM rocker/rstudio

RUN apt-get install -y software-properties-common \
  && add-apt-repository ppa:webupd8team/java \
  && apt-get update \
  && echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections \
  && apt-get install -y oracle-java8-installer \
  && apt-get clean all -y

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN apt-get update && \
  apt-get install -y \
  libgdal1-dev \
  libproj-dev \
  libv8-dev \
  ssh && \
  apt-get clean all

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
