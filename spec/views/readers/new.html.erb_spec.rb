require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/readers/new.html.erb" do
  include ReadersHelper
  
  before(:each) do
    assigns[:reader] = stub_model(Reader,
      :new_record? => true,
      :name => "value for name",
      :email => "value for email",
      :identity_code => "value for identity_code"
    )
  end

  it "should render new form" do
    render "/readers/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", readers_path) do
      with_tag("input#reader_name[name=?]", "reader[name]")
      with_tag("input#reader_email[name=?]", "reader[email]")
      with_tag("input#reader_identity_code[name=?]", "reader[identity_code]")
    end
  end
end


