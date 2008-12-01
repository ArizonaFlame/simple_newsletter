require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Reader do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :email => "value for email",
      :identity_code => "value for identity_code"
    }
  end

  it "should create a new instance given valid attributes" do
    Reader.create!(@valid_attributes)
  end
end
