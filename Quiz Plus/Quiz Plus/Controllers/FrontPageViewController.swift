//
//  FrontPageViewController.swift
//  Quiz Plus
//
//  Created by Raymond Choy on 7/8/19.
//  Copyright © 2019 thechoygroup. All rights reserved.
//

import UIKit

class FrontPageViewController: UIViewController {
    
    var quizModule: Quiz = Quiz.init()

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
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "startToQuiz"){
            var seg = segue.destination as! QuizViewController
            seg.quizModule = self.quizModule
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
   

}
