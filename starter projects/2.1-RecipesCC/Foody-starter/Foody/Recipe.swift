//
//  Recipe.swift
//  Foody
//
//  Created by Duc Tran on 1/9/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import Foundation

class Recipe
{
    var name: String
    var method: String
    var imageName: String
    
    init(name: String, method: String, imageName: String) {
        self.name = name
        self.method = method
        self.imageName = imageName
    }
}

class RecipeBook
{
    var recipes: [Recipe] = [
        Recipe(name: "TIRAMISU", method: "Wrap each piece of beef tightly in a triple layer of cling film to set its shape, then chill overnight. \r\rRemove the cling film, then quickly sear the beef fillets in a hot pan with a little olive oil for 30-60 seconds until browned all over and rare in the middle. Remove from the pan and leave to cool.\r\rFinely chop the mushrooms and fry in a hot pan with a little olive oil, the thyme leaves and some seasoning. \r\rWhen the mushrooms begin to release their juices, continue to cook over a high heat for about 10 minutes until all the excess moisture has evaporated and you are left with a mushroom paste (known as a duxelle).", imageName: "1"),
        Recipe(name: "BEEF WELLINGTON", method: "Add the cumin and fry for 1 minute, then add the tomatoes, season and cook for 15–20 minutes until the tomatoes have completely collapsed (add 3–4 tablespoons of water to the mixture if the tomatoes aren’t that moist). \r\rThe mixture should be the consistency of a thick sauce. Stir to mix well, taste and adjust the seasoning. \r\rMake 4 wells in the tomato mixture and break an egg into each well. \r\rCover the pan and cook gently over a medium-low heat for 5–6 minutes, or until the egg white is set and the yolk is still a little runny.", imageName: "2"),
        Recipe(name: "HALLOUMI, COURGETTE AND HERB CAKES", method: "Wrap each piece of beef tightly in a triple layer of cling film to set its shape, then chill overnight. \r\rRemove the cling film, then quickly sear the beef fillets in a hot pan with a little olive oil for 30-60 seconds until browned all over and rare in the middle. Remove from the pan and leave to cool.\r\rFinely chop the mushrooms and fry in a hot pan with a little olive oil, the thyme leaves and some seasoning. \r\rWhen the mushrooms begin to release their juices, continue to cook over a high heat for about 10 minutes until all the excess moisture has evaporated and you are left with a mushroom paste (known as a duxelle).", imageName: "3"),
        Recipe(name: "CRANBERRY MINCE PIES", method: "Add the cumin and fry for 1 minute, then add the tomatoes, season and cook for 15–20 minutes until the tomatoes have completely collapsed (add 3–4 tablespoons of water to the mixture if the tomatoes aren’t that moist). \r\rThe mixture should be the consistency of a thick sauce. Stir to mix well, taste and adjust the seasoning. \r\rMake 4 wells in the tomato mixture and break an egg into each well. \r\rCover the pan and cook gently over a medium-low heat for 5–6 minutes, or until the egg white is set and the yolk is still a little runny.", imageName: "4"),
        Recipe(name: "SPICY BEEF SALAD", method: "Wrap each piece of beef tightly in a triple layer of cling film to set its shape, then chill overnight. \r\rRemove the cling film, then quickly sear the beef fillets in a hot pan with a little olive oil for 30-60 seconds until browned all over and rare in the middle. Remove from the pan and leave to cool.\r\rFinely chop the mushrooms and fry in a hot pan with a little olive oil, the thyme leaves and some seasoning. \r\rWhen the mushrooms begin to release their juices, continue to cook over a high heat for about 10 minutes until all the excess moisture has evaporated and you are left with a mushroom paste (known as a duxelle).", imageName: "5"),
        Recipe(name: "BEER BREAD", method: "Add the cumin and fry for 1 minute, then add the tomatoes, season and cook for 15–20 minutes until the tomatoes have completely collapsed (add 3–4 tablespoons of water to the mixture if the tomatoes aren’t that moist). \r\rThe mixture should be the consistency of a thick sauce. Stir to mix well, taste and adjust the seasoning. \r\rMake 4 wells in the tomato mixture and break an egg into each well. \r\rCover the pan and cook gently over a medium-low heat for 5–6 minutes, or until the egg white is set and the yolk is still a little runny.", imageName: "6"),
        Recipe(name: "TOMATO & HERB SALSA", method: "Wrap each piece of beef tightly in a triple layer of cling film to set its shape, then chill overnight. \r\rRemove the cling film, then quickly sear the beef fillets in a hot pan with a little olive oil for 30-60 seconds until browned all over and rare in the middle. Remove from the pan and leave to cool.\r\rFinely chop the mushrooms and fry in a hot pan with a little olive oil, the thyme leaves and some seasoning. \r\rWhen the mushrooms begin to release their juices, continue to cook over a high heat for about 10 minutes until all the excess moisture has evaporated and you are left with a mushroom paste (known as a duxelle).", imageName: "7"),
        Recipe(name: "BREAD AND BUTTER PUDDING", method: "Add the cumin and fry for 1 minute, then add the tomatoes, season and cook for 15–20 minutes until the tomatoes have completely collapsed (add 3–4 tablespoons of water to the mixture if the tomatoes aren’t that moist). \r\rThe mixture should be the consistency of a thick sauce. Stir to mix well, taste and adjust the seasoning. \r\rMake 4 wells in the tomato mixture and break an egg into each well. \r\rCover the pan and cook gently over a medium-low heat for 5–6 minutes, or until the egg white is set and the yolk is still a little runny.", imageName: "8"),
        Recipe(name: "STUFFED ROAST CHICKEN", method: "Wrap each piece of beef tightly in a triple layer of cling film to set its shape, then chill overnight. \r\rRemove the cling film, then quickly sear the beef fillets in a hot pan with a little olive oil for 30-60 seconds until browned all over and rare in the middle. Remove from the pan and leave to cool.\r\rFinely chop the mushrooms and fry in a hot pan with a little olive oil, the thyme leaves and some seasoning. \r\rWhen the mushrooms begin to release their juices, continue to cook over a high heat for about 10 minutes until all the excess moisture has evaporated and you are left with a mushroom paste (known as a duxelle).", imageName: "9"),
        Recipe(name: "NORTH AFRICAN EGGS", method: "Add the cumin and fry for 1 minute, then add the tomatoes, season and cook for 15–20 minutes until the tomatoes have completely collapsed (add 3–4 tablespoons of water to the mixture if the tomatoes aren’t that moist). \r\rThe mixture should be the consistency of a thick sauce. Stir to mix well, taste and adjust the seasoning. \r\rMake 4 wells in the tomato mixture and break an egg into each well. \r\rCover the pan and cook gently over a medium-low heat for 5–6 minutes, or until the egg white is set and the yolk is still a little runny.", imageName: "10")
    ]
    
    var currentRecipeIndex = 0
    
    func getNextRecipe() -> Recipe {
        if currentRecipeIndex == recipes.count - 1 {
            currentRecipeIndex = 0
        } else {
            currentRecipeIndex += 1
        }
        
        return recipes[currentRecipeIndex]
    }
}





















