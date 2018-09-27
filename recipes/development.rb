include_recipe "apt"

package "libpq-dev" do
  action :upgrade
end

package "postgresql-contrib" do
  action :upgrade
end
