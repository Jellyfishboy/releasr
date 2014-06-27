require 'rails_helper'

describe Project do

    # ActiveRecord relations
    it { expect(subject).to have_many(:releases) }

    # Validations
    it { expect(subject).to validate_uniqueness_of(:name) }
    it { expect(subject).to validate_presence_of(:name) }
    it { expect(subject).to validate_presence_of(:github) }
    it { expect(subject).to validate_presence_of(:description) }
    it { expect(subject).to ensure_length_of(:description).is_at_most(150) }
end