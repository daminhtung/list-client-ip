class ClientIpsController < ApplicationController
  # GET /client_ips or /client_ips.json
  def index
    @client_ip = remote_ip()
    obj = ClientIp.new()
    obj.name = @client_ip
    if obj.save
      puts obj.inspect
    end
  end
end
