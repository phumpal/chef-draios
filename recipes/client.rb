include_recipe 'draios::default'

package 'draios-agent'

template '/opt/draios/bin/dragent.properties' do
  source 'dragent.properties.erb'
  variables(
    :access_key => node[:draios][:access_key]
  )
end

service 'dragent' do
  action [ :enable, :restart ]
end
