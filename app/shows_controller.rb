require_relative 'models/show.rb'

def Show::highest_rating
  Show.maximum('rating')
end

def Show::most_popular_show
  max = Show.highest_rating
  Show.find_by rating: max
end

def Show::lowest_rating
  Show.minimum('rating')
end

def Show::least_popular_show
  min = Show.lowest_rating
  Show.find_by rating: min
end

def Show::ratings_sum
  Show.sum('rating')
end

def Show::popular_shows
  Show.where('rating > 5')
end

def Show::shows_by_alphabetical_order
  Show.order(name: :asc)
end
