FROM maven:3

ADD pom.xml /pom.xml
ADD fatjar /fatjar

ENV ARTIFACT_ID GROUP_ID VERSION

RUN mkdir /target

VOLUME /target

ENTRYPOINT ["/fatjar"]
