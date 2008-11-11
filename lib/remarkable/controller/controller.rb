Dir[File.join("lib", "remarkable", "controller", "macros", '*')].each do |file|
  require file
end

module Spec
  module Rails
    module Matchers
      include Remarkable::Controller::Helpers
      include Remarkable::Private
    end
  end
end

Spec::Rails::Matchers.send(:include, Remarkable::Syntax::RSpec)
Spec::Example::ExampleGroupMethods.send(:include, Remarkable::Syntax::Shoulda)
