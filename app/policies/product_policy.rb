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
    self.admin_or_cook_owner?
  end

  def update?
    self.admin_or_cook_owner?
  end

  def destroy?
    self.admin_or_cook_owner?
  end

  def buy?
    not self.admin_or_cook_owner?
  end

  def admin_or_cook_owner?
    user and ((user.cook? and product.owner_of?(user)) or user.admin?)
  end
end