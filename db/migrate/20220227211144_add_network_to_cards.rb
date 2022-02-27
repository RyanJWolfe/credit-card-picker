class AddNetworkToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :network, :string
  end
end
