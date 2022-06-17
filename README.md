## Dados
Simples jogo de dados em swift, conforme e clicado no botão de lançar, dois dados são jogados e aleatoriamente mostra os números

## Objetivo
Aprender utilizar UI interface  para construir nossas interface e como interagir com eventos no IOS

## Feature
- Aprendi a instanciar imagens e botões na regra de negócio  do nosso código
- Toda entrada de código fica na ViewController
- Aprendi dinamicamente inserir nossas fotos em uma UI
- @IBOutlet weak e responsável por instanciar nossa parte logica com a parte da View
- Xcode possui recurso simples para realizar essas instancias entre xml e a rega de negócio
- UIImage e o responsável pelo dinamismo das fotos

```swift
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




```
