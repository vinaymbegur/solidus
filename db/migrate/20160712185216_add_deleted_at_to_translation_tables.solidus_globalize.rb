# This migration comes from solidus_globalize (originally 20150224152415)
class AddDeletedAtToTranslationTables < ActiveRecord::Migration
  def change
    unless column_exists?(:spree_product_translations, :deleted_at)
      add_column :spree_product_translations, :deleted_at, :datetime
      add_index :spree_product_translations, :deleted_at
    end
  end
end
