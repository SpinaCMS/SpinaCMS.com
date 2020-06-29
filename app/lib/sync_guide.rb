class SyncGuide
  include HTTParty

  base_uri 'https://api.github.com'
  basic_auth 'Bramjetten', Rails.application.secrets.github_personal_token

  def initialize()
  end

  def sync!
    # Delete all guide pages
    Spina::Page.where(view_template: "guide").destroy_all

    # Create pages
    create_pages(get_docs, guide)
  end

  private

    def create_pages(docs, parent)
      docs.each.with_index do |doc, index|
        if doc["type"] == "file"
          position = doc["name"].match(/\A\d/)[0]
          title = doc["name"].gsub(/\.md\z/, "").gsub(/\A\d?\.?(\s|_)?/, "").humanize
          page = Spina::Page.create(title: title.titleize, view_template: "guide", parent_id: parent.id, position: position)

          # Content
          c = get_url(doc["download_url"]).body
          page.en_content << Spina::Parts::Text.new(name: "text", title: "Text", content: c)
          page.save

          # Any children?
          child_folder = docs.find do |d|
            next if d["type"] != "dir"

            dir_title = d["name"].gsub(/\.md\z/, "").gsub(/\A\d?\.?(\s|_)?/, "").humanize
            dir_title == title
          end
          create_pages(get_url(child_folder["url"]), page) if child_folder.present?
        end
      end
    end

    def guide
      Spina::Page.find_by(name: "guide")
    end

    def get_docs
      self.class.get("/repos/spinacms/spina/contents/docs/v2")
    end

    def get_url(url)
      self.class.get(url)
    end

end