FROM postgres:12

# Custom initialization scripts
COPY ./create_db.sh /docker-entrypoint-initdb.d/20-create_db.sh
COPY ./create_db.sql /create_db.sql
COPY ./create_tbl_01_APEX_LICENSE.sql /create_tbl_01_APEX_LICENSE.sql
COPY ./create_tbl_02_APEX_WORKINGGROUP.sql /create_tbl_02_APEX_WORKINGGROUP.sql
COPY ./create_tbl_03_APEX_COMMPORTGROUP.sql /create_tbl_03_APEX_COMMPORTGROUP.sql
COPY ./create_tbl_04_APEX_USER.sql /create_tbl_04_APEX_USER.sql
COPY ./create_tbl_05_APEX_FILE.sql /create_tbl_05_APEX_FILE.sql
COPY ./create_tbl_06_APEX_FLOW.sql /create_tbl_06_APEX_FLOW.sql
COPY ./create_tbl_07_APEX_FILEMONITOR.sql /create_tbl_07_APEX_FILEMONITOR.sql
COPY ./create_tbl_08_APEX_GLOBALMERGEPOINT.sql /create_tbl_08_APEX_GLOBALMERGEPOINT.sql
COPY ./create_tbl_09_APEX_SCHEDULE.sql /create_tbl_09_APEX_SCHEDULE.sql
COPY ./create_tbl_10_APEX_IDOC.sql /create_tbl_10_APEX_IDOC.sql
COPY ./create_tbl_11_APEX_COMM_TASK.sql /create_tbl_11_APEX_COMM_TASK.sql

RUN chmod +x /docker-entrypoint-initdb.d/20-create_db.sh