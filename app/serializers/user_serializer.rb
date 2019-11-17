class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name
  has_many :trips, serializer: TripSerializer
  # belongs_to :hometown, serializer: HometownSerializer
  attribute :hometown do |user|
    {
      city: user.hometown.city,
      state: user.hometown.state,
      country: user.hometown.country
    }
  end

end
# homwtown is just a location
# Serializer - helps your request to show what ever you want
### NOTE: make Serializer around each object that you are returning
# so you can be specific about exactly what you want to return
