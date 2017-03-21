hello(X):-
	X = 'Hello Welcome to the bot world!'.
name(X):-
	X = 'I am a simple bot. Created as an AI Project.'.
undefined(X):-
	X = 'I have no Idea What you are talking?'.

question('1', X):-
	X = 'The Roundest Object ever Created is made of?'.
question('2', X):-
	X = 'Dmitri Mendeleev Was A Russian Scientist Best Known For?'.
question('3', X):-
	X = 'A Vexillologist Is A Person Who Studies?'.
question('4', X):-
	X = 'Kessler Syndrome Is An Astronomy Theory That Predicts?'.

option('1',X):-
	X = '1. Silicon   2. Iridium   3. Quartz   4. Gold'.
option('2',X):-
	X = '1. Identifying DNA   2. Inventing Dynamite   3. Proving Genetic Inheritance   4. Formulating Periodic Law'.
option('3',X):-
	X = '1. Witchcraft   2. Flags   3. Bullying   4. Mathematical Paradoxes'.
option('4',X):-
	X = '1. The Moon Will Collide With Earth   2. The Sun\'s Core Will Destabilize   3. Earth Orbits Will Become Unusable   4. Humans Will Never Leave Earth'.

trivia_answer('1','1',X):-
	X = 'Yes, Silicon is the correct answer.'.
trivia_answer('1',Y, X):-
	Y \= '1',
	X = 'Wrong! Correct Answer is Silicon'.
trivia_answer('2','4',X):-
	X = 'Yes, Formulating Periodic Law is the correct answer.'.
trivia_answer('2',Y, X):-
	Y \= '4',
	X = 'Wrong! Correct Answer is Formulating Periodic Law'.
trivia_answer('3','2',X):-
	X = 'Yes, Flags is the correct answer.'.
trivia_answer('3',Y, X):-
	Y \= '2',
	X = 'Wrong! Correct Answer is Flags'.
trivia_answer('4','3',X):-
	X = 'Yes, Earth Orbits Will Become Unusable is the correct answer.'.
trivia_answer('4',Y, X):-
	Y \= '3',
	X = 'Wrong! Correct Answer is Earth Orbits Will Become Unusable'.