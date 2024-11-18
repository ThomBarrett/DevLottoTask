module BasicLottosHelper
  def colour_by_value(value)
    case
    when value > 0 && value < 10
      return "v1-9"
    when value > 9 && value < 20
      return "v10-19"
    when value > 19 && value < 30
      return "v20-29"
    when value > 29 && value < 40
      return "v30-39"
    when value > 39 && value < 50
      return "v40-49"
    end
  end
end
