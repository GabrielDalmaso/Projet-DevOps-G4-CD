FROM openjdk:11
ARG repodir
ARG artifact
ARG confname
ENV ARTIFACT ${artifact}
RUN echo "ENV: ARTIFACT=$ARTIFACT"
RUN echo  "Deploy artifact: ${repodir}/${artifact}" 
COPY ${repodir}/${artifact} .
RUN echo "Conf: .conf/application.properties"
COPY ./conf/application.properties application.properties
EXPOSE 80
CMD java -jar $ARTIFACT
