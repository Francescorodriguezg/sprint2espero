# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Review, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  require 'rails_helper'

  # tests go here
  subject do
    Review.new(publication_id: 1, review: 'Muy buen club')
  end
  it 'publication id should be present' do
    subject.publication_id = nil
    expect(subject).to_not be_valid
  end
  it 'review should be present' do
    subject.review = nil
    expect(subject).to_not be_valid
  end
end
