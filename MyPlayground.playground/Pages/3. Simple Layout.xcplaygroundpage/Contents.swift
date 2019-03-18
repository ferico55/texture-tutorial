//: [Previous - 2. Layout Spec](@previous)
//: ## 3. Simple Layout
//: ### Let's start by making following UI
//: ![first simple layout](firstLayout.png)

import AsyncDisplayKit
import UIKit
import PlaygroundSupport

class TextureViewController: ASViewController<ASDisplayNode> {
    private let placeNameTextNode = ASTextNode()
    private let cityNameTextNode = ASTextNode()
    private let etaTextNode = ASTextNode()
    
    public init() {
        // this is boiler plate
        let rootNode = ASDisplayNode()
        rootNode.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        super.init(node: rootNode)
        
        // 1. setup your labels text & style here
        
        
        // 2. don't forget to add them as subnode to the `rootNode`
        rootNode.addSubnode(placeNameTextNode)
        // add the rest here
        
        rootNode.layoutSpecBlock = { _, _ -> ASLayoutSpec in
            // 3. create your layout spec
            return ASLayoutSpec()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

PlaygroundPage.current.liveView = TextureViewController()

//: [Next](@next)
