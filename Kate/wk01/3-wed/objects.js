console.log("Is this thing on?")


//The Recipe Card
var recipe = {
    title: "Mole",
    servings: 2,
    ingredients: ["cinnamon", "cumin", "cocoa"]
}

console.log(recipe.title)
console.log("Serves " + recipe.servings)
console.log("Ingredients:")
console.log(recipe.ingredients[0])
console.log(recipe.ingredients[1])
console.log(recipe.ingredients[2])

//The Reading List

var readingList = [
    book1 = {
        title: "Dune",
        author: "Frank Herbert",
        alreadyRead: true
    },
    book2 = {
        title: "Sapiens",
        author: "Yuval Noah Harari",
        alreadyRead: false
    }
]

for (var i = 0; i < readingList.length; i++) {
    if (readingList[i].alreadyRead === true){
        console.log("You have already read " + readingList[i].title + " by " + readingList[i].author)
    }
    else {
        console.log("You still need to read " + readingList[i].title + " by " + readingList[i].author)
    }
}


//The Movie Database
 var favoriteMovie = {
    title: "The Life Aquatic",
    duration: 119,
    stars: ["Bill Murray", "Owen Wilson", "Anjelica Huston"]
 }

 function movieInfo() {
     console.log(favoriteMovie.title + " lasts for " + favoriteMovie.duration + " minutes. Stars: " + favoriteMovie.stars[0] + ", " + favoriteMovie.stars[1] + ", " + favoriteMovie.stars[2] + ".")
 }

 movieInfo();
