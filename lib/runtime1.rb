require 'sorbet-runtime'

# From: https://sorbet.org/docs/runtime

class Example
  extend T::Sig

  sig {params(x: Integer).returns(String)}
  def self.main(x)
    "Passed: #{x.to_s}"
  end
end

Example.main([]) # passing an Array!
