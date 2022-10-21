# frozen_string_literal: true

require 'rails_helper'

class ResponseControllerTest < ActiveSupport::TestCase
  RSpec.describe 'Response', type: :request do
    # aca van los tests
    describe 'index' do
      it 'should return a successful response' do
        get '/responses'
        expect(response).to have_http_status(302)
      end
    end
  end
end
