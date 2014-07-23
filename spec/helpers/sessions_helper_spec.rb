require 'spec_helper'

OmniAuth.config.test_mode = true
omniauth_hash = { 'provider' => 'facebook',
                  'uid' => rand(1..9),
                  'info' => {
                      'name' => 'test user',
                      'email' => 'user@test.com'
                    },
                  'credentials' => {
                    'token' => 'kfgkytasdkj6ghhjgf'
                  }  
}

OmniAuth.config.add_mock(:facebook, omniauth_hash)
