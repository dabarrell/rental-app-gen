require 'pdf/toolkit'

my_pdf = PDF::Toolkit.open("temp.pdf")
my_pdf.updated_at = Time.now # ModDate
my_pdf["SomeAttribute"] = "Some value"
my_pdf.save!

class MyDocument < PDF::Toolkit
  info_accessor :some_attribute
  def before_save
    self.updated_at = Time.now
  end
end
my_pdf = MyDocument.open("temp.pdf")
my_pdf.some_attribute = "Some value"
my_pdf.save!
