require 'test_helper'

class CheckatrisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @checkatri = checkatris(:one)
  end

  test "should get index" do
    get checkatris_url
    assert_response :success
  end

  test "should get new" do
    get new_checkatri_url
    assert_response :success
  end

  test "should create checkatri" do
    assert_difference('Checkatri.count') do
      post checkatris_url, params: { checkatri: { descripcion: @checkatri.descripcion, referencia: @checkatri.referencia } }
    end

    assert_redirected_to checkatri_url(Checkatri.last)
  end

  test "should show checkatri" do
    get checkatri_url(@checkatri)
    assert_response :success
  end

  test "should get edit" do
    get edit_checkatri_url(@checkatri)
    assert_response :success
  end

  test "should update checkatri" do
    patch checkatri_url(@checkatri), params: { checkatri: { descripcion: @checkatri.descripcion, referencia: @checkatri.referencia } }
    assert_redirected_to checkatri_url(@checkatri)
  end

  test "should destroy checkatri" do
    assert_difference('Checkatri.count', -1) do
      delete checkatri_url(@checkatri)
    end

    assert_redirected_to checkatris_url
  end
end
