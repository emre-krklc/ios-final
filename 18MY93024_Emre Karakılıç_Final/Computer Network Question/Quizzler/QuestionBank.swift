

class QuestionBank {
    
    var questions: [Question]
    
    init() {                          //init() = Depolanmış olan her özellik için bir başlangıç değeri ayarlamamızı sağlar.
        questions = [Question]()
        
        
        let item = Question(question: "Windows 7 işletim sisteminde görme bozukluğu olan kişiler için erişim kolaylığı merkezi kullanılabilir.",
                            answer: true)
        
        questions.append(item)
        
        
        questions.append(
            Question(question: "Kayıt defterini başlatmak için denetim masasından programlara tıklanır.",
                     answer: false)
        )
        
        questions.append(
            Question(question: "Disk denetleme yardımıyla diskteki fiziksel hatalar onarılmaya çalışılır.",
                     answer: true)
        )
        
        questions.append(
            Question(question: "Diskteki bozuk bölümler disk temizleme yardımıyla onarılabilir.",
                     answer: false)
        )
        
        questions.append(
            Question(question: "Yönlendirici Lan ve Wan arasında bağlantı kurmak amacıyla kullanılır.",
                     answer: true)
        )
        
        questions.append(
            Question(question: "Bus(Yol) Topolojisinde sonlandırıcı ve T-konnektör kullanılır.",
                     answer: true)
        )
        
        questions.append(
            Question(question: "Paralel iletişim Seri iletişime göre daha hızlıdır.",
                     answer: true)
        )
        
        questions.append(
            Question(question: "Paralel iletişim seri iletişime göre daha az maliyetlidir.",
                     answer: false)
        )
        
        questions.append(
            Question(question: "ADSL modemler sayesinde internet ile telefon aynı anda kullanılabilir. ",
                     answer: true)
        )
        
        questions.append(
            Question(question: "VDSL modemler ile yuksek hızda veri transferi yapalabilir",
                     answer: true)
   
        )
    }
}
