# Q0: Why is this error being thrown?
Home controller cannot find Pokemon. This is because we have not made a Pokemon model or controller yet.  

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
All the pokemon that appear are one of the pokemons that were seeded. All of these are the ones that were created when we ran rails db:seed.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It makes a button called Throw a Pokeball! which is of the button type medium. 
It calls the method capture in pokemons_controller.rb using the capture path from routes.rb. It passes in the id of the pokemon. 

# Question 3: What would you name your own Pokemon?
KELLYYENISMYHERO

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed the path of the show file /trainers/' + current_trainer.id.to_s because the show file is in the trainers folder

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It takes the error message and converts it to a string and displays it to the user. 

# Give us feedback on the project and decal below!
KELLYYENISMYHERO
NHI IS GREAT
<3


# Extra credit: Link your Heroku deployed app
nani