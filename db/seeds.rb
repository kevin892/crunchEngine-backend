# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# kev1 = User.create(email: "kevinbruggiero@gmail.com", password: "12345")

something = Gif.create(user_id: 2, url: 'www.google.com')

# snails = SearchTerm.create(user: kev1, search: "Snails")
#
# whale = SearchTerm.create(user: kev1, search: "Whale")
# VisitedPage.create(url: "www.google.com", search_term: snails)
# VisitedPage.create(url: "www.youtube.com", search_term: whale)
