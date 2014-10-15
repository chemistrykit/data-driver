require 'rubyXL'
require 'csv'

module DataDriver

  def self.consume(file)
    case File.extname(file).downcase
    when '.xlsx'
      parse(scrub(RubyXL::Parser.parse(file).first.extract_data))
    when '.csv'
      parse CSV.read file
    end
  end

  def self.scrub(datas)
    datas.each do |data|
      data.map! do |record|
        record.nil? ? (record = '') : (record)
      end
    end
  end

  def self.parse(datas)
    descriptor = datas.shift
    descriptor = descriptor.map { |key| key.to_sym }
    datas.map { |data| Hash[ descriptor.zip(data) ] }
  end

end
