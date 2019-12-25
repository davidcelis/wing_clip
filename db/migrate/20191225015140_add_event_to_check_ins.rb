class AddEventToCheckIns < ActiveRecord::Migration[6.0]
  def change
    add_column :check_ins, :event, :text
  end
end
