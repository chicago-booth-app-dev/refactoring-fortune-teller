Rails.application.routes.draw do
  get("/", { :controller => "lottery", :action => "lucky" })
  get("/lottery/lucky", { :controller => "lottery", :action => "lucky" })
  get("/lottery/unlucky", { :controller => "lottery", :action => "unlucky" })
  get("/zodiacs/:the_sign", { :controller => "fortunes", :action => "horoscopes" })
  get("/roll/:number_of_dice/:how_many_sides", { :controller => "dice", :action => "infinity_and_beyond" })
end
