class AddValueToQItems < ActiveRecord::Migration[5.1]
  def change
    add_column :q_items, :value, :string
  end
end
