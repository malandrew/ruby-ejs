require 'tilt'

module EJS
  class TiltEJS < Tilt::Template
    def self.default_mime_type
      'application/javascript'
    end

    def evaluate(scope, locals, &block)
      @output ||= EJS.compile(data, options)
    end

    protected

    def prepare; end
  end
end
