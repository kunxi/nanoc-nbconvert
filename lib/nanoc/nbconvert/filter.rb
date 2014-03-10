# encoding: utf-8
require "nanoc"
require "open3"

module Nanoc::NBConvert

  class Filter < Nanoc::Filter

    identifier :nbconvert

    def run(content, params={})
      nbconvert = <<'END'
import sys

from IPython.nbconvert import HTMLExporter
exportor = HTMLExporter(template_file="basic")
body, _ = exportor.from_file(sys.stdin)
sys.stdout.write(body)
END
      python_bin = params[:python_bin] || 'python'
      o, e, s = Open3.capture3("#{python_bin} -c '#{nbconvert}'",
                               :stdin_data=>content.to_s)
      if !s.success?
        raise "nbconvert fails: #{e}"
      end
      o
    end

  end

end
