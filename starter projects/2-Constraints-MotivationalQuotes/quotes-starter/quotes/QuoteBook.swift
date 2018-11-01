//
//  QuoteBook.swift
//  Quotes
//
//  Created by Duc Tran on 4/29/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import Foundation

class QuoteBook
{
    var quotes: [String] = ["If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what’s next.", "No matter how small you start, start something that matters.", "The credit belongs to those who are actually in the arena, who strive valiantly; who know the great enthusiasums, the great devotions, and spend themselves in a worthy cause; who at best know the triumph of high achievement; and who, at worst, if they fail, fail while daring greatly, so that their place shall never be with those cold and timid souls who know neither victory nor defeat."]
    var authors: [String] = ["Steve Jobs", "Brendon Burchard", "Theodore Roosevelt"]
    var imageNames: [String] = ["thumb_stevejobs", "thumb_brendonburchard", "thumb_theodoreroosevelt"]
    
    func getRandomQuote() -> String
    {
        let randomIndex = Int(arc4random()) % quotes.count
        return quotes[randomIndex]
    }
    
    func getAuthor(for quote: String) -> String
    {
        if let index = quotes.index(of: quote) {
            return authors[index]
        } else {
            return ""
        }
    }
    
    func getImageName(for author: String) -> String
    {
        if let index = authors.index(of: author) {
            return imageNames[index]
        } else {
            return "thumb_default"
        }
    }
}

















