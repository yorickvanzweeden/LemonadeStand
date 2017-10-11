class ProductPolicy
  attr_reader :user, :product

  def initialize(user, product)
    @user = user
    @product = product
  end

  def new?
    user and (user.cook? or user.admin?)
  end

  def edit?
    user and ((user.cook? and product.owner_of?(user)) or user.admin?)
  end

  def update?
    user and ((user.cook? and product.owner_of?(user)) or user.admin?)
  end

  def destroy?
    user and ((user.cook? and product.owner_of?(user)) or user.admin?)
  end
end