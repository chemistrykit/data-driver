require_relative '../lib/data-driver'

describe 'data-driver returns a Hash' do

  it 'for XLSX (single workbook)' do
    obj = DataDriver.consume '/Users/tourdedave/Desktop/471 Test data.xlsx'
    puts obj.inspect
  end

#  it 'for CSV' do
#    obj = DataDriver.consume '/Users/tourdedave/Dropbox/_dev/elemental-selenium/lib/tips/19-data-driven-testing/user_data.csv'
#    puts obj.inspect
#  end

end
