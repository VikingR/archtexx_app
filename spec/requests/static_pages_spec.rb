require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Archtexx" }
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Archtexx' }
    let(:page_title) { '' }
    
    it_should_behave_like "all static pages"
  end

  describe "Contact Page" do
    before { visit contact_path }
    let (:heading)    { 'Contact Us' }
    let (:page_title) { 'Contact Us' }

    it_should_behave_like "all static pages"
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "Sign Up"
    expect(page).to have_title(full_title("Sign Up"))
    click_link "Back"
    expect(page).to have_title(full_title(""))
    click_link "Contact"
    expect(page).to have_title(full_title("Contact Us"))
    click_link "Back"
    expect(page).to have_title(full_title(""))
  end

end