//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//declaring Struct
struct Song {
    //properties
    let songTitle: String
    let songArtist: String
    let songGenre: String
    //method
    func playSong() -> String{
        return "playing \(songTitle)"
    }
    
    func isTheSameArtist(artist: Song) -> Bool {
        if songArtist == artist.songArtist {
            return true
        } else {
            return false
        }
    }
    
}
//instances
let kauAdalah = Song(songTitle: "Kau Adalah", songArtist: "Isyana Sarasvati", songGenre: "Pop")
let upAndUp = Song(songTitle: "Up&Up", songArtist: "Coldplay", songGenre: "Pop")
let pesta = Song(songTitle: "Pesta", songArtist: "Isyana Sarasvati", songGenre: "Pop")

print(kauAdalah.songArtist)
//call methods

kauAdalah.playSong()
upAndUp.playSong()
kauAdalah.isTheSameArtist(pesta)

//declaring cat
//Pet is Super Class
class Pet {
    //properties
    var name: String
    var ownerName: String
    var gender: String
    //designated initializer
    init(name: String, ownerName: String, gender: String){
        self.name = name
        self.ownerName = ownerName
        self.gender = gender
    }
}
// Cat is Subclass and Pet is SuperClass
//inheritance
class Cat: Pet {
    //properties
    var type: String
    var energy = 5
    //initializer
    init(name: String, ownerName: String, gender: String, type: String){
        self.type = type
        super.init(name: name, ownerName: ownerName, gender: gender)
    }
    //methods
    func meow() -> String {
        return "meeeowwwwww~~"
    }
    
    func eating() -> String {
        energy += 1
        return "\(name) wanna eat"
    }
    
    func sleeping() {
        let currentEnergy = energy
        let energyNeeds = 5 - currentEnergy
        energy += energyNeeds
        print("just recovered and energy is fully charged")
    }
    
    func playingBall() -> String {
        if energy <= 1 {
            sleeping()
            return "\(name) want to sleep"
        } else {
            energy -= 1
            return "\(name) is playing"
        }
    }
    func mating(cat: Cat) -> String {
        if gender == cat.gender {
            return "\(name) & \(cat.name) have the same gender"
            } else {
            energy -= 4
            return "\(name) mating \(cat.name)"
        }
    }
}

class naughtyCat: Cat {
    //kucing nakal kalo makan hasil nyuri
    //suka berantem
}

let gosrek = Pet(name: "Gosrek", ownerName: "CodeLabs", gender: "Female")
let jeje = Cat(name: "Jeje", ownerName: "Evan", gender: "Female", type: "Domestic")
jeje.meow()
let bingBing = Cat(name: "Bing Bing", ownerName: "Mike", gender: "Male", type: "Domestic")

bingBing.mating(jeje)
jeje.playingBall()
jeje.energy
jeje.eating()
jeje.energy
bingBing.energy
bingBing.playingBall()
bingBing.energy
bingBing.playingBall()

//polymorphism
func basicInformation(pet : Pet) -> String {
    return "\(pet.ownerName) is \(pet.name) owner"
}

print(basicInformation(gosrek))
print(basicInformation(jeje))



