module Slugifiable


    def slug 
        self.name.downcase.gsub(" ", "-")
    end

    def self.find_by_slug(slug) 
        name = slug.gsub("-", " ")
        self.all.find{|artist| artist.slug == slug}
    end
end