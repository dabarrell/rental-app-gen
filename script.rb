require 'prawn'
require 'pdf/toolkit'

template_file = '/vagrant/templates/nelson-alexander.pdf'
prawn_file = 'temp.pdf'
output_file = 'output.pdf'

Prawn::Document.generate(prawn_file) do
  # Generate whatever you want here.
  text_box "This is some new text!", :at => [100, 308]
  start_new_page
  text_box "This is the second page", :at => [100, 300]
end

PDF::Toolkit.pdftk(prawn_file, "multibackground", template_file, "output", output_file)
