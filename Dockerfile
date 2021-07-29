FROM google/cloud-sdk:317.0.0

# add repo tools
RUN apt-get update

# add script
COPY k8-align k8-align

# final preparations
RUN chmod +x k8-align

ENTRYPOINT ["./k8-align"]