require 'rails_helper'

describe "the add an individual_section process" do
  it "adds an individual section" do
    HealthCategory.create(category: "Yoga")
    visit health_categories_path
    click_link "Yoga"
    click_link 'Add an article to Inner Health'
    fill_in 'Title', :with => 'Bikram Yoga'
    fill_in 'Content', :with => 'Not so fun.'
    click_on 'Create Individual section'
    expect(page).to have_content 'Bikram'
  end

  it "gives an error when no category is entered" do
    HealthCategory.create(category: "Meditation")
    visit health_categories_path
    click_link "Meditation"
    click_link 'Add an article to Inner Health'
    click_on 'Create Individual section'
    expect(page).to have_content 'errors'
  end

end
