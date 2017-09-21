class GuideSyntax
  def self.convert(html)
    
    html ||= ""
    html.gsub(/```[^```]*```/m) do |m|
      m.gsub(/<br[\/ ]*>/i, "\n").gsub /```$(.*)```/m, '<pre><code>\1</code></pre>'
    end

  end

end