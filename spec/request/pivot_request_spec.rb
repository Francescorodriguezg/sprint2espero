# frozen_string_literal: true

require 'rails_helper'

class PivotControllerTest < ActiveSupport::TestCase
  RSpec.describe Pivot, type: :request do
    describe 'index' do
      it 'should return a successful response' do
        get '/pivots'
        expect(response).to have_http_status(302)
      end
    end
  end
end
