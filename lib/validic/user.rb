module Validic
  class User
    include Validic::Utils
    def initialize(attrs = {})
      attributes_builder(attrs, self)
    end
    
    ## to get refresh token
    def refresh_token(options = {})
        response = get_request(:refresh_token, options)
        Validic::User.new(response['user'])
    end

  end
end
