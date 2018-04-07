# Installing JAVA
package "java-1.7.0-openjdk-devel"


remote_file '/tmp/apache-tomcat-8.5.29.tar.gz' do
    source 'http://apache.cs.utah.edu/tomcat/tomcat-8/v8.5.29/bin/apache-tomcat-8.5.29.tar.gz'
    # owner 'web_admin'
    # group 'web_admin'
    mode '0755'
    action :create
end

execute 'apache-tomcat-8.5.29.tar.gz' do
    command 'tar xvf /tmp/apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1'
    not_if { File.exists?("/opt/tomcat/LICENSE") }
end