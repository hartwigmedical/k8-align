FROM google/cloud-sdk:317.0.0

# add repo tools
RUN apt-get update

# add script
COPY align align

# final preparations
RUN chmod +x align

ENTRYPOINT ["./align"]