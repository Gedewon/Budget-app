require 'rails_helper'
RSpec.describe Transferce, type: :model do
  before(:example) do
    @user = User.create(name: 'testname', email: 'testname@testdomain.com', password: 'somerandompassword')
    @category = Categorie.new(name: 'Books', icon: 'someIcon', user_id: @user.id)
  end
  subject(:transfer) do
    Transferce.new(
      name: 'C++ programing',
      amount: 23,
      user_id: @user.id,
      categorie_id: nil
    )
  end
  it 'transferce should be valid with correct attributes' do
    expect(subject).to be_valid
  end
  it 'transferce should be invalid with out name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'transferce should be invalid with out amount' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end
end
