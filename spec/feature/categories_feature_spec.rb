require 'rails_helper'

RSpec.describe CategoriesController, type: :feature do
  before(:example) do
    @user = User.first || User.create(name: 'testname', email: 'testname@testdomain.com',
                                      password: 'somerandompassword')
    @category = Categorie.create(
      name: 'Books',
      icon: 'someIcon',
      user_id: @user.id
    )
  end

  it 'SIGN IN user in / home ' do
    visit '/'
    expect(current_path).to eq(root_path)
  end

  it 'LOGIN path with session' do
    visit '/'

    click_button 'login'

    fill_in 'Email', with: 'testname@testdomain.com'
    fill_in 'Password', with: 'somerandompassword'
    click_button 'Log in'

    expect(page).to have_text('Signed in successfully')
  end

  it 'Create New Transaction' do
    visit '/'

    click_button 'login'

    fill_in 'Email', with: 'testname@testdomain.com'
    fill_in 'Password', with: 'somerandompassword'
    click_button 'Log in'

    click_button 'New Categorie'
    fill_in 'categorie_name', with: 'testCategory'
    click_button 'Save'
    expect(page).to have_text('Transaction was successfully created.')
  end
end
