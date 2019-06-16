//: [Previous - 2. Layout Spec](@previous)

//: ## 2A. Hello Node
//: ### Let's get to know various node available for us!

import AsyncDisplayKit
import UIKit
import PlaygroundSupport

class TextureViewController: ASViewController<ASDisplayNode> {
    public init() {
        // this is boiler plate
        let rootNode = ASDisplayNode()
        rootNode.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        rootNode.automaticallyManagesSubnodes = true
        super.init(node: rootNode)
        
        rootNode.layoutSpecBlock = { _, _ -> ASLayoutSpec in
            return ASLayoutSpec()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

PlaygroundPage.current.liveView = TextureViewController()

//: [Next - 3. Simple Layout](@next)
