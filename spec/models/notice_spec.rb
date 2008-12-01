require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Notice do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :subject => "value for subject",
      :body => "value for body"
    }
  end

  it "should create a new instance given valid attributes" do
    Notice.create!(@valid_attributes)
  end
end
