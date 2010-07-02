# file_name = File.join(File.dirname(__FILE__), "..", "mongoid.yml")
# @settings = YAML.load(ERB.new(File.new(file_name).read).result)
# 
# Mongoid.configure do |config|
#   config.from_hash(@settings[ENV['RACK_ENV']])
# end

# Mongoid.configure do |config|
#   name = "control_development"
#   host = "localhost"
#   config.master = Mongo::Connection.new.db(name)
#   config.slaves = [
#     Mongo::Connection.new(host, 27018, :slave_ok => true).db(name)
#   ]
#   config.persist_in_safe_mode = false
# end

@settings = YAML.load(File.read(File.join(RAILS_ROOT, 'config/mongoid.yml')))[RAILS_ENV]
connection = Mongo::Connection.new(@settings["host"])
Mongoid.database = connection.db(@settings["database"])
Mongoid.database.authenticate(@settings["username"], @settings["password"]) if @settings["username"]
