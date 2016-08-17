#!/bin/bash
sqlplus /nolog << EOF
conn / as sysdba
@/mytest/sel.sql
exit;
EOF
