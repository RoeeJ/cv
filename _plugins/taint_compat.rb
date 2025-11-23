# Ruby 3.2 removed Object#tainted? and related APIs. Liquid 4 (used by
# Jekyll 3.x) still calls these methods, so we provide a no-op compatibility
# shim to keep the site buildable on modern Ruby.
unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end
  end
end
