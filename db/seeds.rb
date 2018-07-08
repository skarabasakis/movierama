# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


User.create [
  {username: 'Fabian Giordano',  password: '123456', created_at: 90.days.ago},
  {username: 'Dena Delcambre',   password: '123456', created_at: 43.days.ago},
  {username: 'Buddy Bost',       password: '123456', created_at: 39.days.ago},
  {username: 'Jeremy Malik',     password: '123456', created_at: 29.days.ago},
  {username: 'Lashunda Zorn',    password: '123456', created_at: 24.days.ago},
  {username: 'Margarita Dufour', password: '123456', created_at: 20.days.ago},
]

Movie.create [
  {user_id: 3, created_at: 54.hours.ago, title: 'Event Horizon',
   description: 'A rescue crew investigates a spaceship that disappeared into a black hole and has now returned...with someone or something new on-board.'},
  {user_id: 1, created_at: 32.hours.ago, title: 'Sunshine',
   description: 'A team of international astronauts are sent on a dangerous mission to reignite the dying Sun with a nuclear fission bomb in 2057.'},
  {user_id: 2, created_at: 21.hours.ago, title: 'Alien',
   description: 'After a space merchant vessel perceives an unknown transmission as a distress call, its landing on the source moon finds one of the crew attacked by a mysterious lifeform, and they soon realize that its life cycle has merely begun.'},
  {user_id: 1, created_at: 15.hours.ago, title: 'Prometheus',
   description: 'Following clues to the origin of mankind, a team finds a structure on a distant moon, but they soon realize they are not alone.'},
  {user_id: 2, created_at:  6.hours.ago, title: 'The Empire Strikes Back',
   description: 'After the rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader.'},
  {user_id: 3, created_at:  2.hours.ago, title: '2001: A Space Odyssey',
   description: 'Humanity finds a mysterious, obviously artificial object buried beneath the Lunar surface and, with the intelligent computer HAL 9000, sets off on a quest.'},
]

Rating.create [
  {user_id: 1, movie_id: 1, score:  1},
  {user_id: 1, movie_id: 5, score: -1},
  {user_id: 1, movie_id: 3, score:  1},
  {user_id: 2, movie_id: 1, score:  1},
  {user_id: 2, movie_id: 4, score: -1},
  {user_id: 3, movie_id: 5, score:  1},
  {user_id: 4, movie_id: 1, score:  1},
  {user_id: 4, movie_id: 4, score:  1},
  {user_id: 4, movie_id: 5, score: -1},
  {user_id: 5, movie_id: 4, score: -1},
  {user_id: 5, movie_id: 5, score: -1},
  {user_id: 6, movie_id: 1, score:  1},
  {user_id: 6, movie_id: 3, score: -1},
  {user_id: 6, movie_id: 5, score: -1},
]