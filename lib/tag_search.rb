class TagSearch
  def self.find_tags(input)
    @names = input.split(' ')
    @names.collect { |name| Tag.find_by name: name }
  end

  def self.get_images(tags)
    @images = Image.all

    tags.each do |tag|
      @images = @images.find_all { |image| image.tags.include? tag}
    end
    @images
  end
end