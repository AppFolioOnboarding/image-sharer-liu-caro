# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
image_link_list = [
  'https://static.onecms.io/wp-content/uploads/sites/20/2020/07/23/red-panda.jpg',
  'https://www.rochesterfirst.com/wp-content/uploads/sites/66/2020/08/GettyImages-518723164.jpg?w=2560&h=
  1440&crop=1',
  'https://media.glamour.com/photos/56964cd993ef4b095210515b/16:9/w_1280,c_limit/fashion-2015-10-cute-
  baby-turtles-main.jpg',
  'https://compote.slate.com/images/73f0857e-2a1a-4fea-b97a-bd4c241c01f5.jpg',
  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/lionel-animals-to-follow-on-instagram-
1568319926.jpg?crop=0.922xw:0.738xh;0.0555xw,0.142xh&resize=640:*',
  'https://nypost.com/wp-content/uploads/sites/2/2020/09/quokkas-1.jpg?quality=90&strip=all&w=618&h=410&crop=1',
  'https://www.wonderslist.com/wp-content/uploads/2016/11/Arctic-Foxes-Cute-Animal.jpg',
  'https://tr-images.condecdn.net/image/YkG1EDj6j3M/crop/2040/f/margay-gettyimages-1136682032.jpg',
  'https://www.rd.com/wp-content/uploads/2020/08/GettyImages-85120553.jpg',
  'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/hostedimages/1585090556i/29163252._SY540_.jpg',
  'https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/318/318061/image-of-a-puppy.jpg?w=1155&h=1541',
  'https://justsomething.co/wp-content/uploads/2018/10/22-baby-animals-that-are-too-cute-to-be-true-09.jpg',
  'https://i.insider.com/53a1adb76bb3f72c7fccff9f?width=600&format=jpeg&auto=webp',
  'https://wallpaperaccess.com/full/564234.jpg',
  'https://www.99inspiration.com/wp-content/uploads/2018/01/Cute-Animal-Portraits-by-Ossi-Saarinen.jpg',
  'https://i.pinimg.com/originals/00/42/a9/0042a9ff957fb85f0da7ab41e39a6aff.jpg',
  'https://i.pinimg.com/originals/9e/a3/44/9ea344e335bffd367df8b903a3d85187.jpg',
  'https://images.saymedia-content.com/.image/t_share/MTc0NjQ1NTgyMTg5NjM1MzQz/top-ten-cutest-japanese-wild-animals.jpg',
  'https://media.istockphoto.com/photos/the-little-owl-with-his-chick-standing-on-a-stone-picture-id1017810548?k=6&m=1017810548&s=612x612&w=0&h=khDAM_wNgIoYqTmZUqYdrS5ev6auP43otCrLNLi3tSw=',
  'https://hips.hearstapps.com/ghk.h-cdn.co/assets/17/23/ghk-cute-animals-vermont-cr-courson.jpg'

]
image_link_list.each do |url|
  ImageLink.create!(url: url)
end
