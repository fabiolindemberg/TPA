//
//  MainScreenViewController.swift
//  TPANoronha
//
//  Created by Fabio Lindemberg on 27/10/18.
//  Copyright © 2018 Fábio Lindemberg. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {

    @IBOutlet weak var Faixa: UIImageView!
    @IBOutlet weak var PapelParede: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.Faixa.frame = CGRect(x:0, y:100, width:226, height:56)
        UIView.animate(withDuration: 1.5, animations: {
            //self.Faixa.frame = CGRect(x:-226, y:100, width:226, height:56)
            self.Faixa.alpha = 0
            self.PapelParede.alpha = 0.35
        }) {(finished) in
            self.performSegue(withIdentifier: "cadastro", sender: nil)
        }
    }

}
