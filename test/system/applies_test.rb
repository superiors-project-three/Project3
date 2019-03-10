require "application_system_test_case"

class AppliesTest < ApplicationSystemTestCase
  setup do
    @apply = applies(:one)
  end

  test "visiting the index" do
    visit applies_url
    assert_selector "h1", text: "Applies"
  end

  test "creating a Apply" do
    visit applies_url
    click_on "New Apply"

    fill_in "Address", with: @apply.address
    fill_in "Birth date", with: @apply.birth_date
    fill_in "Med description", with: @apply.med_description
    fill_in "Occupation", with: @apply.occupation
    fill_in "Parent first name", with: @apply.parent_first_name
    fill_in "Parent last name", with: @apply.parent_last_name
    fill_in "Phone number", with: @apply.phone_number
    fill_in "Relative relation", with: @apply.relative_relation
    fill_in "Student first name", with: @apply.student_first_name
    fill_in "Student last name", with: @apply.student_last_name
    click_on "Create Apply"

    assert_text "Apply was successfully created"
    click_on "Back"
  end

  test "updating a Apply" do
    visit applies_url
    click_on "Edit", match: :first

    fill_in "Address", with: @apply.address
    fill_in "Birth date", with: @apply.birth_date
    fill_in "Med description", with: @apply.med_description
    fill_in "Occupation", with: @apply.occupation
    fill_in "Parent first name", with: @apply.parent_first_name
    fill_in "Parent last name", with: @apply.parent_last_name
    fill_in "Phone number", with: @apply.phone_number
    fill_in "Relative relation", with: @apply.relative_relation
    fill_in "Student first name", with: @apply.student_first_name
    fill_in "Student last name", with: @apply.student_last_name
    click_on "Update Apply"

    assert_text "Apply was successfully updated"
    click_on "Back"
  end

  test "destroying a Apply" do
    visit applies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apply was successfully destroyed"
  end
end
