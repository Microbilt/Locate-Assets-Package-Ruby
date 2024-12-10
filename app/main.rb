require 'json'
require 'net/http'
require 'library'
require_relative '../Library/lib/LocateAssetsPackageClient'
require_relative '../Library/lib/helpers/EnvironmentType'
require_relative '../Library/lib/helpers/PropertySearchRequestModel'
require_relative '../Library/lib/clients/PropertySearchClient'
require_relative '../Library/lib/model/model'


locate_assets_package_client = LocateAssetsPackage::LocateAssetsPackageClient.new("You_client_id", "You_client_secret", EnvironmentType::Sandbox)
report = nil
archive_report = nil

puts "Test GetReport:"

owner_info = OwnerInfo.new(
  PersonName.new(
    "LORENZO A",
    "FOSTER"
  )
)

post_addr = PostAddr.new(
  "530 EAKER WAY",
  "ANTIOCH",
  "CA",
  "94509"
)

property_search_request_model = PropertySearchRequestModel.new(owner_info, post_addr).to_h.to_json

report = locate_assets_package_client.property_search_client.get_report(property_search_request_model)
puts "GetReport = #{report}"

puts "Test GetArchiveReport:"
archive_report = locate_assets_package_client.property_search_client.get_archive_report("547632B0-7F65-4746-9FD2-66AFE95C4884")
puts "GetArchiveReport = #{archive_report}"