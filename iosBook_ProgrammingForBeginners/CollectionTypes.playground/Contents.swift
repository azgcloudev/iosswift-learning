import UIKit

// ARRAYS
// ordered list of items
// must be of the same type
// if array is initialize as constant, then cannot be modify

var shoppingList = ["Eggs", "Milk"]

// found how many items the array has use  .count
shoppingList.count


// check bool to see if array is empty
shoppingList.isEmpty


// append an element at the end of the array
shoppingList.append("Cooking Oil")
shoppingList = shoppingList + ["Butter"]

// add element to an specific index
shoppingList.insert("Chicken", at: 1)


// access an array element with index
shoppingList[2]



// modify the value of a particular index
shoppingList[2] = "Soy Milk"
shoppingList


// removing elements from the array
shoppingList.remove(at: 1)
shoppingList


// remove the last element
shoppingList.removeLast()



// iterate over an array
for shoppingListItem in shoppingList {
    print(shoppingListItem)
}


// one range operator
// starts from the starting index
for shoppingListItem in shoppingList[1...] { // loop will start in the index 1
    print(shoppingListItem)
}





// DICTIONARIES
// key value pairs
// unordered list
var contactList = ["Shah": "+4234256343", "Aamir": "+86564543235"]
// key's have to be unique in the dictionary



// get number of elements in dictionary
contactList.count



// check if dictionary is empty
contactList.isEmpty



// add new elements to existing dictionary
contactList["Jane"] = "+82314674563"
contactList



// access a key value
contactList["Shah"]



// modify an existing key value
contactList["Shah"] = "+12342345234"
contactList["Shah"]


// remote an element from the dictionary
contactList["Jane"] = nil
contactList



// iterate over the dictionary
for (name, contactNumber) in contactList {
    print("\(name) : \(contactNumber)")
}






// SETS

var moviesGenres: Set = ["Horror", "Action", "Romantic Comedy"]


// get number of elements in set
moviesGenres.count



// check if empty
moviesGenres.isEmpty




// add a new element to a set
moviesGenres.insert("War")



// check if a set contains an element
moviesGenres.contains("War")



// remove element from set
moviesGenres.remove("War")




// iterate over a set
for genre in moviesGenres {
    print(genre)
}




// review set operations
moviesGenres.insert("War")
let movieGenres2: Set<String> = ["Science Fiction", "War", "Fantasy"]


// union
// return new set containing all values in both sets
moviesGenres.union(movieGenres2)



// intersection
// returns a new set containing common values to both sets
moviesGenres.intersection(movieGenres2)


// subtracting
// return new set without the values in the target set
moviesGenres
movieGenres2
moviesGenres.subtracting(movieGenres2)



// symmetricDifference
// returns a new set without the values in common
moviesGenres.symmetricDifference(movieGenres2)



// Exploring set membership and equality
var movieGenres: Set = ["Horror", "Action", "Romantic Comedy", "War"]
let movieGenresSubset: Set = ["Horror", "Romantic Comedy"]
let movieGenresSuperset: Set = ["Horror", "Romantic Comedy", "War", "Science Fiction", "Fantasy"]
let movieGenresDisjoint: Set = ["Bollywood"]
movieGenres == movieGenres2

// isSubset
// checks if all the members of the set are in the other set
movieGenresSubset.isSubset(of: movieGenres)


// isSuperset
// checks if all the elements in the set target are in set calling the function
movieGenresSubset.isSuperset(of: movieGenres)



// isDisJoint(with: )
// checks if a set has no values in common with another set
movieGenresDisjoint.isDisjoint(with: movieGenres)
