require 'rails_helper'

describe Question do
  it { should validate_presence_of :description }
  it { should validate_presence_of :topic }

  it { should belong_to :user }
  it { should have_many :answers }
end
