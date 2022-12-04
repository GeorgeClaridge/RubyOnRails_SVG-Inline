require "test_helper"

class TableExamplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @table_example = table_examples(:one)
  end

  test "should get index" do
    get table_examples_url
    assert_response :success
  end

  test "should get new" do
    get new_table_example_url
    assert_response :success
  end

  test "should create table_example" do
    assert_difference("TableExample.count") do
      post table_examples_url, params: { table_example: { contact: @table_example.contact, email: @table_example.email, first_name: @table_example.first_name, last_name: @table_example.last_name } }
    end

    assert_redirected_to table_example_url(TableExample.last)
  end

  test "should show table_example" do
    get table_example_url(@table_example)
    assert_response :success
  end

  test "should get edit" do
    get edit_table_example_url(@table_example)
    assert_response :success
  end

  test "should update table_example" do
    patch table_example_url(@table_example), params: { table_example: { contact: @table_example.contact, email: @table_example.email, first_name: @table_example.first_name, last_name: @table_example.last_name } }
    assert_redirected_to table_example_url(@table_example)
  end

  test "should destroy table_example" do
    assert_difference("TableExample.count", -1) do
      delete table_example_url(@table_example)
    end

    assert_redirected_to table_examples_url
  end
end
