require_relative '../lib/data-driver'

describe 'data-driver' do

  def file(name)
    File.join Dir.pwd, 'spec', name
  end

  context 'returns a Hash' do

    it 'for CSV' do
      obj = DataDriver.consume file('data.csv')
      expect(obj.class).to eql Array
    end

    it 'for XLSX' do
      obj = DataDriver.consume file('data.xlsx')
      expect(obj.class).to eql Array
    end

  end

  context 'parses the data' do

    it 'for CSV' do
      obj = DataDriver.consume file 'data.csv'
      expect(obj[0][:account_type]).to eql 'bad_password'
      expect(obj[1][:account_type]).to eql 'bad_username'
      expect(obj[2][:account_type]).to eql 'standard_user'
    end

    it 'for XLSX' do
      obj = DataDriver.consume file('data.xlsx')
      expect(obj[0][:id]).to eql 12345
      expect(obj[1][:id]).to eql 67890
      expect(obj[2][:id]).to eql 11223344
    end

    it '-> converts blanks to nil' do
      obj = DataDriver.consume file('data.xlsx'), 1
      expect(obj[0][:user]).to eql nil
      expect(obj[0][:pass]).to eql nil
    end

  end

end
