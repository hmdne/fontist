module Fontist
  module Errors
    class LicensingError < StandardError; end
    class MissingFontError < StandardError; end
    class NonSupportedFontError < StandardError; end
    class TamperedFileError < StandardError; end
    class InvalidResourceError < StandardError; end
    class TimeoutError < StandardError; end
    class MissingAttributeError < StandardError; end
    class FontNotFoundError < StandardError; end
    class BinaryCallError < StandardError; end
    class ManifestCouldNotBeReadError < StandardError; end
    class ManifestCouldNotBeFoundError < StandardError; end
  end
end
