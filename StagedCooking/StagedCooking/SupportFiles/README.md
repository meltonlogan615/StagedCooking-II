# StagedCooking
A different take on a recipe / cooking app

## First Thoughts
A recipe app that displays the ingredients and actions in a human readable order.

### Example: My Cookies
1 stick butter
0.5 cups brown sugar
0.5 cups white sugar
-> Blend together

2 eggs
1 Tbls Vanilla
-> Beat eggs and vanilla together.
-> Add to butter-sugar mixture
-> etc...

## First Needs
- Recipe API that supports identifiable 
- Build a string sorter that will take in all directions and parse it out into an array of strings that end with a ",".
- Maybe once directions are parsed out, If any of the items in the array match, they will be sent over to a new array that can list the items, followed by the instructions.

## Layout thoughts
- Would depend largely on the API being used, but would prefer being able to sort by allergies, course (breakfast, brunch, lunch, super, snack), number of steps, estimated prep time
- Swipe vs tap to mark as completed? Both?


## Networking Flow

### InitialViewController
- No Networking Action
- Text entered into UITextField
- SearchButton pressed

## RecipeListTableViewController
| FileName | Method |
| ----------- | ----------- |
| DataProvider | GetRecipes |
| EndPoints | GetFood |
| NetworkDataFlow | GetData |
| NetworkDataFlow | FetchNetworkData |
| Network Access | FetchData |
| NetworkDataFlow | ParseNetworkData |
| JsonParser | Decode |
| Row Selected from TableView |

## SelectedRecipeViewController
| FileName | Method |
| ----------- | ----------- |
| DataProvider | GetRecipeByID |
| EndPoints | GetRecipeByID |
| NetworkDataFlow | GetData |
| NetworkDataFlow | FetchNetworkData |
| Network Access | FetchData |
| NetworkDataFlow | ParseNetworkData |
| JsonParser | Decode |


