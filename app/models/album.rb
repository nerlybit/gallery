class Album < ApplicationRecord
  has_many(:images)

  def add_image(image_url)
    images.push(Image.create(image_url:image_url))

  end

end



