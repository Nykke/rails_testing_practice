class Zombifier
  def initialize(str)
    @str = str
  end

  def zombify
    raise RuntimeError if @str =~ /BRAINS/
    "#{@str} BRAINS"
  end
end
