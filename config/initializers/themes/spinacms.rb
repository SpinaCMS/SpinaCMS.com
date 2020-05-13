::Spina::Theme.register do |theme|

  theme.name = 'spinacms'
  theme.title = 'Spina CMS'

  theme.parts = [{
    name:           'text',
    title:          'Text',
    part_type:  'Spina::Parts::Text'
  }]

  theme.view_templates = [{
    name:       'homepage',
    title:      'Homepage',
    parts: ['text']
  }, {
    name:       'guide',
    title:      'Guide',
    description: 'Guide page',
    usage:       'Use for documentation',
    parts: ['text']
  }, {
    name:       'guide_index',
    title:      'Guide',
    parts: ['text']
  }, {
    name:       'plugins',
    title:      'Plugins',
    parts: []
  }, {
    name:       'showcase',
    title:      'Showcase',
    parts: []
  }, {
    name: 'show',
    title:        'Default',
    description:  'A simple page',
    usage:        'Use for your content',
    parts:   ['text']
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
