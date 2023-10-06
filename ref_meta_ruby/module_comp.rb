module Mixin
end

module Parent
  include Mixin
end

module Unrelated
end

Parent > Mixin
Parent < Mixin
Parent <= Parent
Parent < Unrelated
Parent > Unrelated

Parent <=> Mixin
Parent <=> Parent
Parent <=> Unrelated
