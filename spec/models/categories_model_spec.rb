require "rails_helper"

RSpec.describe Categorie, :type => :model do
    before(:example){ 
        @user = User.create(name:'testname',email:'testname@testdomain.com',password:"somerandompassword")
   
        @category = Categorie.new(
        name:"Books",
        icon:"someIcon",
        user_id:@user.id,
        )

    }
    it "is valid with valid attributes" do
      expect( @category).to be_valid
    end

    it "is not valid with out a name" do
        @category.name = nil 
        expect( @category).to_not be_valid
    end

    it "is not valid with out an icon" do
        @category.icon = nil 
        expect( @category).to_not be_valid
    end
end