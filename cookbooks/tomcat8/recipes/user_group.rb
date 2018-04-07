group 'tomcat' do
    gid 1088
    action  :create
end

user 'tomcat' do
  comment 'The Tomcat Application user '
  home '/opt/tomcat'
  shell '/bin/nologin'
  gid 1088
#   password ''
  action  :create
end