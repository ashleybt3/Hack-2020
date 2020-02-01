#proliferate

import random
'''
1. check mood (scale) returns value to pass to another function
2. evaluate assessment and give prompt
    ask for input
    transition phrase
3. flower growth
    random flower selection
    check if current flower growing
    if no flower or flower fully grown:
        plant seed
    else:
        grow (based on mood)


class flower and app
'''
class Flower:
    def __init__(self):
        #[seed, small sprout, big sprout, bud, small bloom, full bloom]
        self.stage = 0
        #[sunflower, daisy, lily]
        self.species = random.choice(["sunflower", "daisy", "lily"])
        
    def get_stage(self):
        return self.stage

    def grow(self):
        self.stage += 1


class Development:
    def __init__(self):
        self.mood = None
        self.garden = []

    def ask_mood(self):
         assessment = input("How was your day today?\n[1]Bad\n[2]Okay\n[3]Good\n")
         self.mood = assessment

    def evaluate_mood(self):
        if self.mood == "1": #Bad
            print('''It is hard to think of a lot of positive things when you're having a rough day.
                  Let's try and find one good thing that happened today.
                  It can be small, like eating a meal or taking a nap.
                  What is one good thing that happened?''')
            evaluation = input()

        elif self.mood == "2": #Okay =========== fix the transition senetence here
            print('''Yeet\
                  Let’s take some time to reflect on the good things that happened today?
                  Can you name two good things that happened?''')
            evaluation = input()
            
        elif self.mood == "3": #Good
            print('''That’s wonderful! Of all the wonderful things,
                   can you name three good things that happened?''')
            evaulation = input()

    def flower_growth(self):
        if self.garden == [] or self.garden[-1].stage == 5:
            self.garden.append(Flower())

        else:
            if self.mood == "1":
                self.garden[-1].grow()
                self.garden[-1].grow()
                self.garden[-1].grow()
                            
            elif self.mood == "2":
                self.garden[-1].grow()
                self.garden[-1].grow()
                
            elif self.mood == "3":
                self.garden[-1].grow()

    def view_garden(self):
        for i in self.garden:
            print("the flower " + i.species + " is at stage " + str(i.stage))

    def run(self):
        self.ask_mood()
        self.evaluate_mood()
        self.flower_growth()


if __name__ == '__main__':
    d = Development()
    d.run()
    d.view_garden()
