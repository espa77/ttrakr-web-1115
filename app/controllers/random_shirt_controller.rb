class RandomShirtController < ApplicationController
  def random
    sites = ["http://shirt.woot.com", "http://riptapparel.com", "http://teefury.com"]
    redirect_to sites.sample
  end
end
