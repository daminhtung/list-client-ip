require "test_helper"

class ClientIpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_ip = client_ips(:one)
  end

  test "should get index" do
    get client_ips_url
    assert_response :success
  end

  test "should get new" do
    get new_client_ip_url
    assert_response :success
  end

  test "should create client_ip" do
    assert_difference('ClientIp.count') do
      post client_ips_url, params: { client_ip: { name: @client_ip.name } }
    end

    assert_redirected_to client_ip_url(ClientIp.last)
  end

  test "should show client_ip" do
    get client_ip_url(@client_ip)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_ip_url(@client_ip)
    assert_response :success
  end

  test "should update client_ip" do
    patch client_ip_url(@client_ip), params: { client_ip: { name: @client_ip.name } }
    assert_redirected_to client_ip_url(@client_ip)
  end

  test "should destroy client_ip" do
    assert_difference('ClientIp.count', -1) do
      delete client_ip_url(@client_ip)
    end

    assert_redirected_to client_ips_url
  end
end
