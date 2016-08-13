FROM        buildpack-deps:jessie
MAINTAINER  Jiang Jia
ENV         LANG C.UTF-8
ENV         ARTANIS_VERSION 0.1.2
ENV         GUILE_DBI_VERSION 2.1.5
ENV         GUILE_DBD_MYSQL_VERSION 2.1.4
RUN         apt-get update && apt-get install -y --no-install-recommends \
                              guile-2.0-dev \
                              guile-2.0 \
                          && rm -rf /var/lib/apt/lists/*

RUN set -ex \
	&& wget -c http://download.gna.org/guile-dbi/guile-dbi-$GUILE_DBI_VERSION.tar.gz \
	&& tar xvzf guile-dbi-$GUILE_DBI_VERSION.tar.gz \
	&& rm -f guile-dbi-$GUILE_DBI_VERSION.tar.gz \
	&& cd guile-dbi-$GUILE_DBI_VERSION && ./configure && make \
	&& make install \
	\
	&& wget -c http://download.gna.org/guile-dbi/guile-dbd-mysql-$GUILE_DBD_MYSQL_VERSION.tar.gz \
	&& tar xvzf guile-dbd-mysql-$GUILE_DBD_MYSQL_VERSION.tar.gz \
	&& rm -f guile-dbd-mysql-$GUILE_DBD_MYSQL_VERSION.tar.gz \
	&& cd guile-dbd-mysql-$GUILE_DBD_MYSQL_VERSION && ./configure && make \
	&& make install \
	\
	&& wget -c http://alpha.gnu.org/gnu/artanis/artanis-$ARTANIS_VERSION.tar.bz2 \
	&& tar xvjf artanis-$ARTANIS_VERSION.tar.bz2 \
	&& rm -f artanis-$ARTANIS_VERSION.tar.bz2 \
	&& cd artanis-$ARTANIS_VERSION && ./configure && make \
	&& make install 

CMD ["guile"]

