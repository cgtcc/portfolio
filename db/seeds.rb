# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

10.times do |x|
  Blog.create!(
    title: "My Blog Post #{x}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur semper venenatis feugiat. Curabitur scelerisque condimentum nibh, ac iaculis urna accumsan ut. Morbi a feugiat orci, ac faucibus augue. Mauris vitae nulla metus. Maecenas vel enim rhoncus, imperdiet enim sed, porttitor est. Quisque lacus sapien, dictum a finibus et, scelerisque sed turpis. Proin facilisis, lectus non mattis finibus, tortor sapien suscipit augue, eu elementum arcu nunc molestie massa. Curabitur at arcu vitae risus semper imperdiet tincidunt quis urna. Nunc tempus leo sed leo elementum, sed viverra dolor tincidunt. Cras nec odio tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam magna nulla, vehicula in accumsan facilisis, pretium at urna. Aenean fringilla, neque eget ornare viverra, orci orci semper lacus, sed scelerisque odio leo et velit.

Morbi id varius metus. Pellentesque iaculis tempor pulvinar. Donec rhoncus leo ac elementum porttitor. Curabitur facilisis, justo sed pulvinar aliquet, neque risus placerat libero, faucibus tempus erat nulla id erat. Maecenas pellentesque massa eu orci lobortis tincidunt. Vestibulum faucibus lacus eget tincidunt sollicitudin. Duis id fringilla dui. Phasellus lacinia neque et placerat mattis. Vivamus orci augue, ultrices in mauris et, semper scelerisque ex.

Nunc id mollis ex, et vulputate odio. In hac habitasse platea dictumst. Donec erat nunc, sagittis volutpat felis tristique, faucibus ornare metus. Integer rutrum maximus metus nec tempus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas at neque ultricies, aliquet leo et, varius metus. Nam convallis tellus nec ipsum commodo condimentum.",
topic_id: Topic.last.id

  )
end


puts "10 demo blog posts created"

5.times do |skills|
  Skill.create!(
      title: "Rails #{skills}",
      percent_utilized: 15
  )
end

puts "5 demo skills posts created"


9.times do |z|
  Work.create!(
      title: "Portfolio title: #{z}",
      subtitle: "Ruby on Rails",
      body: "Maecenas pellentesque massa eu orci lobortis tincidunt. Vestibulum faucibus lacus eget tincidunt sollicitudin. Duis id fringilla dui. Phasellus lacinia neque et placerat mattis. Vivamus orci augue, ultrices in mauris et, semper scelerisque ex.",
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/350x200"
  )
end


5.times do |z|
  Work.create!(
      title: "Portfolio title: #{z}",
      subtitle: "Wonderful service subtitle goes here",
      body: "Maecenas pellentesque massa eu orci lobortis tincidunt. Vestibulum faucibus lacus eget tincidunt sollicitudin. Duis id fringilla dui. Phasellus lacinia neque et placerat mattis. Vivamus orci augue, ultrices in mauris et, semper scelerisque ex.",
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/350x200"
  )
end


puts "9 demo work portfolio items created"

3.times do |technologies|
  Technology.create!(
    name: "Technology #{technologies}",
    portfolio_id: Portfolio.last.id
  )
end

puts "3 technologies added to portfolio items"