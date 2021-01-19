//
//  ViewController.swift
//  BottomBoardCreation
//
//  Created by 白数叡司 on 2021/01/20.
//

import UIKit
import BLTNBoard

class ViewController: UIViewController {
    
    private lazy var boardManager: BLTNItemManager = {
        
        let item = BLTNPageItem(title: "Push Notifications")
        item.image = UIImage(systemName: "bell")
        item.actionButtonTitle = "Continue"
        item.alternativeButtonTitle = "Maybe Later"
        item.descriptionText = "Would you like to stay in the loop and get notifications?"
        item.actionHandler = { _ in
            ViewController.didTapBoardContinue()
        }
        item.alternativeHandler = { _ in
            ViewController.didTapBoardSkip()
        }
        item.appearance.actionButtonColor = .systemGreen
        item.appearance.alternativeButtonTitleColor = .gray
       return BLTNItemManager(rootItem: item)
    }()
    
    @IBOutlet var myButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        myButton.backgroundColor = .link
        myButton.setTitleColor(.white, for: .normal)
    }
    
    @IBAction func didTapButton() {
        boardManager.showBulletin(above: self)
    }
    
    static func didTapBoardContinue() {
        print("DEBUG: Did tap continue...")
    }
    
    static func didTapBoardSkip() {
        print("DEBUG: Did tap skip...")
    }


}

