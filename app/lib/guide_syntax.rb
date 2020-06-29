require 'commonmarker'

class GuideSyntax
  def self.convert(markdown)
    
    html ||= ""

    html = CommonMarker.render_html(markdown.to_s)

    html = html.gsub(/\[youtube\s+(.*)\]/, '<div class="screencast-player" data-type="youtube" data-video-id="\1"></div>')

  end

end