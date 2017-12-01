class AddReleaseDateToSongs < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :releasedate, :integer
  end
end
