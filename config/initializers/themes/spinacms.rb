::Spina::Theme.register do |theme|

  theme.name = 'spinacms'
  theme.title = 'Spina CMS'

  theme.page_parts = [{
    name:           'text',
    title:          'Text',
    partable_type:  'Spina::Text'
  }]

  theme.view_templates = [{
    name:       'homepage',
    title:      'Homepage',
    page_parts: ['text']
  }, {
    name:       'guide',
    title:      'Guide',
    description: 'Guide page',
    usage:       'Use for documentation',
    page_parts: ['text']
  }, {
    name:       'guide_index',
    title:      'Guide',
    page_parts: ['text']
  }, {
    name:       'plugins',
    title:      'Plugins',
    page_parts: []
  }, {
    name:       'showcase',
    title:      'Showcase',
    page_parts: []
  }, {
    name: 'show',
    title:        'Default',
    description:  'A simple page',
    usage:        'Use for your content',
    page_parts:   ['text']
  }]

  theme.custom_pages = [{
    name:           'homepage',
    title:          'Homepage',
    deletable:      false,
    view_template:  'homepage'
  }, {
    name:           'guide',
    title:          'Guide',
    deletable:      false,
    view_template:  'guide_index'
  }, {
    name:           'showcase',
    title:          'Showcase',
    deletable:      false,
    view_template:  'showcase'
  }, {
    name:           'plugins',
    title:          'Plugins',
    deletable:      false,
    view_template:  'plugins'
  }]

end
