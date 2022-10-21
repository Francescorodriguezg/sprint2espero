# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Publication, type: :model do
  # tests go here
  subject do
    Publication.new(club_name: 'Club pato cornejo', club_address: 'Raul Labbe', sport_name: 'Tenis', user_id: 3)
  end
  it 'club name should be present' do
    subject.club_name = nil
    expect(subject).to_not be_valid
  end
  it 'club address should be present' do
    subject.club_address = nil
    expect(subject).to_not be_valid
  end
  it 'sport name should be present' do
    subject.sport_name = nil
    expect(subject).to_not be_valid
  end
  it 'user id should be present' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
  it 'club name should not be too short' do
    subject.club_name = 'a'
    expect(subject).to_not be_valid
  end
  it 'club name should not be too long' do
    subject.club_name = 'a' * 30
    expect(subject).to_not be_valid
  end
  it 'club address should not be too short' do
    subject.club_address = 'a'
    expect(subject).to_not be_valid
  end
  it 'club address should not be too long' do
    subject.club_address = 'a' * 30
    expect(subject).to_not be_valid
  end
  it 'sport name should not be too short' do
    subject.sport_name = 'a'
    expect(subject).to_not be_valid
  end
  it 'sport name should not be too long' do
    subject.sport_name = 'a' * 20
    expect(subject).to_not be_valid
  end
end
