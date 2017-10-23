class ProductPolicy
  attr_reader :user, :product

  def initialize(user, product)
    @user = user
    @product = product

    if user
      @profile = user.profile
    end  
  end

  def new?
    user and (@profile.cook? or @profile.admin?)
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
    user and ((@profile.cook? and product.owner_of?(@profile)) or @profile.admin?)
  end
end