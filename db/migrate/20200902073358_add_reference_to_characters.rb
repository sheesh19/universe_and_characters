class AddReferenceToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_reference :characters, :universe, foreign_key: true
  end
end
