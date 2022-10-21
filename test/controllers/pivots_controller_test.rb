# frozen_string_literal: true

require 'test_helper'

class PivotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pivot = pivots(:one)
  end

  test 'should get index' do
    get pivots_url
    assert_response :success
  end

  test 'should get new' do
    get new_pivot_url
    assert_response :success
  end

  test 'should create pivot' do
    assert_difference('Pivot.count') do
      post pivots_url, params: { pivot: {} }
    end

    assert_redirected_to pivot_url(Pivot.last)
  end

  test 'should show pivot' do
    get pivot_url(@pivot)
    assert_response :success
  end

  test 'should get edit' do
    get edit_pivot_url(@pivot)
    assert_response :success
  end

  test 'should update pivot' do
    patch pivot_url(@pivot), params: { pivot: {} }
    assert_redirected_to pivot_url(@pivot)
  end

  test 'should destroy pivot' do
    assert_difference('Pivot.count', -1) do
      delete pivot_url(@pivot)
    end

    assert_redirected_to pivots_url
  end
end
