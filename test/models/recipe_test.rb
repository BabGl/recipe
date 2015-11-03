require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
  def setup
    @chef = Chef.create(chefname: "bon", email:"bob@gmail.com")
    @recipe = Recipe.new(name: "chicken parm", summary: "this is the best chicken pam recipe ever",
           description: "")
            
  end
  
 # Test for Recipe
  test 'recipe should be valid' do 
    assert @recipe.valid?
  end
  
  # Test for Chef_id
  test 'Chef_id should be present' do 
    assert @recipe.valid?
  end
  
  #Test for Name
  test "name should be present" do
    @recipe.name =  " "
    assert_not @recipe.valid?
  end
    
  #Test for lengt
  test "Name length should not be too long" do
   @recipe.name = "a" * 101
   assert_not @recipe.valid?
    
  end
  
  test "Name length should not be too short" do
    @recipe.name = "aaaa"
   assert_not @recipe.valid?
  end
  
  #Test for Summary
  test "summary must be present" do
    @recipe.summary = " "
    assert_not @recipe.valid?
  end
  
  test "summary length should not be too long" do
    @recipe.summary = "a" * 151
    assert_not @recipe.valid?
  end
  
  test "summary length should not be to short" do
    
      @recipe.summary = "aaaa" * 9
      assert_not @recipe.valid?
      
  end
  
  #Test for description
  test "description should be present" do
    @recipe.description = " "
    assert_not @recipe.valid?
    
  end
  test "description should be not too long" do
    @recipe.description = "" * 19
    assert_not @recipe.valid?
  end
  
  test "description should not be too short" do 
     @recipe.description = "aaaa"
      assert_not @recipe.valid?
  end

end