# start xe in docker
docker pull sath89/oracle-xe-11g
docker run -d --name myxe -p 8080:8080 -p 1521:1521 sath89/oracle-xe-11g

# run test script in xe
# expected result:
# (...)
# SQL> Connected.
# SQL>
# D
# -
# X

docker cp mytest myxe:/mytest
docker exec myxe chmod u+x /mytest/test.sh
docker exec --user oracle myxe /mytest/test.sh

