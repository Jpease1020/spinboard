class AddsReferencesAndReadStatusToLinks < ActiveRecord::Migration
  def change
    add_column :links, :read, :boolean, default: false
    add_reference :links, :user, index: true, foreign_key: true
  end
end
