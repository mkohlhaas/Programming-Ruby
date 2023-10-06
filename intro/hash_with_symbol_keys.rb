# frozen_string_literal: true

instrument_section = {
  :cello => 'string',
  :clarinet => 'woodwind',
  :drum => 'percussion',
  :oboe => 'woodwind',
  :trumpet => 'brass',
  :violin => 'string'
}
p instrument_section[:oboe]
p instrument_section[:cello]
# Note that strings aren"t the same as symbols...
p instrument_section['cello']
