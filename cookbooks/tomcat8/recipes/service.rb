template '/etc/systemd/system/tomcat.service' do
  source 'services.erb'
  owner 'root'
  group 'root'
  mode '0755'
  notifies :run, 'execute[systemctl-daemon-reload]', :immediately
end

execute "systemctl-daemon-reload" do
  command 'systemctl daemon-reload'
  action :nothing 
end

service "tomcat" do
  action [ :enable, :start ]
end