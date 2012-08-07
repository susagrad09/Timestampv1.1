require 'spec_helper'

describe Teacher do
  it {should belong_to :afterschool_class}

  it { should validate_presence_of :salutation }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_uniqueness_of(:first_name).scoped_to(:last_name) }
end
