# $ sudo chgrp -R tomcat /opt/tomcat
execute 'Group Permission change' do
    command 'chgrp -R tomcat /opt/tomcat'
    # not_if 'stat -c %G /opt/tomcat/LICENSE | grep tomcat'
end

# $ sudo chmod -R g+r conf
execute 'chmod -R g+r /opt/tomcat/conf' do
    command 'chmod -R g+r  /opt/tomcat/conf'
    # not_if "ls -l /opt/tomcat/ | grep conf | awk '{print $1}' | cut -c5-5 | grep r"
end

# $ sudo chmod g+x conf
execute 'chmod g+x /opt/tomcat/conf' do
    command 'chmod g+x  /opt/tomcat/conf'
    # not_if "ls -l /opt/tomcat/ | grep conf | awk '{print $1}' | cut -c7-7 | grep x"
end

# $ sudo chown -R tomcat webapps/ work/ temp/ locdgs/
execute 'changing ownership' do
    command 'chown -R tomcat.tomcat /opt/tomcat/{webapps,work,temp,logs}'
    # not_if 'stat -c %U /opt/tomcat/logs | grep tomcat'
end