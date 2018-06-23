class GuideSyntax
  def self.convert(html)
    
    html ||= ""
    html = html.gsub(/```[^```]*```/m) do |m|
      m.gsub(/<br[\/ ]*>/i, "\n").gsub /```$(.*)```/m, '<pre><code>\1</code></pre>'
    end

    html = html.gsub(/\[youtube\s+(.*)\]/, '<div class="screencast-player" data-type="youtube" data-video-id="\1"></div>')

  end

end