require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'validations' do
    it { validate_presence_of :username }
    it { validate_presence_of :password }
    it { validate_presence_of :first_name }
    it { validate_presence_of :last_name }
  end
end
