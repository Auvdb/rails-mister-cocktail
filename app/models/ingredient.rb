class Ingredient < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :doses
  before_destroy :ensure_one
  private
    def ensure_one
      if Ingredient.dose.count == 1
        return false
      else
        return true
      end
    end
end
