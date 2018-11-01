//
//  ViewController.swift
//  Foody
//
//  Created by Duc Tran on 1/9/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var recipeImageView: UIImageView!
    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var recipeMethodTextView: UITextView!

    var recipeBook = RecipeBook()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nextRecipe = recipeBook.getNextRecipe()
        
        recipeImageView.image = UIImage(named: nextRecipe.imageName)
        recipeNameLabel.text = nextRecipe.name
        recipeMethodTextView.text = nextRecipe.method
    }
    
    @IBAction func newRecipeDidTap(_ sender: Any)
    {
        let nextRecipe = recipeBook.getNextRecipe()
        
        recipeImageView.image = UIImage(named: nextRecipe.imageName)
        recipeNameLabel.text = nextRecipe.name
        recipeMethodTextView.text = nextRecipe.method
    }
    

}

