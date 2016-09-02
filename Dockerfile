FROM rocker/rstudio

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
  readr
