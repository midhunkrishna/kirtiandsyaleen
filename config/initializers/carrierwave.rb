require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'
CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     'AKIAJF2ZTSHLTE75GIWA',
    aws_secret_access_key: '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',
    region:                'ap-southeast-1'
  }
  config.fog_directory  = 'kands'                          # required
  config.fog_public     = true                                        # optional, defaults to true
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end
