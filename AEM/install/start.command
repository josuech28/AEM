#THE_JAR should save the file name of the current jar
BASEDIR=$(dirname $0)
cd $BASEDIR
THE_JAR=`ls *jar`
java -XX:MaxPermSize=256m -Xmx1024m -agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=n -Djava.security.policy=/Library/Java/Home/lib/security/java.policy -Dorg.apache.sling.launcher.bootdelegation="com.sun.*" -jar $THE_JAR