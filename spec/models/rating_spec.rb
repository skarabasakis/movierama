require 'rails_helper'

describe Rating, type: :model do
  subject { FactoryBot.build(:rating) }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:movie) }

  it { is_expected.to define_enum_for(:score).with(like: 1, hate: -1) }

  context 'callbacks' do
    let(:movie) { FactoryBot.create :movie }
    let(:like) { FactoryBot.build :like, movie: movie }
    let(:hate) { FactoryBot.build :hate, movie: movie }

    describe 'after_commit' do
      it 'updates counter cache for likes' do
        expect { like.save }.to change(movie, :likes_count).from(0).to(1)
      end
      it 'updates counter cache for hates' do
        expect { hate.save }.to change(movie, :hates_count).from(0).to(1)
      end
    end
  end
end