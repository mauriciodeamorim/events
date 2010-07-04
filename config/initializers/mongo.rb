File.open(File.join(RAILS_ROOT, 'config/mongoid.yml'), 'r') do |f|
  @settings = YAML.load(f)[RAILS_ENV]
end

port = @settings["port"].nil? ? Mongo::Connection::DEFAULT_PORT : @settings["port"]
connection = Mongo::Connection.new(@settings["host"], port )
Mongoid.database = connection.db(@settings["database"])
if @settings["username"]
  Mongoid.database.authenticate(@settings["username"], @settings["password"])
end