require "application_system_test_case"

class SibittsTest < ApplicationSystemTestCase
  setup do
    @sibitt = sibitts(:one)
  end

  test "visiting the index" do
    visit sibitts_url
    assert_selector "h1", text: "Sibitts"
  end

  test "creating a Sibitt" do
    visit sibitts_url
    click_on "New Sibitt"

    fill_in "Sibitt", with: @sibitt.sibitt
    click_on "Create Sibitt"

    assert_text "Sibitt was successfully created"
    click_on "Back"
  end

  test "updating a Sibitt" do
    visit sibitts_url
    click_on "Edit", match: :first

    fill_in "Sibitt", with: @sibitt.sibitt
    click_on "Update Sibitt"

    assert_text "Sibitt was successfully updated"
    click_on "Back"
  end

  test "destroying a Sibitt" do
    visit sibitts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sibitt was successfully destroyed"
  end
end
