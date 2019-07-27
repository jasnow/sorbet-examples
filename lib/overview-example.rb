# typed: true

require 'sorbet-runtime'

# From: https://sorbet.org/docs/overview

class A
  extend T::Sig

  sig {params(x: Integer).returns(String)}
  def bar(x)
    x.to_s
  end
end

def main
  A.new.barr(91)   # error: Typo!
  A.new.bar("91")  # error: Type mismatch!
end
