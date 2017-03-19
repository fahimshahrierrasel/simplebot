hello(X):-
	X = 'Hello Welcome to the bot world!'.
name(X):-
	X = 'I am a simple bot. Created as an AI Project.'.
undefined(X):-
	X = 'I have no Idea What you are talking?'.


jokeTag(1,Y):-
   Y = 'What did one wall say to the other wall? I’ll meet you at the corner!'.
jokeTag(2,Y):-
   Y = 'What do you call a bear with no teeth? A gummy bear!'.
jokeTag(3,Y):-
   Y = 'Why are elephants so wrinkled? Because they take too long to iron!'.
jokeTag(4,Y):-
   Y = ' What has four wheels and flies? A garbage truck!'.
jokeTag(5,Y):-
   Y = 'What did 0 say to 8?  Nice belt!'.
jokeTag(6,Y):-
   Y = 'Why Don\'t Ghosts Like To Go To Prom? Because they have no body to dance with.'.
jokeTag(7,Y):-
   Y = 'Behind every great man is a woman with a hostage.'.
jokeTag(8,Y):-
   Y = 'How do you keep a man from drowning? Get his wife/gf off his back.'.
jokeTag(9,Y):-
   Y = 'Photographer: My secret of success is? ‘Think negative’!'.
jokeTag(10,Y):-
   Y = 'My teacher pointed at me with her ruler and said that at the end of this ruler is a dumb. 
        I got a detention after asking which end!'.
jokeTag(11,Y):-
   Y = 'I am a nobody, nobody is perfect, therefore I am perfect.'.
jokeTag(12,Y):-
   Y = ' Make no mistakes. The junior is your biggest prospect!'.
jokeTag(13,Y):-
   Y= ' Parallel lines have too much in common, it’s a shame they’ll never meet.'.
jokeTag(14,Y):-
   Y= ' Tell me everything you know...I have a few seconds to waste.'.
jokeTag(15,Y):-
   Y= ' Is Google male or female?,nl,
       A: Female, because it doesn\'t let you finish a sentence before making a suggestion. '.

jokeTag(16,Y):-
   Y= ' Can a kangaroo jump higher than a house? Of course, a house doesn’t jump at all.'.

jokeTag(17,Y):-
   Y= ' What goes up and down but never moves?
                     -
                 The stairs!'.

jokes:-
  random(1,17,X),
  jokeTag(X,Y),
  write(Y).




quotesTag(1,Y):-
  Y = 'The best preparation for tomorrow is doing your best today.,nl,
                                          -H. Jackson Brown, Jr.'.
quotesTag(2,Y):-
  Y = 'Don’t wait. The time will never be just right.,nl,
                                           - Napoleon Hill'.
quotesTag(3,Y):-
  Y = 'Don’t regret the past, just learn from it.,nl,
                                         - Ben Ipock'.
quotesTag(4,Y):-
  Y = 'Believe you can and you’re halfway there.,nl,
                                          -Theodore Roosevelt'.
quotesTag(5,Y):-
  Y = 'Life is what happens while you are busy making other plans.,nl,
                                                      -John Lennon.'.
quotesTag(6,Y):-
  Y = 'Be so good they can’t ignore you.,nl,
                            -Steve Martin.'.
quotesTag(7,Y):-
  Y = 'Life is not a problem to be solved, but a reality to be experienced.,nl,
                                   -Soren Kierkegaard.'.
quotesTag(8,Y):-
  Y = 'Life isn’t about waiting for the storm to pass… It’s about learning to dance in the rain.,nl,
                                                  -Vivian Greene.'.

quotes:-
  random(1,8,X),
  quotesTag(X,Y),
  write(Y).
