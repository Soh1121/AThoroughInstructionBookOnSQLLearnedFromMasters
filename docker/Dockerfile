FROM postgres:10.3
ARG DB_LANG=en_US
RUN localedef -i $DB_LANG -c -f UTF-8 -A /usr/share/locale/locale.alias $DB_LANG.UTF-8
ENV LANG $DB_LANG.utf8

WORKDIR /usr/src
