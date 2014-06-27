require 'rails_helper'

describe Release do
    
    # ActiveRecord relations
    it { expect(subject).to belong_to(:project) }

    # Validations
    it { expect(subject).to validate_uniqueness_of(:name).scoped_to(:project_id) }
    before { subject.stub(:not_draft?) { true } }
    it { expect(subject).to validate_presence_of(:name) }
    it { expect(subject).to validate_presence_of(:notes) }
    it { expect(subject).to validate_presence_of(:date) }
    it { expect(subject).to ensure_length_of(:notes).is_at_least(10) }

    describe "Default scope" do
        let!(:release_1) { create(:release, date: Date.today) }
        let!(:release_2) { create(:release, date: Date.yesterday) }
        let!(:release_3) { create(:release, date: 3.days.ago) }

        it "should return an array of products ordered by descending date" do
            expect(Release.last(3)).to match_array([release_1, release_2, release_3])
        end
    end

    describe "Calculating if a release should be subject to presence validation" do

        context "if the release has a false value for the draft property" do
            let!(:release) { create(:release, draft: false) }

            it "should return true" do
                expect(release.not_draft?).to eq true
            end
        end

        context "if the release has a true value for the draft property" do
            let(:release) { create(:release, draft: true) }

            it "should return nil" do
                expect(release.not_draft?).to eq nil
            end
        end
    end
end
