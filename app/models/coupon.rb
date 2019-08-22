class Coupon < ApplicationRecord
  def use!
    with_lock do
      if remaining > 0
        self.remaining -= 1
        sleep 3
        save!
      end
    end
  end
end
