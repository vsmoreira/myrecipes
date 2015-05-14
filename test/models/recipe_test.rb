require "test_helper"

class RecipeTest < ActiveSupport::TestCase
  def setup
    @chef = Chef.create(chefname: "Alice", email: "alice.chef@example.org")
    @recipe = @chef.recipes.build(name: "chiken parm", summary: "this is the best chicken parm recipe ever",
                        description: "heat oil, add onions, add tomato souce, add chicken, cook for 20 minutes" )
  end
  
  test "recipe must be valid" do
    assert @recipe.valid?
  end
  
  test "chef_id must be present" do
    @recipe.chef_id = nil
    assert_not @recipe.valid?
  end
  
  test "name must be present" do
    @recipe.name = nil
    assert_not @recipe.valid?
  end
  
  test "name lenght should not be too long" do
    @recipe.name = "a" * 101
    assert_not @recipe.valid?
  end
  
  test "name lenght should not be too short" do
    @recipe.name = "1234"
    assert_not @recipe.valid?
  end
  
  test "summary must be present" do
    @recipe.summary = nil
    assert_not @recipe.valid?
  end
  
  test "summary lenght should not be too long" do
    @recipe.summary = "a" * 151
    assert_not @recipe.valid?
  end
  
  test "summary lenght should not be too short" do
    @recipe.summary = "a" * 9
    assert_not @recipe.valid?
  end
  
  test "description must be present" do
    @recipe.description = nil
    assert_not @recipe.valid?
  end
  
  test "description lenght should not be too long" do
    @recipe.description = "a" * 501
    assert_not @recipe.valid?
  end
  
  test "description lenght should not be too short" do
    @recipe.description = "a" * 19
    assert_not @recipe.valid?
  end
end

