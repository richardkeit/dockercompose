FROM richardkeit/basepgbrm
MAINTAINER Richard Keit <rajkeit@gmail.com>
ENV PGDATA /opt/postgres/data
ENV POSTGRESPASS postgres


RUN /usr/pgsql-9.5/bin/pg_ctl -D $PGDATA start ; sleep 2 && \
	#createuser ipss && createdb -E UTF8 -O ipss ipss && \
	#psql ipss -c "CREATE EXTENSION postgis;" \
	#&& \
	#psql ipss -c "SELECT name, default_version, \ 
	#installed_version FROM pg_available_extensions \
	#WHERE name LIKE 'postgis%' ;" \
	#&& psql ipss -c "ALTER TABLE geometry_columns OWNER TO ipss;" \ 
	#&& psql ipss -c "ALTER TABLE spatial_ref_sys OWNER TO ipss;" \
	#&& psql ipss -c "SELECT ST_GeomFromText('POINT(-71.064 42.287)');" \ && 
	psql ipss -c "CREATE SCHEMA temp;" \
	&& psql ipss -c "CREATE TABLE temp.containers (containerid varchar, "time" varchar ) WITH (OIDS=FALSE);" \ 
	&& psql ipss -c "INSERT INTO TEMP.CONTAINERS (Containerid, time) VALUES ('First Entry', 'From Richard DB');"
	
EXPOSE 5432

VOLUME ["/opt/postgres/data/pg_log", "/usr/pgsql-9.5/bin" , "/etc/postgresql"]


CMD /usr/pgsql-9.5/bin/postgres -D $PGDATA -c config_file=$PGDATA/postgresql.conf
	
