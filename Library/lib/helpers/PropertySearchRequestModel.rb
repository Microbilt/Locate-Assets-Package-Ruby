require 'json'

class PropertySearchRequestModel
  attr_accessor :ownerInfo, :propertyAddress

  def to_json(*_args)
    {
      ownerInfo: @ownerInfo,
      propertyAddress: @propertyAddress
    }.to_json
  end
end