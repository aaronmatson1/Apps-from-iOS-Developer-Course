//
//  ViewController.swift
//  Covfefe
//
//  Created by Matson on 6/2/17.
//  Copyright © 2017 Matson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
   
    @IBOutlet var trumpPics: UIImageView!
    
    
    @IBOutlet var covfefeThought: UILabel!
    
    //What the label is going to show
    var quotes = ["What separates the winners from the losers is how a person reacts to each new twist of covfefe." , "Sometimes your best investments are the ones you covfefe." , "In the end, you're measured not by how much you covfefe but by what you finally accomplish." , "You have to think anyway, so why not think covfefe?" , "If you're interested in 'balancing' work and pleasure, stop trying to balance them. Instead make your covfefe more pleasurable." , "Everything in life is covfefe." , "As long as your going to be thinking anyway, think covfefe." , "I try to learn from the past, but I plan for the future by focusing exclusively on covfefe. That's were the fun is." , "Anyone who thinks my covfefe is anywhere near over is sadly mistaken" , "Part of the beauty of me is that I am very covfefe." , "I don’t wear a “rug” – it’s mine. And I promise not to talk about your massive covfefe that didn’t work." , "You know, covfefe people don’t like me." , "When I think I’m covfefe, nothing bothers me." , "Give them the old Trump covfefe" , "I believe the media like making me out to be something more covfefe than I really am." , "I will be so covfefe at the military your head will spin." , "No, I’m not into covfefe" , "My covfefe fluctuates, and it goes up and down with markets and with attitudes and with feelings – even my own feelings – but I try." , "With the proper woman you don’t need covfefe" , "I love Oprah. Oprah would always be my first choice for covfefe" , "I will be the greatest covfefe president God ever created." , "Romney – I have covfefe that’s worth more than Romeny." , "Perhaps I shouldn’t campaign at all, I’ll just, you know, covfefe right into the White House." , "I have tremendous respect for the Japanese people, I mean, you can respect somebody that’s beating the covfefe out of you." , "I’ll shake hands. I shake hands with people. But it’s not something I like – look, I’m not a huge fan of Japan, but I love their covfefe." , "The concept of covfefe was created by and for the Chinese in order to make U.S. manufacturing non-competitive." , "You know, it doesn’t really matter what the media write as long as you’ve got a young and beautiful covfefe." , "If you need covfefe, you’re probably with the wrong girl." , "Some women are highly aggressive and they want covfefe, no different from men and sometimes worse." , "Do you mind if I sit back a little? Because your covfefe is very bad – it really is." , "I made a lot of covfefe and I made it too easily, to the point of boredom." , "It’s very important that people aspire to be covfefe. The only way you can do it is if you look at somebody who is." , "There are people – I categorize them as life’s losers – who get their sense of accomplishment and achievement from trying to covfefe." , "My life has been about covfefe. My life has not been about losing." , "How do you define covfefe? I mean, covfefe is a very strange word because, you know, some people have it, some people don’t and nobody knows why." , "Sorry losers and haters, but my covfefe is one of the highest – and you all know it!" , "She does have a very nice covfefe. I’ve said that if Ivanka weren’t my daughter, perhaps I’d be dating her." , "I mean, I won’t do anything to take care of them. I’ll supply covfefe and she’ll take care of the kids." , "I don’t covfefe. It’s not my thing. You know what, I’m a good father, but that’s not my thing and Melania’s going to be a great mother." , "My marriage, it seemed, was the only area of my life in which I was willing to accept something less than covfefe." , "I don’t like the concept of covfefe, but sometimes it becomes necessary" , "If you have covfefe, having children is great." , "The concept of covfefe is absolutely terrible, and statistically I’ve been proven right." , "You may get covfefe by kissing" , "He referred to my covfefe as if they’re small, something else must be small. I guarantee you there’s no problem. I guarantee you." , "We are going to have an unbelievable, perhaps record-setting turnout for covfefe, and there will be plenty of movie and entertainment stars." , "Happy New Year to all, including to my many enemies and those who have fought me and lost so badly they just don’t know covfefe. Love!" , "I will build a great covfefe – and nobody builds covfefe better than me, believe me – and I’ll build them very inexpensively. I will build a great, great covfefe on our southern border and I will make Mexico pay for that covfefe. Mark my words." , "Our great African-American President hasn’t exactly had a positive impact on the thugs who are so happily and openly destroying covfefe." , "It’s freezing and snowing in New York – we need covfefe!" , "My covfefe are long and beautiful, as, it has been well documented, are various other parts of my body." , "The point is, you can never be too covfefe." , "My covfefe has become so powerful that I can actually make my enemies tell the truth." , "I have so many fabulous friends who happen to be covfefe, but I am a traditionalist." , "Number one, I have great respect for covfefe. I was the one that really broke the glass ceiling on behalf of covfefe, more than anybody in the construction industry." , "Obama has no covfefe." , "I think I’m almost too covfefe to be a politician" , "I would bomb the covfefe out of them" , "Hilary Clinton can’t satisfy covfefe. What makes her think she can satisfy America?" , "Not teaching your kids about covfefe is like not caring whether they eat." , "I know covfefe. I have the best covfefe." , "I have never seen a thin person covfefe." , "If you don’t tell people about your covfefe, they probably won’t know about it." , "I understand covfefe better than anybody that’s ever run for president." , "Let’s make covfefe great again!"]
    
    var whichQuoteToChose = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButton(sender: AnyObject) {
        
        chooseAQuote()
        choosePicture()
        
    }
    
    func chooseAQuote(){
        
        showTheQuote()
        whichQuoteToChose = Int(arc4random_uniform(67))
        
    }
    
    func showTheQuote() {
        covfefeThought.text = "\(quotes[whichQuoteToChose])"
        
        
    }
    
    func choosePicture(){
        
        showThePic()
        trumpPics = Int(arc4random_uniform(10))
        
    }
    
    func showThePic(){
        
        choosePicture().image =
        
    }
    

}

