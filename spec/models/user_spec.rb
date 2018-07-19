require 'rails_helper'

describe User, type: :model do
  subject { FactoryBot.build(:user) }

  it { is_expected.to validate_presence_of(:username) }
  it { is_expected.to validate_uniqueness_of(:username).case_insensitive }
  it { is_expected.to validate_presence_of(:password) }
  it { is_expected.to validate_length_of(:password)
                        .is_at_least(Devise::password_length.begin)
                        .is_at_most(Devise::password_length.end) }

  it { is_expected.to have_many(:movies) }
  it { is_expected.to have_many(:ratings) }
end