require 'rails_helper'

feature 'Add a book to the list' do
  scenario 'User enters book info and submits entry' do
    visit root_path

    click_on 'Add a Book'

    fill_in('Title', with: 'Harry Potter')
    fill_in('Author', with: 'J. K. Rowling')
    fill_in('Year', with: '1997')
    fill_in('Description', with: 'Blarg!')
    fill_in('Category', with: 'Fantasy')

    click_on 'Add Book'

    expect(page).to have_content('Harry Potter')
  end
end
