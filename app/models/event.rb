class Event 
  include Mongoid::Document
    field :name
    field :localization
    field :url
    field :date, :type => Date
    field :description
    field :available, :type => Boolean
end
