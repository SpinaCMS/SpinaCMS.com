# This migration comes from spina (originally 12)
class AddUrlTitleToSpinaPageTranslations < ActiveRecord::Migration[6.0]
  def change
    add_column :spina_page_translations, :url_title, :string
  end
end
