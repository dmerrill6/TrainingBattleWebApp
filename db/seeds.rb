# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

push_ups = Exercise.create({name: "Push Ups - Intermediate", step_plural_name: "Push ups"})
push_ups.exercise_steps.create({amount: 25})
push_ups.exercise_steps.create({amount: 50})
push_ups.exercise_steps.create({amount: 100})
push_ups.exercise_steps.create({amount: 200})
