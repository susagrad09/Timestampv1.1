require 'spec_helper'

describe Teacher do
  it {should belong_to :afterschool_class}
  it {should have_many :day_classes}
end
