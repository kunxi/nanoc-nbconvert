require 'nanoc'

module Nanoc
  module Filters
    autoload 'NBConvert', 'nanoc/filters/nbconvert'

    Nanoc::Filter.register '::Nanoc::Filters::NBConvert', :nbconvert
  end
end
