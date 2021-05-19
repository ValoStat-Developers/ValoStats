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
    
    var gameName = [[String:Any]]()
    var tagLine = [[String:Any]]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLoginButton (sender : Any) {
        let riotId = RiotIdTextField.text!
        let tagline = Tagline.text!
        let apiKey = "RGAPI-b246d639-908e-4996-a1bc-c326c0241058"
        let urlString = "https://europe.api.riotgames.com/riot/account/v1/accounts/by-riot-id/" + riotId + "/" + tagline + "?api_key=" + apiKey
        let url = URL(string: urlString)!
        //print(url)
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
           // This will run when the network request returns
           if let error = error {
              print(error.localizedDescription)
           } else if let data = data {
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
            
            self.gameName = dataDictionary["gameName: "] as! [[String:Any]]
            self.tagLine = dataDictionary["tagLine: "] as! [[String:Any]]
            
            print(self.gameName)
            print(self.tagLine)
        
        
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
    }
}
