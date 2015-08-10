class Triangle
  define_method(:initialize) do |length, width, height|
    @length = length
    @width = width
    @height = height
  end

  define_method(:triangle?) do
    @length+@width > @height
  end

  define_method(:equilateral?) do
    if @length == @width && @width == @height && @height == @length
      true
    else false
    end
  end
end
