require "application_system_test_case"

class ClientIpsTest < ApplicationSystemTestCase
  setup do
    @client_ip = client_ips(:one)
  end

  test "visiting the index" do
    visit client_ips_url
    assert_selector "h1", text: "Client Ips"
  end

  test "creating a Client ip" do
    visit client_ips_url
    click_on "New Client Ip"

    fill_in "Name", with: @client_ip.name
    click_on "Create Client ip"

    assert_text "Client ip was successfully created"
    click_on "Back"
  end

  test "updating a Client ip" do
    visit client_ips_url
    click_on "Edit", match: :first

    fill_in "Name", with: @client_ip.name
    click_on "Update Client ip"

    assert_text "Client ip was successfully updated"
    click_on "Back"
  end

  test "destroying a Client ip" do
    visit client_ips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client ip was successfully destroyed"
  end
end
