class Event 
  include Mongoid::Document
    field :name, :type => String
    field :localization, :type => String
    field :url, :type => String
    field :date, :type => Date
    field :description, :type => String
    field :available, :type => Boolean
end
