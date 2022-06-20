//
//  ViewController.swift
//  Dicee-iOS13
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewOne: UIImageView!
    @IBOutlet weak var imageViewTwo: UIImageView!
    let imageOne = UIImage(named: "DiceOne")
    let imageTwo = UIImage(named: "DiceTwo")
    let imageThree = UIImage(named: "DiceThree")
    let imageFour = UIImage(named: "DiceFour")
    let imageFive = UIImage(named: "DiceFive")
    let imageSix = UIImage(named: "DiceSix")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func changeView(_ sender: UIButton) {
        let arrayImage = [imageOne,imageTwo,imageThree,imageFour,imageFive,imageSix]

        
        //imageViewTwo.image = arrayImage[Int.random(in: 0...5)] uma maneira de fazer aleatorio
        imageViewTwo.image = arrayImage.randomElement() as? UIImage
        imageViewOne.image = arrayImage.randomElement() as? UIImage
  
    }
    
}

