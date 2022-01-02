

import Foundation


struct Books{
    let bookTitle: String
    let bookAuther: String
    let booktype: String
}

var book1 = Books(bookTitle: "Immune", bookAuther: "Philipp Dettmer", booktype: "Art")
var book2 = Books(bookTitle: "A Life Of Picasso", bookAuther: "Picasso", booktype: "Art")
var book3 = Books(bookTitle: "Scrumptious", bookAuther: "Christy Denney", booktype: "Cook")
var book4 = Books(bookTitle: "Rebel Homemaker", bookAuther: "Drew Barrymore", booktype: "Cook")
var book5 = Books(bookTitle: "Peak Mind", bookAuther: "Amishi P. Jha", booktype: "psychology")
var book6 = Books(bookTitle: "One Friday in April", bookAuther: "Donald Antrim", booktype: "psychology")
var book7 = Books(bookTitle: "Diagnosisby",bookAuther:"Lisa Sanders",booktype: "Medical")
var book8 = Books(bookTitle: "Every Patient Tells a Story", bookAuther: "Harriet A. Washington", booktype: "Medical")
var BooksArray = [book1,book2,book3,book4,book5,book6,book7,book8]




func getBook (booktype: String){
    for ( item ) in BooksArray {
        if booktype == item.booktype {
            print("\(item.bookTitle) by \(item.bookAuther)")
      
        }
    }
  }
func takebook (){
    var newbookname : String
    var newbookauther : String
    var newbooktype : String
    print ("enter new book name: ")
    newbookname = readLine()!
    print ("enter new book auther: ")
    
        newbookauther = readLine()!
    print ("enter new book type: ")
     newbooktype = readLine()!
    
 let newBook = Books(bookTitle: newbookname, bookAuther: newbookauther, booktype: newbooktype)
    BooksArray.append(newBook)
    print("Book add Successfully 🤩✅ ")
//    (contentsOf:tokenbook)
}
print("""
      ---------  📕📚📘📚📗 Welcome to our book reservation store 📕📚📘📚📗  ---------
      please choose your book number :
      1-Art
      2-Medical
      3-cook
      4-phsycology
      5- add new book
      """)
print ("enter your number : ")
if let  userinput = readLine(){
    switch userinput {
    case "1":
    getBook(booktype:"Art")
    case "2":
    getBook(booktype:"Medical")
    case "3":
     getBook(booktype:"cook")
    case "4":
    getBook(booktype:"phsycology")
    case "5":
        takebook()
    default:
    print ("out of stock")
        
    }
}
