import UIKit
import SpriteKit

class GameViewController: UIViewController
{

    override func viewDidLoad()
    {
        if let View = self.view as! SKView?
        {
            let scene = GameScene(size: View.bounds.size)
            scene.scaleMode = .aspectFill
            View.presentScene(scene)
            View.ignoresSiblingOrder = true
            View.showsFPS = true
            View.showsNodeCount = true
            View.showsPhysics = true
        }
    }
}
