class String
  def is_number?
    if self =~ /^\d+$/
      true
    # else
    #   false
    end
  end

  def humanize
    if self =~ /zombie/
      raise RuntimeError
    else
    self.downcase.capitalize
    end
  end
end
