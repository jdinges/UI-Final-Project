# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Style.create(:name => 'Default', :stylesheet => 'application_colors.css')
Style.create(:name => 'Noir', :stylesheet => 'noir.css')
Style.create(:name => 'Winter', :stylesheet => 'black_and_white.css')
