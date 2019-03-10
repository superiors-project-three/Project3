require 'test_helper'

class AppliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apply = applies(:one)
  end

  test "should get index" do
    get applies_url
    assert_response :success
  end

  test "should get new" do
    get new_apply_url
    assert_response :success
  end

  test "should create apply" do
    assert_difference('Apply.count') do
      post applies_url, params: { apply: { address: @apply.address, birth_date: @apply.birth_date, med_description: @apply.med_description, occupation: @apply.occupation, parent_first_name: @apply.parent_first_name, parent_last_name: @apply.parent_last_name, phone_number: @apply.phone_number, relative_relation: @apply.relative_relation, student_first_name: @apply.student_first_name, student_last_name: @apply.student_last_name } }
    end

    assert_redirected_to apply_url(Apply.last)
  end

  test "should show apply" do
    get apply_url(@apply)
    assert_response :success
  end

  test "should get edit" do
    get edit_apply_url(@apply)
    assert_response :success
  end

  test "should update apply" do
    patch apply_url(@apply), params: { apply: { address: @apply.address, birth_date: @apply.birth_date, med_description: @apply.med_description, occupation: @apply.occupation, parent_first_name: @apply.parent_first_name, parent_last_name: @apply.parent_last_name, phone_number: @apply.phone_number, relative_relation: @apply.relative_relation, student_first_name: @apply.student_first_name, student_last_name: @apply.student_last_name } }
    assert_redirected_to apply_url(@apply)
  end

  test "should destroy apply" do
    assert_difference('Apply.count', -1) do
      delete apply_url(@apply)
    end

    assert_redirected_to applies_url
  end
end
