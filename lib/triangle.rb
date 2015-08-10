class Triangle
  define_method(:initialize) do |length, width, height|
  @length = length
  @width = width
  @height = height
end

define_method(:triangle?) do
  @length+@width > @height  
  end
end
