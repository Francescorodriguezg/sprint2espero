# frozen_string_literal: true

require 'application_system_test_case'

class PivotsTest < ApplicationSystemTestCase
  setup do
    @pivot = pivots(:one)
  end

  test 'visiting the index' do
    visit pivots_url
    assert_selector 'h1', text: 'Pivots'
  end

  test 'creating a Pivot' do
    visit pivots_url
    click_on 'New Pivot'

    click_on 'Create Pivot'

    assert_text 'Pivot was successfully created'
    click_on 'Back'
  end

  test 'updating a Pivot' do
    visit pivots_url
    click_on 'Edit', match: :first

    click_on 'Update Pivot'

    assert_text 'Pivot was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Pivot' do
    visit pivots_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Pivot was successfully destroyed'
  end
end
