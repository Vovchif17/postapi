require "application_system_test_case"

class PostapisTest < ApplicationSystemTestCase
  setup do
    @postapi = postapis(:one)
  end

  test "visiting the index" do
    visit postapis_url
    assert_selector "h1", text: "Postapis"
  end

  test "creating a Postapi" do
    visit postapis_url
    click_on "New Postapi"

    fill_in "Message", with: @postapi.message
    fill_in "Name", with: @postapi.name
    click_on "Create Postapi"

    assert_text "Postapi was successfully created"
    click_on "Back"
  end

  test "updating a Postapi" do
    visit postapis_url
    click_on "Edit", match: :first

    fill_in "Message", with: @postapi.message
    fill_in "Name", with: @postapi.name
    click_on "Update Postapi"

    assert_text "Postapi was successfully updated"
    click_on "Back"
  end

  test "destroying a Postapi" do
    visit postapis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Postapi was successfully destroyed"
  end
end
