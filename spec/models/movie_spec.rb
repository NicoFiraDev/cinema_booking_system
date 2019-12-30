require 'rails_helper'

RSpec.describe Movie, type: :model do
  
  context 'when creating a new movie' do
    subject do
      Movie.new(
        name: 'abc',
        description: 'this is a test description',
        url: 'website.com',
        presentation_day: 'Monday'
      )
    end

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      should validate_presence_of(:name)
      subject.name = nil
    end

    it 'is not valid without a description' do
      should validate_presence_of(:description)
      subject.description = nil
    end

    it 'is not valid without a url' do
      should validate_presence_of(:url)
      subject.url = nil
    end

    it 'is not valid without a presentation day' do
      should validate_presence_of(:presentation_day)
      subject.presentation_day = nil
    end
  end
end
