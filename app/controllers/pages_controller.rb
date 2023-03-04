require 'socket'
class PagesController < ApplicationController
  def about
    #@rails = Rails.version
    #@ruby = RUBY_VERSION
    #@env = Rails.env
    @host = Socket.gethostname
    @ip = Socket.ip_address_list.find { |allip| allip.ipv4? && !allip.ipv4_loopback? }.ip_address
    @remote_ip = request.remote_ip
    #@time = Time.current
  end
end
