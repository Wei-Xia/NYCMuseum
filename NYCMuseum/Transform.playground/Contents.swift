//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var museumName = ["9/11 Tribute Center",
                  "African Burial Ground National Monument",
                  "AIGA National Design Center",
                  "A.I.R. Gallery",
                  "Alice Austen House",
                  "American Academy of Arts and Letters",
                  "American Folk Art Museum",
                  "American Museum of Natural History",
                  "American Numismatic Society Museum",
                  "Americas Society",
                  "Anne Frank Center USA",
                  "Aperture Foundation",
                  "Art in General",
                  "Artists Space",
                  "Asia Society",
                  "Asian American Arts Centre",
                  "Austrian Cultural Forum New York",
                  "Bard Graduate Center",
                  "Bartow-Pell Mansion",
                  "Bayside Historical Society"
];
var museumImage = ["911-Tribute-Center.jpg",
                   "African-Burial-Ground-National-Monument.jpg",
                   "AIGA-National-Design-Center.jpg",
                   "A.I.R.-Gallery.jpg",
                   "Alice-Austen-House.jpg",
                   "American-Academy-of-Arts-and-Letters.jpg",
                   "American-Folk-Art-Museum.jpg",
                   "American-Museum-of-Natural-History.jpg",
                   "American-Numismatic-Society-Museum.jpg",
                   "Americas-Society.jpg",
                   "Anne-Frank-Center-USA.jpg",
                   "Aperture-Foundation.jpg",
                   "Art-in-General.jpg",
                   "Artists-Space.jpg",
                   "Asia-Society.jpg",
                   "Asian-American-Arts-Centre.jpg",
                   "Austrian-Cultural-Forum-New-York.jpg",
                   "Bard-Graduate-Center.jpg",
                   "Bartow-Pell-Mansion.jpg",
                   "Bayside-Historical-Society.jpg"
];
var museumType = ["History",
                  "History",
                  "Art",
                  "Art",
                  "Historic house",
                  "Art",
                  "Art",
                  "Natural history",
                  "Numismatic",
                  "Art",
                  "History",
                  "Media",
                  "Art",
                  "Art",
                  "Art",
                  "Art",
                  "Culture",
                  "Art",
                  "Historic house",
                  "History"
];
var museumLocation = ["Manhattan",
                      "Manhattan",
                      "Manhattan",
                      "Brooklyn",
                      "Staten Island",
                      "Manhattan",
                      "Manhattan",
                      "Manhattan",
                      "Manhattan",
                      "Manhattan",
                      "Manhattan",
                      "Manhattan",
                      "Manhattan",
                      "Manhattan",
                      "Manhattan",
                      "Manhattan",
                      "Manhattan",
                      "Manhattan",
                      "Bronx",
                      "Queens"
];

var visitedMuseum = [Bool](count: 20, repeatedValue: false)


for i in 0..<museumName.count {
        print ("Museum(name: \"\(museumName[i])\", type: \"\(museumType[i])\", location: \"\(museumLocation[i])\", image: \"\(museumImage[i])\", isVisited:\(visitedMuseum[i])),")

}
    
