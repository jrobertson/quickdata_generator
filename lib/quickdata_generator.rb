# file: quickdata_generator.rb
# desc: Generators random data from a simple_config format

require 'simple-config'


class QuickDataGenerator

  attr_reader :to_a

  def initialize(s, rows: 3)

    entries = SimpleConfig.new(s).to_h
    @to_a = rows.times.map { generate_value(entries) }

  end


  private

  def generate_value(entries)

    entries.inject({}) do |r, x|

      key, s = x

      val = if /^(?<x1>\d+)\.\.(?<x2>\d+)$/ =~ s then

        Range.new(x1.to_i,x2.to_i).to_a.sample

      elsif /^(?<x1>\d+)\.(?<i>\d+)\.\.(?<x2>\d+(?:\.\d+)?)$/ =~ s then

        range = Range.new(x1.to_i,x2.to_i)
        a = []
        increment = 1 / 10.0 ** i.length

        sum = "#{x1}.#{i}".to_f
        (sum += increment; a << sum) until sum >= x2.to_i
        a.map{|x| x.round(i.length)}.to_a.sample

      else
        s.split(/\s*,\s*/).sample
      end

      r.merge(key => val)
    end      

  end

end

