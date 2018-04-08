class RealItem < Item

  attr_reader :weight

  def initialize(options)
    @weight = options[:weight]
    super
  end

  def info
    yield(weight)
  end

end