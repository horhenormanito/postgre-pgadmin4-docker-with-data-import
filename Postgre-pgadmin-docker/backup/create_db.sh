#!/bin/bash
set -e

POSTGRES="psql --username ${POSTGRES_USER}"

echo "Creating database: ${DB_NAME}"

$POSTGRES <<EOSQL
CREATE DATABASE ${DB_NAME} OWNER ${POSTGRES_USER};
EOSQL

echo "Creating schema..."
psql -d ${DB_NAME} -a -U${POSTGRES_USER} -f ./create_db.sql

echo "Populating database..."
psql -d ${DB_NAME} -a  -U${POSTGRES_USER} -f ./create_tbl_01_APEX_LICENSE.sql
psql -d ${DB_NAME} -a  -U${POSTGRES_USER} -f ./create_tbl_02_APEX_WORKINGGROUP.sql
psql -d ${DB_NAME} -a  -U${POSTGRES_USER} -f ./create_tbl_03_APEX_COMMPORTGROUP.sql
psql -d ${DB_NAME} -a  -U${POSTGRES_USER} -f ./create_tbl_04_APEX_USER.sql
psql -d ${DB_NAME} -a  -U${POSTGRES_USER} -f ./create_tbl_05_APEX_FILE.sql
psql -d ${DB_NAME} -a  -U${POSTGRES_USER} -f ./create_tbl_06_APEX_FLOW.sql
psql -d ${DB_NAME} -a  -U${POSTGRES_USER} -f ./create_tbl_07_APEX_FILEMONITOR.sql
psql -d ${DB_NAME} -a  -U${POSTGRES_USER} -f ./create_tbl_08_APEX_GLOBALMERGEPOINT.sql
psql -d ${DB_NAME} -a  -U${POSTGRES_USER} -f ./create_tbl_09_APEX_SCHEDULE.sql
psql -d ${DB_NAME} -a  -U${POSTGRES_USER} -f ./create_tbl_10_APEX_IDOC.sql
psql -d ${DB_NAME} -a  -U${POSTGRES_USER} -f ./create_tbl_11_APEX_COMM_TASK.sql

echo "Successful!!!"