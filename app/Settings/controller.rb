require 'rho'
require 'rho/rhocontroller'
require 'rho/rhoerror'
require 'helpers/browser_helper'

class SettingsController < Rho::RhoController
  include BrowserHelper
  
  def index
    @msg = @params['msg']
    render
  end

  def handle_get_request
    render string: ::JSON.generate({time: Time.now()})
  end

  def handle_post_request
    render string: ::JSON.generate({time: Time.now()})
  end


  
end
