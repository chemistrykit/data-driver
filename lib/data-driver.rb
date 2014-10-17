require 'rubyXL'
require 'csv'

module DataDriver

  def self.consume(file, worksheet_number = 0)
    case File.extname(file).downcase
    when '.xlsx'
      #parse(scrub(RubyXL::Parser.parse(file)[worksheet_number].extract_data))
      parse RubyXL::Parser.parse(file)[worksheet_number].extract_data
    when '.csv'
      parse CSV.read file
    end
  end

  private

    def self.parse(datas)
      descriptor = datas.shift
      descriptor = descriptor.map { |key| key.to_sym }
      datas.map { |data| Hash[ descriptor.zip(data) ] }
    end

end
