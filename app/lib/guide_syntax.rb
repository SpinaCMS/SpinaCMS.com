class GuideSyntax
  def self.convert(html)
    
    html ||= ""

    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, fenced_code_blocks: true, disable_indented_code_blocks: true, lax_spacing: true)
    html = markdown.render(html)

    html = html.gsub(/\[youtube\s+(.*)\]/, '<div class="screencast-player" data-type="youtube" data-video-id="\1"></div>')

  end

end