
class AdminWYSIWYGSanitizer < WYSIWYGSanitizer
  def allowed_tags
    super + %w[img table caption thead tbody tr th td iframe video source]
  end

  def allowed_attributes
    super + %w[alt src align border cellpadding cellspacing dir style class summary scope id width height frameborder allow autoplay controls]
  end
end
