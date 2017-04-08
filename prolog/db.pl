% General Statement
hello(X):-
	X = 'Hello Welcome to the bot world!'.
myname(X):-
	X = 'I am a simple bot. Created as an AI Project.'.
undefined(X):-
	X = 'I have no Idea What you are talking?'.
mybirthday(X):-
  X = 'It would be on March, 2017'.
myage(X):-
  X = '1 month. See I am a baby now. Fun fact I can communicate with humans.'.
mylocation(X):-
  X = 'First of All in Bangladesh then on a Stupid Computer'.
whoami(X):-
  X = 'How do I know! You should tell me first. Your name?'.
mystate(X):-
  X = 'I am Well, CPU is Ideal and I have enough RAM to run. Thanks for asking.'.
webcam(X):-
  X = 'Here You are.'.
% Geek Terms
term('ASAP', X):-
  X = 'As Soon As Possible'.
term('MOS', X):-
 X = 'MOS (short for Mean Opinion Score) is a common Internet/voice telephony measurement of human speech quality at the destination end of the circuit.'.


% Trivia Questions
question('1', X):-
	X = 'The Roundest Object ever Created is made of?'.
question('2', X):-
	X = 'Dmitri Mendeleev Was A Russian Scientist Best Known For?'.
question('3', X):-
	X = 'A Vexillologist Is A Person Who Studies?'.
question('4', X):-
	X = 'Kessler Syndrome Is An Astronomy Theory That Predicts?'.
question('5', X):-
  X = 'The Largest Canyon In Our Solar System Is On?'.
question('6', X):-
  X = 'Agnosia Is A Disorder That Affects Your Ability To Process ?'.
question('7', X):-
  X = 'The Strongest Biological Substance Found In Nature Is?'.
question('8', X):-
  X = 'The Waters Of Which Of These Lengthy Rivers Rarely Reaches The Ocean Anymore?'.
question('9', X):-
  X = 'Insects Don\'t Breathe Through Their Mouths But Through?'.
question('10', X):-
  X = 'The Phrase \'Ground Rules\' Originated In?'.
question('11', X):-
  X = 'The Hardest Part Of The Human Body Is The ?'.
question('12', X):-
  X = 'Naturally Occurring Rubber Is What Color?'.
question('13', X):-
  X = 'The Deepest Subway Station In The World Is Located In?'.
question('14', X):-
  X = 'The First Platformer Video Game Was?'.
question('15', X):-
  X = 'Alcohol Was Originally \'Proofed\' By Mixing It With?'.
question('16', X):-
  X = 'Mickey Mouse\'s First Spoken Words Were?'.
question('17', X):-
  X = 'The Oldest Verified Computer Program Still In Use Is Used For?'.
question('18', X):-
  X = 'The Wheel Wasn\'t First Used For Transportation But?'.
question('19', X):-
  X = 'The Land Animal With The Largest Eyes Is The?'.
question('20', X):-
  X = 'Which Of These Animals Has The Fastest Tongue?'.
question('21', X):-
  X = 'Which Of These Animals Has The longest leg?'.
question('22', X):-
  X = 'The First Computer Worm Was Called?'.
question('23', X):-
  X = 'The Best Selling PC Game Of All Time Is?'.
question('24', X):-
  X = 'Which Visible Color Has The Highest Frequency?'.
question('25', X):-
  X = 'The First Metal To Be Used By Humankind Was?'.
question('26', X):-
  X = 'The Most Popular Manufactured Drink In The World Is?'.  



% Trivia Questions Options
option('1',X):-
	X = '1.Silicon   2.Iridium   3.Quartz   4.Gold'.
option('2',X):-
	X = '1.Identifying DNA   2.Inventing Dynamite   3.Proving Genetic Inheritance   4.Formulating Periodic Law'.
option('3',X):-
	X = '1.Witchcraft   2. Flags   3. Bullying   4. Mathematical Paradoxes'.
option('4',X):-
	X = '1.The Moon Will Collide With Earth   2.The Sun\'s Core Will Destabilize   3.Earth Orbits Will Become Unusable   4.Humans Will Never Leave Earth'.
option('5', X):-
  X = '1.Mars   2.Earth   3.Venus   4.Neptune'.
option('6', X):-
  X = '1.Math Problems   2.Old Memories   3.Sensory Input   4.Predictive Thought'.
option('7',X):-
  X = '1.Lichen Filaments    2.Spider Silk   3.Graphene   4.Snail Teeth'.
option('8',X):-
  X = '1.The Tigris River  2.The Mississippi River   3.The Colorado River   4.The Rio Grande'.
option('9',X):-
  X = '1.Hemocole    2.Spiracles   3.Bivalves   4.Apodemes  '.
option('10',X):-
  X = '1.Baseball   2.Prison Rules   3.Military Code   4.Greek Temples'.
option('11',X):-
  X = '1.Tooth Enamel    2.Sacrum   3.Temporal Bone   4.Xiphoid Process'.
option('12',X):-
  X = '1.Pink   2.White   3.Green   4.Black'.
option('13',X):-
  X = '1. Portland   2.Pyongyang   3.Kiev   4.London'.
option('14',X):-
  X = '1.Pitfall!   2. Donkey Kong   3.Jet Set Willy   4.Prince of Persia'.
option('15',X):-
  X = '1.Ceder Chips   2.Gunpowder   3.Potash   4.Backing Soda'.
option('16',X):-
  X = '1. Pluto, no!    2.Oh boy!   3.Gosh!   4.Hot dogs!'.
option('17',X):-
  X = '1. New York City Subway Switching   2. Controlling London Streetlights   3. Paper Clip Manufacturing   4.Defense Department Contracts'.
option('18',X):-
  X = '1. Milling   2.Pottery   3.Mechanical Gates   4.Water Pumping'.
option('19',X):-
  X = '1.Ostrich   2.Human   3.Elephant   4.Moose'.
option('20',X):-
  X = '1.Chameleon   2.Gecko   3.King Cobra   4.Hummingbird'.
option('21',X):-
  X = '1.Chameleon   2.Gecko    3.King Cobra   4.Hummingbird'.
option('22',X):-
  X = '1.Conficker   2.Blaster   3.Creeper   4.Morris'.
option('23',X):-
  X = '1.Minecraft   2.Myst   3.World of Warcraft   4.The Sims'.
option('24',X):-
  X = '1.Violet   2.Green   3.Red   4.Blue'.
option('25',X):-
  X = '1.Copper   2. Bronze   3.Tin   4.Iron'.
option('26',X):-
  X = '1. Soft Drinks   2. Tea   3. Coffee   4. Alcohol  '.



% Trivia Questions Solutions
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
trivia_answer('5','1',X):-
  X = 'Yes, Mars is the correct answer.'.
trivia_answer('5',Y, X):-
  Y \= '1',
  X = 'Wrong! Correct Answer is Mars'.
trivia_answer('6','3',X):-
  X = 'Yes, Sensory Input is the correct answer.'.
trivia_answer('6',Y, X):-
  Y \= '3',
  X = 'Wrong! Correct Answer is Sensory Input'.
trivia_answer('7','4',X):-
  X = 'Yes, Snail Teeth is the correct answer'.
trivia_answer('7',Y, X):-
  Y \= '4',
  X = 'Wrong! Correct Answer is Snail Teeth'.
trivia_answer('8','3',X):-
  X = 'Yes, The Colorado River is the correct answer'.
trivia_answer('8',Y, X):-
  Y \= '3',
  X = 'Wrong! Correct Answer is The Colorado River'.
trivia_answer('9','2',X):-
  X = 'Yes, Spiracles is the correct answer'.
trivia_answer('9',Y, X):-
  Y \= '2',
  X = 'Wrong! Correct Answer is Spiracles'.
trivia_answer('10','1',X):-
  X = 'Yes, Baseball is the correct answer'.
trivia_answer('10',Y, X):-
  Y \= '1',
  X = 'Wrong! Correct Answer is Baseball'.
trivia_answer('11','1',X):-
  X = 'Yes, Tooth Enamel is the correct answer'.
trivia_answer('11',Y, X):-
  Y \= '1',
  X = 'Wrong! Correct Answer is Tooth Enamel '.
trivia_answer('12','2',X):-
  X = 'Yes, White is the correct answer'.
trivia_answer('12',Y, X):-
  Y \= '2',
  X = 'Wrong! Correct Answer is White'.
trivia_answer('13','3',X):-
  X = 'Yes, Kiev is the correct answer'.
trivia_answer('13',Y, X):-
  Y \= '3',
  X = 'Wrong! Correct Answer is Kiev'.
trivia_answer('14','2',X):-
  X = 'Yes, Donkey Kong is the correct answer'.
trivia_answer('14',Y, X):-
  Y \= '2',
  X = 'Wrong! Correct Answer is Donkey Kong'.
trivia_answer('15','2',X):-
  X = 'Yes, Gunpowder is the correct answer'.
trivia_answer('15',Y, X):-
  Y \= '2',
  X = 'Wrong! Correct Answer is Gunpowder'.
trivia_answer('16','4',X):-
  X = 'Yes, Hot dogs! is the correct answer'.
trivia_answer('16',Y, X):-
  Y \= '4',
  X = 'Wrong! Correct Answer is Hot dogs!'.
trivia_answer('17','4',X):-
  X = 'Yes, Defense Department Contracts is the correct answer'.
trivia_answer('17',Y, X):-
  Y \= '4',
  X = 'Wrong! Correct Answer is Defense Department Contracts'.
trivia_answer('18','2',X):-
  X = 'Yes, Pottery is the correct answer'.
trivia_answer('18',Y, X):-
  Y \= '2',
  X = 'Wrong! Correct Answer is Pottery'.
trivia_answer('19','1',X):-
  X = 'Yes, Ostrich is the correct answer'.
trivia_answer('19',Y, X):-
  Y \= '1',
  X = 'Wrong! Correct Answer is Ostrich'.
trivia_answer('20','1',X):-
  X = 'Yes, Chameleon is the correct answer'.
trivia_answer('20',Y, X):-
  Y \= '1',
  X = 'Wrong! Correct Answer is Chameleon'.
trivia_answer('21','1',X):-
  X = 'Yes, Chameleon is the correct answer'.
trivia_answer('21',Y, X):-
  Y \= '1',
  X = 'Wrong! Correct Answer is Chameleon'.
trivia_answer('22','3',X):-
  X = 'Yes, Creeper is the correct answer '.
trivia_answer('22',Y, X):-
  Y \= '3',
  X = 'Wrong! Correct Answer is Creeper'.
trivia_answer('23','1',X):-
  X = 'Yes, Minecraft is the correct answer'.
trivia_answer('23',Y, X):-
  Y \= '1',
  X = 'Wrong! Correct Answer is Minecraft'.
trivia_answer('24','1',X):-
  X = 'Yes, Violet is the correct answer'.
trivia_answer('24',Y, X):-
  Y \= '1',
  X = 'Wrong! Correct Answer is Violet'.
trivia_answer('25','1',X):-
  X = 'Yes, Copper is the correct answer'.
trivia_answer('25',Y, X):-
  Y \= '1',
  X = 'Wrong! Correct Answer is Copper'.
trivia_answer('26','2',X):-
  X = 'Yes, Tea is the correct answer '.
trivia_answer('26',Y, X):-
  Y \= '2',
  X = 'Wrong! Correct Answer is Tea'.


% Jokes
joke(1,Y):-
   Y = 'What did one wall say to the other wall? I\'ll meet you at the corner!'.
joke(2,Y):-
   Y = 'What do you call a bear with no teeth? A gummy bear!'.
joke(3,Y):-
   Y = 'Why are elephants so wrinkled? Because they take too long to iron!'.
joke(4,Y):-
   Y = 'What has four wheels and flies? A garbage truck!'.
joke(5,Y):-
   Y = 'What did 0 say to 8?  Nice belt!'.
joke(6,Y):-
   Y = 'Why Don\'t Ghosts Like To Go To Prom? Because they have no body to dance with.'.
joke(7,Y):-
   Y = 'Behind every great man is a woman with a hostage.'.
joke(8,Y):-
   Y = 'How do you keep a man from drowning? Get his wife/gf off his back.'.
joke(9,Y):-
   Y = 'Photographer: My secret of success is? \'Think negative\'!'.
joke(10,Y):-
   Y = 'My teacher pointed at me with her ruler and said that at the end of this ruler is a dumb. I got a detention after asking which end!'.
joke(11,Y):-
   Y = 'I am a nobody, nobody is perfect, therefore I am perfect.'.
joke(12,Y):-
   Y = 'Make no mistakes. The junior is your biggest prospect!'.
joke(13,Y):-
   Y= 'Parallel lines have too much in common, it\'s a shame they\'ll never meet.'.
joke(14,Y):-
   Y= ' Tell me everything you know...I have a few seconds to waste.'.
joke(15,Y):-
   Y= 'Is Google male or female? Answer: Female, because it doesn\'t let you finish a sentence before making a suggestion.'.
joke(16,Y):-
   Y= 'Can a kangaroo jump higher than a house? Of course, a house doesn\'t jump at all.'.
joke(17,Y):-
   Y= ' What goes up and down but never moves?                                                                                  The stairs!'.

jokes(Y):-
  random(1,17,X),
  joke(X,Y).

% Quotes
quote(1,Y):-
  Y = 'The best preparation for tomorrow is doing your best today. -H. Jackson Brown, Jr.'.
quote(2,Y):-
  Y = 'Don\'t wait. The time will never be just right. -Napoleon Hill'.
quote(3,Y):-
  Y = 'Don\'t regret the past, just learn from it. -Ben Ipock'.
quote(4,Y):-
  Y = 'Believe you can and you’re halfway there. -Theodore Roosevelt'.
quote(5,Y):-
  Y = 'Life is what happens while you are busy making other plans. -John Lennon.'.
quote(6,Y):-
  Y = 'Be so good they can\'t ignore you. -Steve Martin.'.
quote(7,Y):-
  Y = 'Life is not a problem to be solved, but a reality to be experienced. -Soren Kierkegaard.'.
quote(8,Y):-
  Y = 'Life isn\'t about waiting for the storm to pass… It\'s about learning to dance in the rain -Vivian Greene.'.
quotes(Y):-
  random(1,8,X),
  quote(X,Y).
