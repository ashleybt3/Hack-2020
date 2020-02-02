//
//  Repository.swift
//  Proliferate
//
//  Created by Kastur Koul on 2/1/20.
//  Copyright © 2020 Kastur Koul. All rights reserved.
//

import Foundation


class Repository {
    var defaults: UserDefaults
    
    init() {
        // Creates a connection to UserDefaults
        defaults = UserDefaults.init(suiteName: "hackUCIproject.Proliferate")!
    }
    
    // Load
    //    Given a key, load the data assosiated with that key
    //    Returns value if it exist, else returns nil
    func load(key: String) -> Any? {
        return defaults.data(forKey: key)
    }
    
    // Save
    //    Saves a value to the given key in User.Defaults
    func save(key: String, value: Any) {
        defaults.set(value, forKey: key)
        defaults.synchronize()
    }
}

class Flower {
    var stage = 0
    let species = ["sunflower", "daisy", "gerbera"]
    var flower_type: String
    
    init() {
        flower_type = species.randomElement()!
    }
    
    func get_stage() -> Int {
        return stage
    }
    
    func grow() {
        stage += 1
    }
}

class Development {
    var mood: String?
    var garden = [Flower()]
    
    init(){
        mood = nil
    }
    
    func ask_mood() {
        print("How was your day today? \n [1]Bad\n[2]Okay\n[3]Good")
        mood = readLine()
    }
    
    func evaluate_mood() {
        if mood == "1" //Make sure that we connect the 1,2,3 with the appropriate image on the selection screen so that the app goes where we want it to
        {
            print("It is hard to think of a lot of positive things when you;re having a rough day. Let's try and find one good thing that happened today. It can be small, like eating a small or taking a nap.\nWhat is one good thing that happened?")
        }
        
        else if mood == "2"
        {
            print("That's good! Let's take some time to reflect on the good things that happened today. \n Can you name two good things that happened?")
        }
        
        else if mood == "3"
        {
            print("That's wonderful! Of all the wonderful things, can you name three good things that happened?")
        }
    }
    
    func flower_growth() {
        if garden.isEmpty || garden.last?.stage == 5 {
            garden.append(Flower())
        }
        else if mood == "1"
        {
            let flower_growth = garden.last?.stage
            if flower_growth! + 3 > 6
            {
                while flower_growth! <= 6
                {
                    garden.last?.grow()
                }
                garden.append(Flower())
            }
            else
            {
                garden.last?.grow()
                garden.last?.grow()
                garden.last?.grow()
            }
        }
        else if mood == "2"
        {
            let flower_growth = garden.last?.stage
            if flower_growth! + 2 > 6
            {
                while flower_growth! <= 6
                {
                    garden.last?.grow()
                }
                garden.append(Flower())
            }
            else
            {
            garden.last?.grow()
            garden.last?.grow()
            }
        }
        else if mood == "3"
        {
            let flower_growth = garden.last?.stage
            if flower_growth! + 1 > 6
            {
                while flower_growth! <= 6
                {
                    garden.last?.grow()
                }
                garden.append(Flower())
            }
            else
            {
            garden.last?.grow()
            }
        }
    }
    
    func run() {
        ask_mood()
        evaluate_mood()
        flower_growth()
    }
    
    
}

//let repo = Repository()


