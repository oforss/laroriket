Laroriket.controller do
  before :index, :about, :links, :courses do
    l = get_locale
    if(l == "fi") then 
      I18n.locale = :fi
    else
      I18n.locale = :sv
    end
  end

  get(:index)   { render "pages/index" }
  get(:about)   { render "pages/about" }
  get(:links)   { render "pages/links" }
  get(:courses) { render "pages/courses" }
  get(:suomeksi) do
    back[-2..-1] == "fi" ? f = false : f = true
    
    newBack = back.split("?")[0]
    if(f == true) then newBack += "?l=fi" end

    redirect newBack
  end
end