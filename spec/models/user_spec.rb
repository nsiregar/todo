require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has correct column and attribute' do
    is_expected.to have_db_column :name
    is_expected.to have_db_column :email
  end

  it 'has validation' do
    is_expected.to validate_presence_of :name
    is_expected.to validate_presence_of :email
  end
end
