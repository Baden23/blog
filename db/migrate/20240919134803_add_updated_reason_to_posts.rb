class AddUpdatedReasonToPosts < ActiveRecord::Migration[7.2]
  def change
    add_column :posts, :updated_reason, :string
  end
end 
