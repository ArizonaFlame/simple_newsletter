require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/notices/index.html.erb" do
  include NoticesHelper
  
  before(:each) do
    assigns[:notices] = [
      stub_model(Notice,
        :name => "value for name",
        :subject => "value for subject",
        :body => "value for body"
      ),
      stub_model(Notice,
        :name => "value for name",
        :subject => "value for subject",
        :body => "value for body"
      )
    ]
  end

  it "should render list of notices" do
    render "/notices/index.html.erb"
    response.should have_tag("tr>td", "value for name", 2)
    response.should have_tag("tr>td", "value for subject", 2)
    response.should have_tag("tr>td", "value for body", 2)
  end
end

