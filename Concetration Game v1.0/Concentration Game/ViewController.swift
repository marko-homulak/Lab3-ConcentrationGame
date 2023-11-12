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
        
        let player = randomizePlayer()
        
        startPlayer()
        
    }

    @IBAction func button1Action(_ sender: Any) {
        if click == 1 {
            button1.setImage(UIImage(named: images[0]), for: .normal)
            click = 2
            click1 = 1
        }
        else if click == 2 {
            button1.setImage(UIImage(named: images[0]), for: .normal)
            click = 1
            click2 = 1
            
            compare()
        }
    }
    @IBAction func button2Action(_ sender: Any) {
        if click == 1 {
            button2.setImage(UIImage(named: images[1]), for: .normal)
            click = 2
            click1 = 2
        }
        else if click == 2 {
            button2.setImage(UIImage(named: images[1]), for: .normal)
            click = 1
            click2 = 2
            
            compare()
        }
    }
    @IBAction func button3Action(_ sender: Any) {
        if click == 1 {
            button3.setImage(UIImage(named: images[2]), for: .normal)
            click = 2
            click1 = 3
        }
        else if click == 2 {
            button3.setImage(UIImage(named: images[2]), for: .normal)
            click = 1
            click2 = 3
            
            compare()
        }
    }
    @IBAction func button4Action(_ sender: Any) {
        if click == 1 {
            button4.setImage(UIImage(named: images[3]), for: .normal)
            click = 2
            click1 = 4
        }
        else if click == 2 {
            button4.setImage(UIImage(named: images[3]), for: .normal)
            click = 1
            click2 = 4
            
            compare()
        }
    }
    
    @IBAction func button5Action(_ sender: Any) {
        if click == 1 {
            button5.setImage(UIImage(named: images[4]), for: .normal)
            click = 2
            click1 = 5
        }
        else if click == 2 {
            button5.setImage(UIImage(named: images[4]), for: .normal)
            click = 1
            click2 = 5
            
            compare()
        }
    }
    @IBAction func button6Action(_ sender: Any) {
        if click == 1 {
            button6.setImage(UIImage(named: images[5]), for: .normal)
            click = 2
            click1 = 6
        }
        else if click == 2 {
            button6.setImage(UIImage(named: images[5]), for: .normal)
            click = 1
            click2 = 6
            
            compare()
        }
    }
    @IBAction func button7Action(_ sender: Any) {
        if click == 1 {
            button7.setImage(UIImage(named: images[6]), for: .normal)
            click = 2
            click1 = 7
        }
        else if click == 2 {
            button7.setImage(UIImage(named: images[6]), for: .normal)
            click = 1
            click2 = 7
            
            compare()
        }
    }
    @IBAction func button8Action(_ sender: Any) {
        if click == 1 {
            button8.setImage(UIImage(named: images[7]), for: .normal)
            click = 2
            click1 = 8
        }
        else if click == 2 {
            button8.setImage(UIImage(named: images[7]), for: .normal)
            click = 1
            click2 = 8
            
            compare()
        }
    }
    
    @IBAction func button9Action(_ sender: Any) {
        if click == 1 {
            button9.setImage(UIImage(named: images[8]), for: .normal)
            click = 2
            click1 = 9
        }
        else if click == 2 {
            button9.setImage(UIImage(named: images[8]), for: .normal)
            click = 1
            click2 = 9
            
            compare()
        }
    }
    @IBAction func button10Action(_ sender: Any) {
        if click == 1 {
            button10.setImage(UIImage(named: images[9]), for: .normal)
            click = 2
            click1 = 10
        }
        else if click == 2 {
            button10.setImage(UIImage(named: images[9]), for: .normal)
            click = 1
            click2 = 10
            
            compare()
        }
    }
    @IBAction func button11Action(_ sender: Any) {
        if click == 1 {
            button11.setImage(UIImage(named: images[10]), for: .normal)
            click = 2
            click1 = 11
        }
        else if click == 2 {
            button11.setImage(UIImage(named: images[10]), for: .normal)
            click = 1
            click2 = 11
            
            compare()
        }
    }
    @IBAction func button12Action(_ sender: Any) {
        if click == 1 {
            button12.setImage(UIImage(named: images[11]), for: .normal)
            click = 2
            click1 = 12
        }
        else if click == 2 {
            button12.setImage(UIImage(named: images[11]), for: .normal)
            click = 1
            click2 = 12
            
            compare()
        }
    }
    
    @IBAction func button13Action(_ sender: Any) {
        if click == 1 {
            button13.setImage(UIImage(named: images[12]), for: .normal)
            click = 2
            click1 = 13
        }
        else if click == 2 {
            button13.setImage(UIImage(named: images[12]), for: .normal)
            click = 1
            click2 = 13
            
            compare()
        }
    }
    @IBAction func button14Action(_ sender: Any) {
        if click == 1 {
            button14.setImage(UIImage(named: images[13]), for: .normal)
            click = 2
            click1 = 14
        }
        else if click == 2 {
            button14.setImage(UIImage(named: images[13]), for: .normal)
            click = 1
            click2 = 14
            
            compare()
        }
    }
    @IBAction func button15Action(_ sender: Any) {
        if click == 1 {
            button15.setImage(UIImage(named: images[14]), for: .normal)
            click = 2
            click1 = 15
        }
        else if click == 2 {
            button15.setImage(UIImage(named: images[14]), for: .normal)
            click = 1
            click2 = 15
            
            compare()
        }
    }
    @IBAction func button16Action(_ sender: Any) {
        if click == 1 {
            button16.setImage(UIImage(named: images[15]), for: .normal)
            click = 2
            click1 = 16
        }
        else if click == 2 {
            button16.setImage(UIImage(named: images[15]), for: .normal)
            click = 1
            click2 = 16
            
            compare()
        }
    }
    
    @IBAction func button17Action(_ sender: Any) {
        if click == 1 {
            button17.setImage(UIImage(named: images[16]), for: .normal)
            click = 2
            click1 = 17
        }
        else if click == 2 {
            button17.setImage(UIImage(named: images[16]), for: .normal)
            click = 1
            click2 = 17
            
            compare()
        }
    }
    @IBAction func button18Action(_ sender: Any) {
        if click == 1 {
            button18.setImage(UIImage(named: images[17]), for: .normal)
            click = 2
            click1 = 18
        }
        else if click == 2 {
            button18.setImage(UIImage(named: images[17]), for: .normal)
            click = 1
            click2 = 18
            
            compare()
        }
    }
    @IBAction func button19Action(_ sender: Any) {
        if click == 1 {
            button19.setImage(UIImage(named: images[18]), for: .normal)
            click = 2
            click1 = 19
        }
        else if click == 2 {
            button19.setImage(UIImage(named: images[18]), for: .normal)
            click = 1
            click2 = 19
            
            compare()
        }
    }
    @IBAction func button20Action(_ sender: Any) {
        if click == 1 {
            button20.setImage(UIImage(named: images[19]), for: .normal)
            click = 2
            click1 = 20
        }
        else if click == 2 {
            button20.setImage(UIImage(named: images[19]), for: .normal)
            click = 1
            click2 = 20
            
            compare()
        }
    }
    
    @IBAction func button21Action(_ sender: Any) {
        if click == 1 {
            button21.setImage(UIImage(named: images[20]), for: .normal)
            click = 2
            click1 = 21
        }
        else if click == 2 {
            button21.setImage(UIImage(named: images[20]), for: .normal)
            click = 1
            click2 = 21
            
            compare()
        }
    }
    @IBAction func button22Action(_ sender: Any) {
        if click == 1 {
            button22.setImage(UIImage(named: images[21]), for: .normal)
            click = 2
            click1 = 22
        }
        else if click == 2 {
            button22.setImage(UIImage(named: images[21]), for: .normal)
            click = 1
            click2 = 22
            
            compare()
        }
    }
    @IBAction func button23Action(_ sender: Any) {
        if click == 1 {
            button23.setImage(UIImage(named: images[22]), for: .normal)
            click = 2
            click1 = 23
        }
        else if click == 2 {
            button23.setImage(UIImage(named: images[22]), for: .normal)
            click = 1
            click2 = 23
            
            compare()
        }
    }
    @IBAction func button24Action(_ sender: Any) {
        if click == 1 {
            button24.setImage(UIImage(named: images[23]), for: .normal)
            click = 2
            click1 = 24
        }
        else if click == 2 {
            button24.setImage(UIImage(named: images[23]), for: .normal)
            click = 1
            click2 = 24
            
            compare()
        }
    }
    
    func compare() {
        if images[click1-1] == images[click2-1] {
            //same images
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.8) {
                //hide images
                self.buttons[self.click1-1].alpha = 0
                self.buttons[self.click2-1].alpha = 0
                
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
                self.buttons[self.click1-1].setImage(UIImage(named: "image0"), for: .normal)
                self.buttons[self.click2-1].setImage(UIImage(named: "image0"), for: .normal)
                
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

