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

  def alldistricts
    array = []
    
    array.push "== Hong Kong Island 香港島 =="
    hk_regions.each {|x, y| array.push "#{x} #{y}"}
    array.push ""

    array.push "== Kowloon 九龍  =="
    kowloon_regions.each {|x, y| array.push "#{x} #{y}"}
    array.push ""

    array.push "== New Territories 新界 ==",
    nt_regions.each {|x, y| array.push "#{x} #{y}"}
    array.push ""

    array.push "== Lantau Island 大嶼山 ==",
    lantau_regions.each {|x, y| array.push "#{x} #{y}"}
    array.push ""

    array.push "== Outlying Islands 離島區 ==",
    out_regions.each {|x, y| array.push "#{x} #{y}"}
    array.push ""

    array
  end
  
end
