Jekyll::Hooks.register [:documents, :pages], :pre_render do |doc, payload|
  doc.content.gsub!(/\[([^\]]+)\]\(([^\)]+)\)/, '<a href="\2" target="_blank">\1</a>')
end
