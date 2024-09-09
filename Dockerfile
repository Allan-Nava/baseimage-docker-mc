FROM phusion/baseimage:focal-1.2.0
#
RUN curl https://dl.min.io/client/mc/release/linux-amd64/mc \
  --create-dirs \
  -o $HOME/minio-binaries/mc
#
RUN chmod +x $HOME/minio-binaries/mc
#RUN export PATH=$PATH:$HOME/minio-binaries/
ENV PATH="$PATH:$HOME/minio-binaries/mc"
RUN echo "export PATH=$PATH" > /etc/environment
#
