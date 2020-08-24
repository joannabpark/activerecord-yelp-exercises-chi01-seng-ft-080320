class Tag < ActiveRecord::Base
has_many :dish_tags
has_many :dishes, through: :dish_tags

validates_length_of :name, minimum: 3, too_short: 'please enter at least 3 characters'
# validates_word_count :name,
#         :minimum => 1, :too_few_words => "your tag is too short (must be at least 1 word)",
#         :maximum => 2, :too_many_words => "your tag is too long (must be less than 2 words)"

# def validates_word_count
#     name.scan(/\w+/)
# end


end