FROM dockersolr/docker-solr:8.0.0-slim-82a2f85

ADD --chown=solr:solr https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.375/aws-java-sdk-bundle-1.11.375.jar /opt/solr/server/solr-webapp/webapp/WEB-INF/lib/
ADD --chown=solr:solr https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.2.0/hadoop-aws-3.2.0.jar /opt/solr/server/solr-webapp/webapp/WEB-INF/lib/

ADD --chown=solr:solr core-site.xml /etc/hadoop/conf/core-site.xml
ADD --chown=solr:solr log4j2.xml /opt/solr/server/resources/log4j2.xml

