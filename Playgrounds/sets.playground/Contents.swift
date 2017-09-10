// Swift - An Introduction to Apple's Open Source Language

import UIKit

var devices = Set<String>()
// creates a new empty set

devices.insert("iPhone")
print(devices)
// prints ["iPhone"]


var webSuffixes: Set<String> = [".html", ".js", ".css"]
print(webSuffixes)
// prints [".js", ".html", ".css"]


print("There are \(webSuffixes.count) common suffixes in web development.")
// prints There are 3 common suffixes in web development.

if webSuffixes.contains(".py"){
    print("Yeah, Python made it to the top 3 :)")
} else {
    print("Python is not in the top 3 :( ")
}
// prints "Python is not in the top 3 :( "

for suffix in webSuffixes{
    print ("\(suffix)")
}
// .css
// .js
// .html


/*
 Set Operations
 */


let favSongs: Set = ["Enter Sandman", "Bohemian Rapsody", "Blitzkrieg Bop", "Painkiller"]
let songsFrom90s: Set = ["Raining Blood","Enter Sandman","Painkiller","Wonderwall"]

var playList = Set<String>()
playList = favSongs.union(songsFrom90s)
/* union combines the values of both sets, values which are in both sets 
 will be displayed once.
 
 ["Blitzkrieg Bop", "Raining Blood", "Bohemian Rapsody", "Enter Sandman", "Painkiller", "Wonderwall"]
*/

playList = favSongs.intersection(songsFrom90s)
/* intersect creates a new list which contains all values that exist in both Sets
["Enter Sandman", "Painkiller"]
 */

playList = favSongs.symmetricDifference(songsFrom90s)
/* symmetricDifference stores all values of both sets into a new set, except those
 which were in both sets.
["Blitzkrieg Bop", "Raining Blood", "Bohemian Rapsody", "Wonderwall"]
*/

playList = favSongs.subtracting(songsFrom90s)
/*
 subtracting creates a new set which only includes values which are not in the 
 second set.
 ["Blitzkrieg Bop", "Bohemian Rapsody"]
*/








