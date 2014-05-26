class AddCidadeIdToUser < ActiveRecord::Migration
  def change
    add_reference :users, :cidade, index: true
  end
end
