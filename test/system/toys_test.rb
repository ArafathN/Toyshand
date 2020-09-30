require "application_system_test_case"

class ToysTest < ApplicationSystemTestCase
  setup do
    @toy = toys(:one)
  end

  test "visiting the index" do
    visit toys_url
    assert_selector "h1", text: "Toys"
  end

  test "creating a Toy" do
    visit toys_url
    click_on "New Toy"

    check "Availability" if @toy.availability
    fill_in "Category", with: @toy.category
    fill_in "Condition", with: @toy.condition
    fill_in "Description", with: @toy.description
    fill_in "Name", with: @toy.name
    fill_in "Price", with: @toy.price
    click_on "Create Toy"

    assert_text "Toy was successfully created"
    click_on "Back"
  end

  test "updating a Toy" do
    visit toys_url
    click_on "Edit", match: :first

    check "Availability" if @toy.availability
    fill_in "Category", with: @toy.category
    fill_in "Condition", with: @toy.condition
    fill_in "Description", with: @toy.description
    fill_in "Name", with: @toy.name
    fill_in "Price", with: @toy.price
    click_on "Update Toy"

    assert_text "Toy was successfully updated"
    click_on "Back"
  end

  test "destroying a Toy" do
    visit toys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Toy was successfully destroyed"
  end
end
