// Experimenting with DOM     16-08-2024

// changing site name         
document.title = "Bakery Shop";

// navigating through the web page
console.log(document.head);
console.log(document.body);

// NAVIGATING FURTHER WITH childNode

console.log(document.body.childNodes); // returns a nodelist ie an array of all elements.
// note: the 'text' you see in the array is just the whitespace or comment between parent elements 

console.log(document.body.childNodes[3]); // index of the parent element you want to navigate within the nodelist
// this returns the mmain tag

// it is best practice to put the navigation command in a var for easy use
const main = document.body.childNodes[3]
console.log(main)

console.log(main.childNodes) // so you can go further down the rabit hole by containing your current 
// location in a variable and then going deeper by indexing using the childNode

//  NAVIGATING FURTHER WITH children

console.log(document.body.children) // using children logs the elements only and ignores the 
// text space unlike the childNodes

const elems = document.body.children
console.log(elems[0].children[2]) // you can still use a var to navigate deeper 

// NAVIGATING FURTHER WITH firstChild & lastChild

console.log(document.body.firstChild) // returns firstNode usually 'text'
console.log(document.body.lastChild) // returns lastNode

// NAVIGATING FURTHER WITH firstChildElement & lastChildElement

console.log(document.body.firstElementChild) // returns the first element ignorint 'text' node
console.log(document.body.lastElementChild) // returns the last element ignoring any comments
