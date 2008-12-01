require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/readers/index.html.erb" do
  include ReadersHelper
  
  before(:each) do
    assigns[:readers] = [
      stub_model(Reader,
        :name => "value for name",
        :email => "value for email",
        :identity_code => "value for identity_code"
      ),
      stub_model(Reader,
        :name => "value for name",
        :email => "value for email",
        :identity_code => "value for identity_code"
      )
    ]
  end

  it "should render list of readers" do
    render "/readers/index.html.erb"
    response.should have_tag("tr>td", "value for name", 2)
    response.should have_tag("tr>td", "value for email", 2)
    response.should have_tag("tr>td", "value for identity_code", 2)
  end
end

