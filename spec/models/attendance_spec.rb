require 'spec_helper'

describe Attendance do
  it { should belong_to :session}
  it { should belong_to :student}


describe "StudentAttendanceValidator" do
  it "should prevent two attendances from the same student to be created in one session" do
    class_1 = Session.create(afterschool_class_id: 4, date: Time.zone.now.to_date)
    class_2 = Session.create(afterschool_class_id: 4, date: Time.zone.now.to_date)
    Session.all.should include class_1
    Session.all.should_not include class_2
  end
end