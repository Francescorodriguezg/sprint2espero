# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Pivot, type: :model do
  # tests go here
  subject do
    Pivot.new(user_id: 3, club_name: 'Club pato cornejo', sport_name: 'Tenis', date_time: '2022-09-30 10:36:01',
              moderador_id: 2, club_address: 'Raul Labbe', status: 'pending')
  end
  it 'date time should be present' do
    subject.date_time = nil
    expect(subject).to_not be_valid
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
  it 'status should be present' do
    subject.status = nil
    expect(subject).to_not be_valid
  end
  it 'user id should be present' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
  it 'moderator id should be present' do
    subject.moderador_id = nil
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
