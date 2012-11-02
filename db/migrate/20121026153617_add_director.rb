class Movie < ActiveRecord::Migration
  def up
    change_table :movies do | t |
      t.string :director
    end
  end

  def down
    change_table :movies do | t |
      t.remove :director
    end
  end
end
