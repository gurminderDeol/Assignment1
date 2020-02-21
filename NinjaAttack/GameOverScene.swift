

import Foundation
import SpriteKit

class GameOverScene: SKScene {
  var c = UserDefaults.standard
  init(size: CGSize, won:Bool) {
    super.init(size: size)
    backgroundColor = SKColor.white
    //let msg = "Your score = 250"
    let message = won ? "You Won!" : "You Lose :["
    let label = SKLabelNode(fontNamed: "Chalkduster")
    label.text = message
    label.fontSize = 40
    label.fontColor = SKColor.black
    label.position = CGPoint(x: size.width/2, y: size.height/2)
    addChild(label)
    /*let labelscore = SKLabelNode(fontNamed: "Chalkduster")
    labelscore.text = msg
    labelscore.fontSize = 40
    labelscore.fontColor = SKColor.black
    labelscore.position = CGPoint(x: size.width/2, y: size.height/2-50)
    addChild(labelscore)*/
 
       let label0 = SKLabelNode(fontNamed: "Chalkduster")
    label0.text=self.c.string(forKey: "currentplayer")! + " " + self.c.string(forKey: "level")!  + "   score= " + self.c.string(forKey: "score")!
       
                       label0.fontSize = 20
                       label0.fontColor = SKColor.black
                       label0.position = CGPoint(x: size.width/2, y: size.height/4)
    self.addChild(label0)
        
      let seconds = 3.0
           DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
               // Put your code which should be executed with a delay here
               let storyboard = UIStoryboard(name: "Main", bundle: nil)
                           let appDelegate = UIApplication.shared.delegate as! AppDelegate
                           let homeVC = storyboard.instantiateViewController(withIdentifier: "start") as! StartViewController
                           //Below's navigationController is useful if u want NavigationController in the destination View
                           let navigationController = UINavigationController(rootViewController: homeVC)
                           appDelegate.window!.rootViewController = navigationController
           }
          
        
    /*    func changeScene(){
            let secondScene = GameScene(size: self.size)
            secondScene.scaleMode = scaleMode
            secondScene.object = somethingInFirstSceneThatNeedToBePassed //here we do the passing
            let transition = SKTransition.fadeWithDuration(0.5)
            self.view?.presentScene(secondScene, transition: transition)
        }
    
      
    
     }*/
      }
       
    
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}
}
