//
//  LoginViewController.swift
//  ValoStats
//
//  Created by Victor Dai on 4/22/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var RiotIdTextField: UITextField!
    @IBOutlet weak var Tagline: UITextField!
    @IBOutlet weak var LoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLoginButton (sender : Any) {
        let riotId = RiotIdTextField.text!
        let tagline = Tagline.text!
        let apiKey = "RGAPI-64bb0f96-e4af-4b3d-b5f4-7d78a26d969d"
        let url = "https://europe.api.riotgames.com/riot/account/v1/accounts/by-riot-id/" + riotId + "/" + tagline + "?api_key=" + apiKey
        print(url)
    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
