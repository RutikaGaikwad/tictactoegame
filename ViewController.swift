//
//  ViewController.swift
//  tictactoe Game
//
//  Created by APPLE on 25/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    var winningstates = [[0,1,2], [0,3,6], [1,4,7], [2,5,8], [3,4,5], [6,7,8], [0,4,8], [2,4,6]]
    var space = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var player = 1
    var gameActive = true
    
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    

    @IBAction func resetButton(_ sender: UIButton) {
        for btn in buttons {
            btn.setTitle("Button", for: .normal)
            btn.isEnabled = true
        }
            player = 1
            gameActive = true
        }
    
    @IBAction func gameButtons(_ sender: UIButton) {
        if !gameActive {
            return
        }
        
        if player == 1 {
            sender.setTitle("X", for: .normal)
            space[sender.tag] = 1
            player = 2
        }else {
            sender.setTitle("O", for: .normal)
            space[sender.tag] = 2
            player = 1
        }
        
        sender.isEnabled = false
        
        for scenario in winningstates {
            if space[scenario[0]] != 0 && space[scenario[0]] == space[scenario[1]] && space[scenario[1]] == space[scenario[2]] {
                gameActive = false
                if space [scenario[0]] == 1 {
                    winnerLabel.text = "Winner is: 1st Player"
                }else {
                    winnerLabel.text = "Winner is: 2nd Player"
                }
            }
        }
        //check for draw
        if !gameActive && !space.contains(0){
            winnerLabel.text = "It's a Draw!"
        }
        }
        }
    

            
        
       
       


        
          
