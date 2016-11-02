# Q0: Why is this error being thrown?
We don't have a Pokemon model right now, so it can't find the variable.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random Pokemon are appearing because we ran rake db:seed, which automatically creates random default Pokemon according to the seed file every time we run the local web page.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a medium-sized button that says "Throw a Pokeball!", that when clicked, peforms a patch request to the home url ending in /capture, which 
then calls the capture method in the Pokemon controller as defined in routes.
The capture method assigns the current trainer to the pokemon with the id passed
in through params and saves it. Capture then redirects to the homepage.
# Question 3: What would you name your own Pokemon?
Mariwhy
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed the trainer path into redirect_to, which needed an :id parameter for the show method in the trainers controller. That way I could render the path of the trainer of the pokemon being damaged.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It gets the error messages from the pokemon instance and assigns it to the :error symbol of flash, and then it can be displayed in the html view.
# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
