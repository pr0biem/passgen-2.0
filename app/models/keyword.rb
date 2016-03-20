class Keyword < ActiveRecord::Base

  validates :separator, length: { in: 0..5 }, on: :submit
  validates :length_of_password, length: { in: 1..13 }, on: :submit

  def index
    @pass = Keyword.all
  end
end
