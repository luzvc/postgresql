username = node[:postgresql][:username]
password = node[:postgresql][:password]

lock = "/etc/postgresql/9.1/main/.#{username}"

queries << if password
  "CREATE USER #{username} WITH PASSWORD #{password}"
else
  "CREATE USER #{username}" 
end

queries << "ALTER USER #{username} CREATEDB;"

execute "psql -d template1 -c #{queries.join(" ").inspect}" do
  user "postgres"
  creates lock
end

execute "touch #{lock}"
