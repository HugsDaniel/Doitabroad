# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database'
Wish.destroy_all
Reservation.destroy_all
University.destroy_all
User.destroy_all

puts 'Seeding...'
University.create!(
{
  city: 'New-York',
  name: 'Stern School of Business',
  pays: 'USA',
  course: 'commerce',
  remote_photo_url: 'https://www.mbamission.com/blog/wp-content/uploads/2015/06/NYU-Stern-2.jpg'
}
)

icam = University.create!(
{
  city: 'Nantes',
  name: 'Icam',
  pays: 'france',
  course: 'ingénieur',
  remote_photo_url: 'https://i.ytimg.com/vi/YeCXEhhEKUw/maxresdefault.jpg?m=og:image'
}
)

University.create!(
{
  city: 'Nantes',
  name: 'Polytech',
  pays: 'france',
  course: 'ingénieur',
  remote_photo_url: 'http://www.rabier-fluides-concept.fr/wp-content/uploads/2015/08/150628-11-1000x546.jpg'
}
)


University.create!(
{
  city: 'Buenos Aires',
  name: 'University of Bologna in Argentina',
  pays: 'argentine',
  course: 'commerce',
  remote_photo_url: 'http://corsi.unibo.it/2cycle/AerospaceEngineering/PublishingImages/Universidad-de-C%C3%B3rdoba.jpg'
}
)

montreal = University.create!(
{
  city: 'Montréal',
  name: 'Université de Montréal',
  pays: 'canada',
  course: 'commerce',
  remote_photo_url: 'http://www.probono-udem.ca/wordpress/wp-content/uploads/2015/05/00000048_lrg.jpg'
}
)

tokyo = University.create!(
{
  city: 'Tokyo',
  name: 'University of Tokyo',
  pays: 'japon',
  course: 'commerce',
  remote_photo_url: 'http://i.f1g.fr/media/eidos/orig/2015/09/18/PHOe4739de0-5de4-11e5-9487-e8fec3c982cf-805x453.jpg'
}
)

jeanmich = User.create!(
{
  first_name: 'Michel',
  last_name: 'Desjoyeaux',
  email: 'jean.michel@gmail.com',
  password: 'jeanmichel',
  remote_profile_pic_url: 'http://philippe.hillion1.free.fr/Images/voile2/Michel_Desjoyeaux.jpg'
}
)

didier = User.create!(
{
  first_name: 'Gislain',
  last_name: 'Bardou',
  email: 'didier.patoche@gmail.com',
  password: 'didier',
  remote_profile_pic_url: 'https://www.mymajorcompany.com/mmcMediaPlugin/media/image/3c/3c286dff32215.jpg'
}
)

hugo = User.create!(
{
  first_name: 'Hugo',
  last_name: 'Daniel',
  email: 'hugsdaniel@gmail.com',
  password: 'hugodaniel',
  remote_profile_pic_url: 'http://static.tvtropes.org/pmwiki/pub/images/calvin2_834.jpg'
}
)

Reservation.create!(
{
  user: jeanmich,
  university: tokyo
}
)

Reservation.create!(
{
  user: didier,
  university: montreal
}
)

Reservation.create!(
{
  user: hugo,
  university: icam
}
)

puts 'Done'
