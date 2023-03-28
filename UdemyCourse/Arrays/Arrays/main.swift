var myFavoriteMovies = ["Harry Potter", "The Lord of the ring", "Back to the future"] // arrays only support the same type of values

var anyTypes = ["One", "Two", "Three", 5, false] as [Any] // this arra is type as ANY object

//as --> casting
//any --> any object

print(myFavoriteMovies[0].uppercased())
print(myFavoriteMovies[1])
print(myFavoriteMovies[2])
print(myFavoriteMovies.count)
print(myFavoriteMovies[myFavoriteMovies.count - 1]) // get last element of the array
// print(anyTypes[3].uppercased()) // Value of type 'Any' has no member 'uppercased'
print(anyTypes[3])
print(anyTypes[4])
// print(anyTypes[5]) // Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range

