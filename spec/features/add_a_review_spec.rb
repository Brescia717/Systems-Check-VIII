require 'rails_helper'

feature "Add a review" do
  scenario "User enters review body and rating then submits entry" do
    visit root_path

    click_on 'Add a Book'

    fill_in('Title', with: 'Harry Potter')
    fill_in('Author', with: 'J. K. Rowling')
    fill_in('Year', with: '1997')
    fill_in('Description', with: 'Blarg!')
    fill_in('Category', with: 'Fantasy')

    click_on 'Add Book'

    expect(page).to have_content('Harry Potter')

    fill_in('Body', with: 'Harry Potter sux')

    click_on 'Submit Review'

    expect(page).to have_content('Harry Potter sux')
  end
end
