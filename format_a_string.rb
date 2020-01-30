# # Given: an array containing hashes of names
# Return: a string formatted as a list of names separated by commas except 
# for the last two names, which should be separated by an ampersand.
# Example:
# list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# # returns 'Bart, Lisa & Maggie'
# list([ {name: 'Bart'}, {name: 'Lisa'} ])
# # returns 'Bart & Lisa'
# list([ {name: 'Bart'} ])
# # returns 'Bart'
# list([])
# # returns ''


def list names
    if names.length == 0
      return ''
    elsif names.length > 1
      names.map! { |n| n.values }
      lname = names.pop
      return names.join(', ') + ' & ' + lname[0]
    end
    return names[0][:name]
  end