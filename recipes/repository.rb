include_recipe "apt"

package "apt-transport-https"

apt_repository "postgresql_org_repository" do
	uri "https://download.postgresql.org/pub/repos/apt/"
	components ["main", node[:postgresql][:version]]
	distribution "#{node["lsb"]["codename"]}"
	key node[:postgresql][:apt_gpg_key_uri]
	cache_rebuild true
end
