class AddCategoriesToGifs < ActiveRecord::Migration[5.1]
  def change
    add_reference :gifs, :categories
  end
end
