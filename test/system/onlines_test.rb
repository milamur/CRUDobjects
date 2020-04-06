require "application_system_test_case"

class OnlinesTest < ApplicationSystemTestCase
  setup do
    @online = onlines(:one)
  end

  test "visiting the index" do
    visit onlines_url
    assert_selector "h1", text: "Onlines"
  end

  test "creating a Online" do
    visit onlines_url
    click_on "New Online"

    check "Assignments" if @online.assignments
    fill_in "Class name", with: @online.class_name
    fill_in "Hours per week", with: @online.hours_per_week
    click_on "Create Online"

    assert_text "Online was successfully created"
    click_on "Back"
  end

  test "updating a Online" do
    visit onlines_url
    click_on "Edit", match: :first

    check "Assignments" if @online.assignments
    fill_in "Class name", with: @online.class_name
    fill_in "Hours per week", with: @online.hours_per_week
    click_on "Update Online"

    assert_text "Online was successfully updated"
    click_on "Back"
  end

  test "destroying a Online" do
    visit onlines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Online was successfully destroyed"
  end
end
