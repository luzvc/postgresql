include_recipe "apt"

package "postgresql-#{node[:postgresql][:version]}"
