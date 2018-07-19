require 'rails_helper'

describe Movie, type: :model do
  subject { FactoryBot.build(:movie) }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to delegate_method(:username).to(:user) }

  it { is_expected.to have_many(:ratings) }
  it { is_expected.to have_many(:likes).class_name('Rating').conditions(score: 1) }
  it { is_expected.to have_many(:hates).class_name('Rating').conditions(score: -1) }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:description) }

  context 'scopes' do
    describe '.default_scope' do
      let!(:movies) { FactoryBot.create_list :movie, 5, :with_descending_timestamps }

      it 'orders movies by creation time in descending order' do
        expect(Movie.all.ids).
          to eq movies.sort_by { |c| c.created_at }.reverse.map(&:id)
      end
    end
  end
end