require 'rails_helper'

RSpec.describe Micropost, type: :model do
  let(:user) { FactoryGirl.create(:user) }
  before { @micropost = user.microposts.build(content: "Lorem ipsum") }

  subject { @micropost }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  #it(:user) { should eq user }

  it { should be_valid }

  describe "when user_id isn't present " do
    before { @micropost.user_id = nil }
    it { should_not be_valid }
  end
end
