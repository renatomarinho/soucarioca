module ApplicationHelper

  def title(page_title)
    page_title.empty? ?  'Sou Carioca, vem pro jogo tb!' : "#{page_title}"
  end

  def description(page_description)
    page_description.empty? ?  'Quer Cariocar? Vem pro jogo! Descubra quem merece um Fiu-Fiu ou Sai fora? Chegou a hora da verdade, compartilhelhe muito com seus amigos e descobra como está a popularidade.' : "#{page_description}"
  end

  def image(page_image)
    page_image.empty? ?  '' : "#{page_image}"
  end

  def getpage(page)
    if !page
      @page = 1
    else
      @page = page
    end
  end

end
