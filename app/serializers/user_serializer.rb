class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name#, :hometown
  belongs_to :hometown
end
