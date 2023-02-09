//
//  ViewController.swift
//  BlackHistoryMonth
//
//  Created by 4d on 2/7/23.
//

import UIKit

class ViewController: UIViewController {
    var random = 0
    var numero = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        random = getRandom()
        
        thePerson.image = theArray[random].image
        
        infoBox.text = theArray[random].fact
        Nexts.isHidden  = true
        
        
    }
    
    @IBOutlet var thePerson: UIImageView!
    
    @IBOutlet var urScore: UILabel!
    @IBOutlet var Nexts: UIButton!
    @IBOutlet var infoBox: UITextView!
       
    @IBAction func Next(_ sender: Any) {
        
        random = getRandom()
        thePerson.image = theArray[random].image
        
        infoBox.text = theArray[random].fact
       // Nexts.isHidden  = true
        Label.text = ""
    }
    
    @IBOutlet var AnswerField: UITextField!
    
    
    
    @IBOutlet var Label: UILabel!
    
    func getRandom() -> Int
    {
        random =  Int.random(in: 0..<theArray.count)
        
        return random
    }
    
    
    @IBAction func checkAnswer(_ sender: Any) {
        if theArray[random].answer == AnswerField.text
            
        {
            Label.text = "Correct!"
            Nexts.isHidden  = false
            AnswerField.text = ""
            numero += 1
            urScore.text = "\(numero) / 5"
            

        }
        else {
            Label.text = "Incorrect"
        }
    }
    
    var theArray: [Game] = [Game(fact: "I was an American track and field athlete who won four gold medals at the 1936 Olympic Games. I specialized in the sprints and the long jump and was recognized in his lifetime as perhaps the greatest and most famous athlete in track and field history.", image: #imageLiteral(resourceName: "bhm1"), answer: "Jesse Owens", color: .green), Game(fact: "I was the driving force behind watershed events such as the Montgomery Bus Boycott and the 1963 March on Washington, which helped bring about such landmark legislation as the Civil Rights Act and the Voting Rights Act. I was awarded the Nobel Peace Prize in 1964 and most notably, my famous 'I have a dream' speech.", image: #imageLiteral(resourceName: "bhm2"), answer: "Martin Luther King Jr", color: .brown), Game(fact: "I was well known as one of the foremost Black intellectuals of my era. I was the first Black American to earn a PhD from Harvard University, and published widely before becoming NAACP's director of publicity and research and starting the organization's official journal, The Crisis, in 1910.", image: #imageLiteral(resourceName: "bhm3"), answer: "William Edward Burghardt Du Bois", color: .cyan), Game(fact: "I was an American activist in the civil rights movement best known for my pivotal role in the Montgomery bus boycott. The United States Congress has honored me as the first lady of civil rights and the mother of the freedom movement.", image: #imageLiteral(resourceName: "bhm4"), answer: "Rosa Parks", color: .red), Game(fact: "I was an African American leader in social movements for civil rights, socialism, nonviolence, and gay rights. I worked with A. Philip Randolph on the March on Washington Movement, in 1941, to press for an end to racial discrimination in employment.", image: #imageLiteral(resourceName: "bhm5"), answer: "Bayard Rustin", color: .magenta)]
    
   
}

