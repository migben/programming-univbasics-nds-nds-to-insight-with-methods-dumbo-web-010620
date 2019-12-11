require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

# this lesson emphasizes using our solution from the prior lesson but makes us divide the code between two methods.
# We are doing this for readability, DRY/ 3AM approach.
# It's a way to encourage us to code for the long run and for our future selves or anyone willing to delve on our past adventures / code.

def directors_totals(nds)
  result = {}
  idx = 0 # idx == index
  
  while idx < nds.count
  
    director_idx = nds[idx]
    
    result[director_idx[:name]] = gross_for_director(director_idx) # instead of calling the method and providing a parameter... I used [] notation like we do while accessing nds
    
    idx += 1
    
  end
  
  result
  
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data) 
  
  movie_idx,total_gross = 0 , 0 # confirmed that ruby is capable of assign multiple vars in one statement / one-liner
  
  while movie_idx < director_data[:movies].size
  
    total_gross += director_data[:movies][movie_idx][:worldwide_gross] # assign total gross via nds > idx > movies > movie_idx > worldwide_gross
    
    movie_idx += 1 
    
  end
  
  total_gross
  
end
