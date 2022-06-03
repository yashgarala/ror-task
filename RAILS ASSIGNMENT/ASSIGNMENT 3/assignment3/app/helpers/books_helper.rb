module BooksHelper
    def get_authers()
        author_option=[]
        Author.select('id', 'name').all.each { |v| author_option << [ v.name,v.id] }
        return author_option
    end
end
