#jdkexist = ''
#
#if [jdkexist] ; then
#    echo -e "jdk exists.\n"
#else
#    echo -e "\n"
#fi


wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz"

tar -xzvf jdk-8u131-linux-x64.tar.gz
rm -rf jdk-8u131-linux-x64.tar.gz

mkdir /etc/jdk
mv ./jdk1.8.0_131 /etc/jdk/jdk1.8.0_131

echo "alias cls='clear'" >> /etc/profile
echo 'export JAVA_HOME=/etc/jdk/jdk1.8.0_131' >> /etc/profile
echo 'export JRE_HOME=/etc/jdk/jdk1.8.0_131/jre' >> /etc/profile
echo 'export PATH=$PATH:/etc/jdk/jdk1.8.0_131/bin:/etc/jdk/jdk1.8.0_131/jre/bin' >> /etc/profile

echo "Success Install jdk8"

ln -s /etc/jdk/jdk1.8.0_131/bin/java /usr/bin/java


source /etc/profile

