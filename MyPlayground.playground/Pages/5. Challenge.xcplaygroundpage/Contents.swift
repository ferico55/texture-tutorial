//: [Previous - 4. Updating Data](@previous)
//: ## 5. Challenge
//: ### Feel free to work on this at home
//: ### Now, let's try replicate this UI using texture
//: [👀See the zeplin here](https://app.zeplin.io/project/5735e0a06a7cadd35a3a1dad/screen/5aacb9a09658cdc34fcab34f)

import AsyncDisplayKit
import UIKit
import PlaygroundSupport

class TextureViewController: ASViewController<ASDisplayNode> {
    public init() {
        // this is boiler plate
        let rootNode = ASDisplayNode()
        rootNode.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
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

//: [Next - 6. Scroll View](@next)
