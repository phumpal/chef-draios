case node['platform_family']
when 'rhel','fedora'
  include_recipe 'yum'
  include_recipe 'yum::epel'

  yum_key 'draios' do
    url node[:draios][:gpg_key]
    action :add
  end

  yum_repository 'draios' do
    description 'Draios Repository'
    url node[:draios][:yum_repository]
    enabled 1
  end
when 'debian','ubuntu'
  include_recipe 'apt'

  apt_repository 'draios' do
    uri node[:draios][:deb_repository]
    distribution 'stable-$(ARCH)/'
    key node[:draios][:gpg_key]
  end
end
