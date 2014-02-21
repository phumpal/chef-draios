service 'dragent' do
  action [ :stop, :disable ]
end

package "draios-agent" do
  action :remove
end

package "sysdig" do
  action :remove
end
