require "spec_helper"

describe "StaticPages" do
    let(:base_title) {"Seventy.com Draft Site | "}
    
  describe "Home Page" do
    it "should have the content 'Seventy.com Draft Site'" do
        visit "/static_pages/home"
        page.should have_content("Seventy.com Draft Site")
        page.should have_selector("title", text: "#{base_title}Home")
    end
  end
  describe "About Page" do
    it "should have the content 'About Seventy.com'" do
        visit "/static_pages/about"
        page.should have_content("About Seventy.com")
        page.should have_selector("title", text: "#{base_title}About")
    end
  end
  describe "Contact Page" do
    it "should have the content 'Contact Seventy.com'" do
        visit "/static_pages/contact"
        page.should have_content("Contact Seventy.com")
        page.should have_selector("title", text: "#{base_title}Contact")
    end
  end
end
