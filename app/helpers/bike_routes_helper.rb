module BikeRoutesHelper
   def hk_regions
    District.where(eng_region: "Hong Kong Island").pluck(:eng_name, :chi_name)
  end

  def kowloon_regions
    District.where(eng_region: "Kowloon").pluck(:eng_name, :chi_name)
  end

  def nt_regions
    District.where(eng_region: "New Territories").pluck(:eng_name, :chi_name)
  end

  def lantau_regions
    District.where(eng_region: "Lantau Island").pluck(:eng_name, :chi_name)
  end

  def out_regions
    District.where(eng_region: "Outlying Islands").pluck(:eng_name, :chi_name)
  end
  
end
