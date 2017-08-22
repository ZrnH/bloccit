require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) {Question.create!(title:"New Question",body: "Question Body", resolved: TRUE) }

  describe "attributes" do
    it "has question title and body attributes" do
      expect(question).to have_attributes(title: "New Question", body: "Question Body", resolved: TRUE)
    end
  end
end
