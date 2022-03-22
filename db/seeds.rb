# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Task.create! task_name:'no whatsapp till 9pm',level:'medium',points:'20'
# Task.create! task_name:'no facebook till 9pm',level:'medium',points:'20'
# Task.create! task_name:'Read a chapter of a book',level:'easy',points:'15'
# Task.create! task_name:'walk for 30 min',level:'easy',points:'15'
# Task.create! task_name:'take a nap for 1hr',level:'easy',points:'10'
# Task.create! task_name:'learn something new today',level:'easy',points:'10'
# Task.create! task_name:'No music today',level:'medium',points:'20'
# Task.create! task_name:'Meditate for 10 min',level:'medium',points:'20'
# Task.create! task_name:'look into mirror make a smile and say you are awesome',level:'easy',points:'30'
# Task.create! task_name:'no outside food today',level:'medium',points:'30'
# Task.create! task_name:'say thanks to those people who makes you smile',level:'easy',points:'30'
# Task.create! task_name:'eat any fruit today',level:'easy',points:'20'
# Task.create! task_name:'make someone laugh',level:'hard',points:'50'
# Task.create! task_name:'make someone laugh',level:'hard',points:'50'ue

# User.all.each do |u|
# 	u.delete
# end

Book.create! name:'the alchemist',download_link:'https://drive.google.com/file/d/1GaacRWCvvA_NOJpTfJXSMv95Wmh1zZpv/view?usp=sharing',image_link:'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1466865542l/18144590._SY475_.jpg'

Book.create! name:'Sapiens A Brief History of Humankind by Yuval Noah Harari',download_link:'https://drive.google.com/file/d/1r0DXVtYcwKyas2CFuXVHNtBkqFwi7j2E/view?usp=sharing',image_link:'https://images-na.ssl-images-amazon.com/images/I/41+lolL22gL.jpg',points:'40'

Book.create! name:'web hacking 101',download_link:'https://drive.google.com/file/d/1SB8GY1E7QP7RvoPGkwTyrovZeiBQvScN/view?usp=sharing',image_link:'https://imgproxy.pdfroom.com/f_-4duxH_1Wx7pbCuwmYyI20k3VKFRMBFQ6VwNwzf-c/rs:auto:200:276:1/g:no/RTFkNERPNnlkT2IucG5n.jpg',points:'50'

Book.create! name:'Rework',download_link:'https://drive.google.com/file/d/1pXs2UaC00V1bLX4Wiy0_fhG-5qTiPO71/view?usp=sharing',image_link:'https://images-na.ssl-images-amazon.com/images/I/61GFc+k-5PL.jpg',points:'30'

Book.create! name:'The Little Book of Big Change',download_link:'https://drive.google.com/file/d/1FuX0rdy0D3ViALGfUBEhwkl4Py2xNAxF/view?usp=sharing',image_link:'https://m.media-amazon.com/images/I/41BYnBgqPlL.jpg',points:'10'
