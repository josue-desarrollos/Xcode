import SpriteKit

class GameScene: SKScene
{
    let fondo = SKSpriteNode(imageNamed: "fondo2")
    //let num1 = SKSpriteNode(imageNamed: "Spaceship")
    var num1 = SKSpriteNode(imageNamed: "Spaceship")
    let flash2 = SKSpriteNode(imageNamed: "Spaceship")

    override func didMove(to view: SKView)
    {
        fondo.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        num1.position = CGPoint(x: 0, y: -3600)
        num1.size = CGSize(width: 100, height: 100)
        fondo.zPosition = -1

        addChild(fondo)
        fondo.addChild(num1)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        num1.texture = SKTexture(imageNamed: "Spaceship")
        num1.run(SKAction.move(to: CGPoint(x: 0, y: fondo.size.height), duration: 5))
        self.num1.position = CGPoint.zero

    }

    override func update( _ currentTime: CFTimeInterval)
    {
        num1.position = CGPoint(x: 0, y: -360)
    }
}
