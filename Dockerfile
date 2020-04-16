FROM library/neo4j:3.5.16
ENV NEO4J_AUTH="none"
ENV NEO4J_DBMS_DEFAULT__LISTEN__ADDRESS="0.0.0.0"
ENV NEO4J_apoc_export_file_enabled="true"
ENV NEO4J_apoc_import_file_enabled="true"
ENV NEO4J_apoc_import_file_use__neo4j__config="true"
ENV NEO4J_dbms_security_procedures_unrestricted="true"
ENV APOC_VERSION="3.5.0.9"
RUN curl --location "https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/${APOC_VERSION}/apoc-${APOC_VERSION}-all.jar" \
         --output "/plugins/apoc-${APOC_VERSION}-all.jar"