require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Archtexx" }
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content("Archtexx") } 
    it { should have_title(full_title("")) } 
  end

  describe "Contact Page" do
    before { visit contact_path }

    it { should have_content("Contact Us") } 
    it { should have_title(full_title("Contact Us")) }
  end

end