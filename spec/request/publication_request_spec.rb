# frozen_string_literal: true

require 'rails_helper'

class PublicationControllerTest < ActiveSupport::TestCase
  RSpec.describe Publication, type: :request do
    # aca van los tests
    before do
      @user = User.create(email: 'test@test.com', password: '123456')
      sign_in @user
    end

    describe 'index' do
      it 'should return a successful response' do
        get '/publications/'
        expect(response).to have_http_status(200)
      end
    end

    describe 'end' do
      it 'should return a successful response' do
        get '/publications/new'
        expect(response).to have_http_status(200)
      end
    end
  end
end
