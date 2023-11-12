//
//  ViewController.swift
//  Concentration Game
//
//  Created by Marko Khomulyak on 16.09.2023.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var gameButtons: [UIButton]!
    
    @IBOutlet weak var player1Label: UILabel!
    @IBOutlet weak var player2Label: UILabel!
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    
    @IBOutlet weak var button13: UIButton!
    @IBOutlet weak var button14: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button16: UIButton!
    
    @IBOutlet weak var button17: UIButton!
    @IBOutlet weak var button18: UIButton!
    @IBOutlet weak var button19: UIButton!
    @IBOutlet weak var button20: UIButton!
    
    @IBOutlet weak var button21: UIButton!
    @IBOutlet weak var button22: UIButton!
    @IBOutlet weak var button23: UIButton!
    @IBOutlet weak var button24: UIButton!
    
    var images = [
        "image1",
        "image2",
        "image3",
        "image4",
        "image5",
        "image6",
        "image7",
        "image8",
        "image9",
        "image10",
        "image11",
        "image12",
        "image1",
        "image2",
        "image3",
        "image4",
        "image5",
        "image6",
        "image7",
        "image8",
        "image9",
        "image10",
        "image11",
        "image12"
    ]
    
    var buttons = [UIButton]()
    
    var click = 1
    
    var click1 = 0
    var click2 = 0
    
    var points1 = 0
    var points2 = 0
    var maxPoints = 12
    
    var player:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add buttons to an array
        buttons.append(button1)
        buttons.append(button2)
        buttons.append(button3)
        buttons.append(button4)
        buttons.append(button5)
        buttons.append(button6)
        buttons.append(button7)
        buttons.append(button8)
        buttons.append(button9)
        buttons.append(button10)
        buttons.append(button11)
        buttons.append(button12)
        buttons.append(button13)
        buttons.append(button14)
        buttons.append(button15)
        buttons.append(button16)
        buttons.append(button17)
        buttons.append(button18)
        buttons.append(button19)
        buttons.append(button20)
        buttons.append(button21)
        buttons.append(button22)
        buttons.append(button23)
        buttons.append(button24)
        
        //shuffle the images
        images.shuffle()
        
        for button in gameButtons {
            button.layer.cornerRadius = 10
        }
        
        for (index, button) in buttons.enumerated() {
            button.tag = index
        }
        
        let player = randomizePlayer()
        
        startPlayer()
        
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        let tag = sender.tag
        if click == 1 {
            sender.setImage(UIImage(named: images[tag]), for: .normal)
            click = 2
            click1 = tag
        } else if click == 2 {
            sender.setImage(UIImage(named: images[tag]), for: .normal)
            click = 1
            click2 = tag
            compare()
        }
    }
    
    func compare() {
        if images[click1] == images[click2] {
            //same images
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.8) {
                //hide images
                self.buttons[self.click1].alpha = 0
                self.buttons[self.click2].alpha = 0
                
                if self.player == 1 {
                    self.points1 = self.points1 + 1
                    self.player1Label.text = "Player 1: \(self.points1)"
                }
                else if self.player == 2 {
                    self.points2 = self.points2 + 1
                    self.player2Label.text = "Player 2: \(self.points2)"
                }
                //no player switch when images are the same
                
                self.winPlayer()
            }
        }
        else {
            //different images
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.8) {
                //hide images
                self.buttons[self.click1].setImage(UIImage(named: "image0"), for: .normal)
                self.buttons[self.click2].setImage(UIImage(named: "image0"), for: .normal)
                
                //switch player
                self.switchPlayer()
            }
        }
    }
    
    func switchPlayer() {
        if player == 1 {
            player = 2
            
            player1Label.textColor = .gray
            player2Label.textColor = .black
        }
        else {
            player = 1
            
            player1Label.textColor = .black
            player2Label.textColor = .gray
        }
    }
    
    func startPlayer() {
        self.winnerLabel.alpha = 0
        if player == 1 {
            player1Label.textColor = .black
            player2Label.textColor = .gray
        }
        else {
            player1Label.textColor = .gray
            player2Label.textColor = .black
        }
    }
    
    func randomizePlayer() -> Int {
        // Генеруємо випадкове число в діапазоні від 0 до 1
        let randomValue = arc4random_uniform(2)
        
        // Зараз randomValue може бути 0 або 1.
        // Ми можемо змінити його в 1 або 2 і повернути результат.
        if randomValue == 0 {
            return 1
        } else {
            return 2
        }
    }
    
    func winPlayer() {
        if self.points1 + self.points2 == self.maxPoints {
            self.winnerLabel.alpha = 1
            if self.points1 > self.points2 {
                self.winnerLabel.text = "Player 1 wins!"
            }
            else if self.points2 > self.points1 {
                self.winnerLabel.text = "Player 2 wins!"
            }
            else {
                self.winnerLabel.text = "Draw!"
            }
        }
    }
    
}

