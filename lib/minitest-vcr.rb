require "minitest-vcr/version"
require "minitest-vcr/spec"

if defined?(ActiveSupport::TestCase)
  require "minitest-vcr/active_support/test_case"
end

module MinitestVcr
  def self.included(base)
    base.send(:include, MinitestVcr::Spec)
    super
  end
end
