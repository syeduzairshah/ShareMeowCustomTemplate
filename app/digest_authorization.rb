require 'sinatra/base'

module Sinatra
  module DigestAuthorization
      SECRET_KEY = '33125b388bd13287440c1a6426f6eff7b077035ef8434d51f76acafe87dd1981'

      # SECRET_KEY = ENV.fetch('SHARE_MEOW_SECRET_KEY'.freeze)

    def authorized?(encoded_params:, encoded_hmac_digest:)
      hmac_digest = Base64.urlsafe_decode64(encoded_hmac_digest).unpack('H*').first

      expected_digest = OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha1'.freeze), SECRET_KEY, encoded_params)
      expected_digest == hmac_digest
    end
  end

  helpers DigestAuthorization
end
