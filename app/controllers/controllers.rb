Laroriket.controller do
  get(:index)   { render "pages/index" }
  get(:about)   { render "pages/about" }
  get(:links)   { render "pages/links" }
  get(:courses) { render "pages/courses" }
  get(:suomeksi) do 
    swap_language
    redirect back
  end
end