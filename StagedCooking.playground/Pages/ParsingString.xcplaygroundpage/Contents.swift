import UIKit

var directions = "Cream together the butter, white sugar, and brown sugar until smooth. Beat in the eggs one at a time, then stir in the vanilla. Dissolve baking soda in hot water. Add to batter along with salt. Stir in flour, chocolate chips, and nuts. Drop by large spoonfuls onto ungreased pans."
var divideIntoSubStrings = [Substring]()
var directionsArray = [String]()

func breakUpString(_ directions: String) -> [String] {
  // bring in the directions
  // Break up the directions, seperated by "."
  divideIntoSubStrings = directions.split(separator: ".")
  // append each sentence string into divided directions array
  for line in divideIntoSubStrings {
    directionsArray.append(String(line).trimmingCharacters(in: .whitespacesAndNewlines))
  }
  // need to reinsert the "." at the end of each line
  
  return directionsArray
}


let fart = breakUpString(directions)
print(fart)
for i in fart {
  print(i)
}

// MARK: - RESOURCES

// Breaking up a string
// https://sarunw.com/posts/how-to-split-string-into-array-of-substrings-in-swift/
// https://developer.apple.com/documentation/swift/string/2894564-split
// https://www.codegrepper.com/code-examples/swift/swift+split+string+by+period

//Possible APIs:
// BigOven: https://api2.bigoven.com
// Spoontacular: https://spoonacular.com/food-api/console#Profile
