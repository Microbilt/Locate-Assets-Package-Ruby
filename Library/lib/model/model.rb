class PropertySearchRequestModel
  attr_accessor :ownerInfo, :propertyAddress

  def initialize(ownerInfo = nil, propertyAddress = nil)
    @ownerInfo = ownerInfo
    @propertyAddress = propertyAddress
  end

  def to_h
    {
      OwnerInfo: @ownerInfo.to_h,
      PropertyAddress: @propertyAddress.to_h
    }
    end
end

class OwnerInfo
  attr_accessor :personName

  def initialize(person_name = nil)
    @personName = person_name
  end

  def to_h
    {
      personName: @personName.to_h
    }
  end
end

class PersonName
  attr_accessor :firstName, :lastName

  def initialize(first_name = nil, last_name = nil)
    @firstName = first_name
    @lastName = last_name
  end

  def to_h
    {
      firstName: @firstName,
      lastName: @lastName
    }
  end
end

class PostAddr
  attr_accessor :addr1, :city, :stateProv, :postalCode

  def initialize(addr1 = nil, city = nil, state_prov = nil, postal_code = nil)
    @addr1 = addr1
    @city = city
    @stateProv = state_prov
    @postalCode = postal_code
  end

  def to_h
    {
      addr1: @addr1,
      city: @city,
      stateProv: @stateProv,
      postalCode: @postalCode
    }
  end
end
