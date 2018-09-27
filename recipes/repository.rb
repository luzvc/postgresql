include_recipe "apt"

package "apt-transport-https"

apt_repository "postgresql_org_repository" do
	uri node[:postgresql][:postgresql_org_repo]
	components ["main", node[:postgresql][:version]]
	distribution "#{node["lsb"]["codename"]}-pgdg"
	key node[:postgresql][:apt_gpg_key_uri]
	cache_rebuild true
end
