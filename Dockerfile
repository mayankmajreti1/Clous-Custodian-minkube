FROM cloudcustodian/c7n

USER root
RUN mkdir -p /opt/test

COPY mailer.yml /opt/test/mailer.yml
COPY policy.yml /opt/test/policy.yml

CMD  cloudcustodian/c7n run -v -s /opt/test /opt/test/policy.yml

