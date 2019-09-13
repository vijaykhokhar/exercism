class SpaceAge
  EARTH_YR = 31557600.0
  RATIO_PLANET = {
    earth: 1.0,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  def initialize(sec)
    @sec = sec
  end

  RATIO_PLANET.keys.each do |planet|
    define_method("on_#{planet}") do
      (@sec/(RATIO_PLANET[planet] * EARTH_YR)).round(2)
    end
  end
end