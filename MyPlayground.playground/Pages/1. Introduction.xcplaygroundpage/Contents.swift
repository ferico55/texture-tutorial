//: # Welcome to Texture (Async Display Kit) Tutorial
//: ## 1. Introduction
//: ### It is *super* simple to use texture

import AsyncDisplayKit
import UIKit
import PlaygroundSupport

// use this to toggle between UIKit and Texture approach
let isUsingTexture = true

class TextureViewController: ASViewController<ASDisplayNode> {
    public init() {
        // this is boiler plate
        let rootNode = ASDisplayNode()
        rootNode.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        super.init(node: rootNode)
        
        // this is how we add subnode
        let subnode = ASDisplayNode()
        subnode.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
        subnode.backgroundColor = #colorLiteral(red: 0.6349999905, green: 0.8119999766, blue: 0.3880000114, alpha: 1)
        rootNode.addSubnode(subnode)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


class UIKitViewController: UIViewController {
    override func loadView() {
        // this is boiler plate
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        // this is how we add subview
        let subview = UIView()
        subview.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
        subview.backgroundColor = #colorLiteral(red: 0.6349999905, green: 0.8119999766, blue: 0.3880000114, alpha: 1)
        view.addSubview(subview)
    }
}

let vc = isUsingTexture ? TextureViewController() : UIKitViewController()
PlaygroundPage.current.liveView = vc
