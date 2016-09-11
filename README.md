# Introducing the quickdata_generator gem

    require 'quickdata_generator'

    config = "
    age: 14..65
    height: 1.4..2.2
    gender: m, f
    "

    a = QuickDataGenerator.new(config, rows: 10).to_a

## Output

<pre>
=> [
{:age=>36, :height=>2.0, :gender=>"f"}, {:age=>25, :height=>1.7, :gender=>"m"},
{:age=>18, :height=>1.5, :gender=>"m"}, {:age=>52, :height=>1.9, :gender=>"f"},
{:age=>32, :height=>1.8, :gender=>"m"}, {:age=>56, :height=>1.5, :gender=>"m"},
{:age=>18, :height=>1.6, :gender=>"f"}, {:age=>37, :height=>1.5, :gender=>"m"},
{:age=>54, :height=>1.7, :gender=>"f"}, {:age=>17, :height=>1.9, :gender=>"m"}
]

</pre>

## Resources

* quickdata_generator https://rubygems.org/gems/quickdata_generator

quickdata_generator data generator testdata random
