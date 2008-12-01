require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/notices/new.html.erb" do
  include NoticesHelper
  
  before(:each) do
    assigns[:notice] = stub_model(Notice,
      :new_record? => true,
      :name => "value for name",
      :subject => "value for subject",
      :body => "value for body"
    )
  end

  it "should render new form" do
    render "/notices/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", notices_path) do
      with_tag("input#notice_name[name=?]", "notice[name]")
      with_tag("input#notice_subject[name=?]", "notice[subject]")
      with_tag("textarea#notice_body[name=?]", "notice[body]")
    end
  end
end


