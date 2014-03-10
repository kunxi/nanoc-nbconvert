# encoding: utf-8

require 'helper'

class Nanoc::Filters::NBConvertTest < Minitest::Test

  def test_filter
    # Create filter
    filter = ::Nanoc::Filters::NBConvert.new

    # Run filter
    fh = File.open(File.expand_path("../../data/example.html", __FILE__))
    expected = fh.read

    File.open(File.expand_path("../../data/example.ipynb", __FILE__)) {|f|
      content = f.read
      assert_match(expected.strip, filter.run(content).strip)
    }
  end

end
