

import UIKit

class ViewController: UIViewController {
    
    var questions: [Question] = QuestionBank().questions
    var progressIndex: Int = 0
    var score: Int = 0
    @IBOutlet weak var questionLabel: UILabel!       // sorular için label tanımlama
    @IBOutlet weak var scoreLabel: UILabel!           //score için label tanımlama
    @IBOutlet var progressBar: UIView!                 //ilerleme çubuğu tanımlama
    @IBOutlet weak var progressLabel: UILabel!          //soruların ilerleme sayısı tanımlama
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        var pickedAnswer: Bool
        
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else {
            pickedAnswer = false                    //doğru-yanlış button tanımlama
        }
        
        checkAnswer(pickedAnswer: pickedAnswer)     //sıradaki soruya geçme
        nextQuestion()
    }
    
    func updateUI() {
        questionLabel.text = questions[progressIndex].question
        updateCompletionLabel()                                   //soru sayısı arttıkça ilerleme sayısını arttırır.
        updateScoreLabel()
        progressBar.frame.size.width = (view.frame.size.width / CGFloat(questions.count)) * CGFloat(progressIndex + 1)
    }
    
    func nextQuestion() {
        progressIndex += 1
        if progressIndex == questions.count {
            showAlertUI()                             //sıradaki soruyu çağırma
        }  else {
            updateUI()
        }
    }
    
    func checkAnswer(pickedAnswer: Bool) {
        let expectedAnswer = questions[progressIndex].answer
        if expectedAnswer == pickedAnswer {
            print("Correct answer, progressIndex: \(progressIndex)")
            ProgressHUD.showSuccess("Correct")
            score += 10
        } else {                                                         //soruyu cevapladığımızda doğru-yanlış kontrolü
            print("Wrong answer, progressIndex: \(progressIndex)")
            ProgressHUD.showError("Wrong!")
            score -= 10
        }
    }
    
    func startOver() {
        progressIndex = 0
        score = 0
        updateUI()
    }
    
    func showAlertUI() {
        let alert = UIAlertController(
            title: "Awesome",
            message: "U have completed all the questions, wanna start again?",    //Soruları doğru bir şekilde tamamladığımızda gelen bildirim.
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "Restart",
            style: .default,                      //tekrar başlamak için gelen bildirim
            handler: { (UIAlertAction) in
                self.startOver()
            }
        )
        alert.addAction(action)
        present(alert, animated: true, completion: nil)   //doğru bildiğimizde gelen anımasyon
    }
    
    func updateCompletionLabel() {
        let current = progressIndex + 1
        let total = questions.count                             //sorular tamamlaındığında gelen etiket
        progressLabel.text = "\(current)/\(total)"
    }
    
    func updateScoreLabel() {
        scoreLabel.text = "Score: \(score)"           //soru puanının skora eklenmesi
    }
}
