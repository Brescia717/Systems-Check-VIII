require 'rails_helper'

feature 'Can navigate to a book on the list' do
  scenario 'User clicks on book from the list' do
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

    visit root_path
    click_link 'Harry Potter'

    expect(page).to have_content('1997')

    click_on 'Home'
    expect(page).to have_content('List of All Books')
  end
end
