# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Garment.destroy_all
Closet.destroy_all
Profile.destroy_all
janice = Profile.create!(name: "Janice Min", gender: "female", top_size: "small", bottom_size: "medium", location: "Washington, DC")
elliott = Profile.create!(name: "Elliott", gender: "male", top_size: "medium", bottom_size: "medium", location: "Baltimore, MD")



janice_closet = janice.build_closet(name: "Janice's Closet")
janice_closet.save
elliott_closet = elliott.build_closet(name: "Elliott's Closet")
elliott_closet.save

janice_closet.garments.create!([
	{garment_url: "http://www.nastygal.com/clothes-tops/joa-rachelle-knit-top", background_url: "http://i.ngimg.com/resources/nastygal/images/products/processed/55825.1.zoom.jpg", name: "shirt", garment_type: "casual", size: "small", gender: "female"},
	{garment_url: "http://www.nastygal.com/clothes-tops/line--dot-infinite-embroidered-blouse", background_url: "http://i.ngimg.com/resources/nastygal/images/products/processed/51396.1.zoom.jpg", name: "shirt", garment_type: "casual", size: "small", gender: "female"},
	{garment_url: "http://www.nastygal.com/clothes-bottoms-skirts/side-with-me-asymmetric-skirt", background_url: "http://i.ngimg.com/resources/nastygal/images/products/processed/58096.0.zoom.jpg", name: "skirt", garment_type: "evening", size: "medium", gender: "female"}
	])

elliott_closet.garments.create!([
	{garment_url: "http://www.karmaloop.com/product/Tour-Digi-Camo-Hoody/542605", background_url: "http://cdn.karmaloopassets.com/vendor458x698/542605-1.jpg", name: "hoodie", garment_type: "casual", size: "medium", gender: "male"},
	{garment_url: "http://www.karmaloop.com/product/The-Frenchie-Scribbles-Top-in-Black-Multi/540408", background_url: "http://cdn.karmaloopassets.com/vendor458x698/540408-1.jpg", name: "shirt", garment_type: "casual", size: "medium", gender: "male"},
	{garment_url: "http://www.karmaloop.com/product/The-Scuba-Double-Mesh-Moto-Jogger-Pants-in-Black/535859", background_url: "http://cdn.karmaloopassets.com/vendor458x698/535859-1.jpg", name: "pants", garment_type: "casual", size: "medium", gender: "male"}
	])





# user = User.create(name: "Janice Min", gender: "female", top_size: "small", bottom_size: "medium", location: "Washington, DC")
# closet = user.closets.create(name: "Janice's Closet")
# closet.garments.create!([
# 	{garment_url: "http://www.nastygal.com/clothes-tops/joa-rachelle-knit-top", background_url: "http://i.ngimg.com/resources/nastygal/images/products/processed/55825.1.zoom.jpg", name: "shirt", garment_type: "casual", size: "small", gender: "female"},
# 	{garment_url: "http://www.nastygal.com/clothes-tops/line--dot-infinite-embroidered-blouse", background_url: "http://i.ngimg.com/resources/nastygal/images/products/processed/51396.1.zoom.jpg", name: "shirt", garment_type: "casual", size: "small", gender: "female"},
# 	{garment_url: "http://www.nastygal.com/clothes-bottoms-skirts/side-with-me-asymmetric-skirt", background_url: "http://i.ngimg.com/resources/nastygal/images/products/processed/58096.0.zoom.jpg", name: "skirt", garment_type: "evening", size: "medium", gender: "female"}
# 	])

# user1 = User.create(name: "Elliott", gender: "male", top_size: "medium", bottom_size: "medium", location: "Baltimore, MD")
# closet2 = user1.closets.create(name: "Elliott's Closet")
# closet2.garments.create!([
# 	{garment_url: "http://www.karmaloop.com/product/Tour-Digi-Camo-Hoody/542605", background_url: "http://cdn.karmaloopassets.com/vendor458x698/542605-1.jpg", name: "hoodie", garment_type: "casual", size: "medium", gender: "male"},
# 	{garment_url: "http://www.karmaloop.com/product/The-Frenchie-Scribbles-Top-in-Black-Multi/540408", background_url: "http://cdn.karmaloopassets.com/vendor458x698/540408-1.jpg", name: "shirt", garment_type: "casual", size: "medium", gender: "male"},
# 	{garment_url: "http://www.karmaloop.com/product/The-Scuba-Double-Mesh-Moto-Jogger-Pants-in-Black/535859", background_url: "http://cdn.karmaloopassets.com/vendor458x698/535859-1.jpg", name: "pants", garment_type: "casual", size: "medium", gender: "male"}
# ])