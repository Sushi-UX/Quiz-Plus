//
//  FrontPageViewController.swift
//  Quiz Plus
//
//  Created by Raymond Choy on 7/8/19.
//  Copyright © 2019 thechoygroup. All rights reserved.
//

import UIKit

class FrontPageViewController: UIViewController {

    @IBAction func StartPress(_ sender: Any) {
        performSegue(withIdentifier: "startToQuiz", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
