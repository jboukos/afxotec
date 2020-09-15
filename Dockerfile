FROM payara/micro
MAINTAINER jboukos@afxo.gr
# Setup configuration
#USER payara
#COPY resources/ojdbc8.jar $PAYARA_DIR/glassfish/domains/production/lib
#COPY resources/domain.xml $PAYARA_DIR/glassfish/domains/production/config
#COPY resources/keyfile $PAYARA_DIR/glassfish/domains/production/config 
COPY resources/afxotec-applications.xml $HOME_DIR
#USER root
#RUN chown payara:payara $PAYARA_DIR/glassfish/domains/production/config/keyfile
#USER payara
# ENV PAYARA_ARGS --debug
# Copy  applications
COPY apps/AfxoBooking-9.0.3.war $DEPLOY_DIR
#RUN echo 'healthcheck-configure --dynamic=true --enabled=true' > $POSTBOOT_COMMANDS
EXPOSE 8080
ENV DEPLOY_PROPS=--contextroot=/ibooking63

