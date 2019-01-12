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
      docs.each do |doc|
        if doc["type"] == "file"
          title = doc["name"].gsub(/\.md\z/, "").gsub(/\A\d?\.?(\s|_)?/, "").humanize
          page = parent.children.create(title: title, view_template: "guide")

          # Content
          c = get_url(doc["download_url"]).body
          part = page.page_parts.create(name: "text", title: "Text", page_partable: Spina::Text.create(content: c))

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
      self.class.get("/repos/spinacms/spina/contents/docs")
    end

    def get_url(url)
      self.class.get(url)
    end

end