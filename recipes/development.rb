include_recipe "apt"

package "libpq-dev" do
  action :install
end

package "postgresql-contrib" do
  action :install
end
