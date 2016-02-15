module TemperatureConverter
  def self.convert(temp, from_scale, to_scale)
    return temp if from_scale == to_scale

    unless [from_scale, to_scale].include?(:celsius)
      temp = eval("#{from_scale.to_s}_to_celsius(temp)")
      from_scale = :celsius
    end

    case [from_scale, to_scale]
    when [:celsius, :farenheit]
      celsius_to_farenheit(temp)
    when [:farenheit, :celsius]
      farenheit_to_celsius(temp)
    when [:celsius, :kelvin]
      celsius_to_kelvin(temp)
    when [:kelvin, :celsius]
      kelvin_to_celsius(temp)
    when [:celsius, :newton]
      celsius_to_newton(temp)
    end.round(2)
  end

  def self.celsius_to_farenheit(c_temp)
    c_temp * (9.0/5.0) + 32
  end

  def self.farenheit_to_celsius(f_temp)
    (f_temp - 32) * (5.0/9.0)
  end

  def self.celsius_to_kelvin(c_temp)
    c_temp + 273.15
  end

  def self.kelvin_to_celsius(k_temp)
    k_temp - 273.15
  end

  def self.celsius_to_newton(c_temp)
    c_temp * (33.0/100.0)
  end
end
