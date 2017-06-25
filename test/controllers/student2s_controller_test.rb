require 'test_helper'

class Student2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student2 = student2s(:one)
  end

  test "should get index" do
    get student2s_url
    assert_response :success
  end

  test "should get new" do
    get new_student2_url
    assert_response :success
  end

  test "should create student2" do
    assert_difference('Student2.count') do
      post student2s_url, params: { student2: { age: @student2.age, name: @student2.name } }
    end

    assert_redirected_to student2_url(Student2.last)
  end

  test "should show student2" do
    get student2_url(@student2)
    assert_response :success
  end

  test "should get edit" do
    get edit_student2_url(@student2)
    assert_response :success
  end

  test "should update student2" do
    patch student2_url(@student2), params: { student2: { age: @student2.age, name: @student2.name } }
    assert_redirected_to student2_url(@student2)
  end

  test "should destroy student2" do
    assert_difference('Student2.count', -1) do
      delete student2_url(@student2)
    end

    assert_redirected_to student2s_url
  end
end
