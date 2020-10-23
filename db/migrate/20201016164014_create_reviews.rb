class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :admin, :boolean, default: false
    create_table :reviews do |t|
      t.column(:author, :string)
      t.column(:content_body, :string)
      t.column(:rating, :integer)
      t.column(:product_id, :integer)

      t.timestamps
    end
  end
end
