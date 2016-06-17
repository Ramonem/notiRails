class Post < ActiveRecord::Base
  belongs_to :category
  before_save :default_values

  def update_visit
    self.update(visit: self.visit + 1)
  end

  private

  def default_values
    self.visit ||= 0
  end
end
