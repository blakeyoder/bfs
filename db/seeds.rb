# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

4.times do |i|
  Event.create(name: "Sour Stout bottle release #{i}",
                event_date_time: "Sun, 17 Jan 2016",
                location: "Thomas Creek Brewery",
                description:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec diam arcu. Suspendisse vestibulum vel enim ac fringilla. Morbi diam massa, maximus vitae eros sit amet, porttitor ultrices urna. Aenean placerat arcu a sapien ullamcorper tempor. Mauris bibendum aliquam lacus, ut faucibus augue bibendum nec. Pellentesque ut molestie tellus. Nulla vel imperdiet risus. Morbi lorem massa, blandit et dictum ac, euismod a augue. Integer ac ante id nisi maximus sollicitudin a ut dolor. Vestibulum nunc orci, consectetur vitae lectus at, hendrerit malesuada urna. In vitae diam ut ante tincidunt vulputate. Nullam euismod dictum vestibulum. Nulla vel massa nec arcu laoreet vehicula. Nulla pharetra libero gravida augue efficitur dignissim. Vestibulum ut justo in lectus commodo commodo. Ut sollicitudin non purus molestie imperdiet.")
end
