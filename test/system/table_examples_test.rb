require "application_system_test_case"

class TableExamplesTest < ApplicationSystemTestCase
  setup do
    @table_example = table_examples(:one)
  end

  test "visiting the index" do
    visit table_examples_url
    assert_selector "h1", text: "Table examples"
  end

  test "should create table example" do
    visit table_examples_url
    click_on "New table example"

    fill_in "Contact", with: @table_example.contact
    fill_in "Email", with: @table_example.email
    fill_in "First name", with: @table_example.first_name
    fill_in "Last name", with: @table_example.last_name
    click_on "Create Table example"

    assert_text "Table example was successfully created"
    click_on "Back"
  end

  test "should update Table example" do
    visit table_example_url(@table_example)
    click_on "Edit this table example", match: :first

    fill_in "Contact", with: @table_example.contact
    fill_in "Email", with: @table_example.email
    fill_in "First name", with: @table_example.first_name
    fill_in "Last name", with: @table_example.last_name
    click_on "Update Table example"

    assert_text "Table example was successfully updated"
    click_on "Back"
  end

  test "should destroy Table example" do
    visit table_example_url(@table_example)
    click_on "Destroy this table example", match: :first

    assert_text "Table example was successfully destroyed"
  end
end
