//: [Previous - 1. Introduction](@previous)
//: ## 2. Layout Spec
//: ### Think of it like flex layout system, but with more power
//: [See full docs here](http://texturegroup.org/docs/layout2-layoutspec-types.html)

/*:
The very simple form of layout spec
 
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
      return ASWrapperLayoutSpec(layoutElement: _subnode)
    }
*/


/*:
Let's get to know with some of them
 - Wrapper Layout Spec
 ````
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
      return ASWrapperLayoutSpec(layoutElement: _subnode)
    }
 ````
 - Inset Layout Spec
 ````
     override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
       let insets = UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
       return ASInsetLayoutSpec(insets: insets, child: textNode)
     }
 ````
 - Stack Layout Spec
 ````
     override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
       return ASStackLayoutSpec(direction: .horizontal,
                                spacing: 6.0,
                                justifyContent: .start,
                                alignItems: .center,
                                children: [titleNode, subtitleNode])
     }
 ````
*/

import AsyncDisplayKit
import UIKit
import PlaygroundSupport

class MyNode: ASDisplayNode {
    let redChild = ASDisplayNode()
    let blueChild = ASDisplayNode()
    
    override init() {
        super.init()
        
        redChild.backgroundColor = .red
        redChild.style.preferredSize = CGSize(width: 100, height: 100)
        blueChild.backgroundColor = .blue
        blueChild.style.preferredSize = CGSize(width: 100, height: 100)
        
        self.automaticallyManagesSubnodes = true
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        return ASLayoutSpec()
    }
}

class TextureViewController: ASViewController<ASDisplayNode> {
    public init() {
        let rootNode = ASDisplayNode()
        rootNode.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        super.init(node: rootNode)
        
        rootNode.automaticallyManagesSubnodes = true
        rootNode.layoutSpecBlock = { _, _ -> ASLayoutSpec in
            return ASLayoutSpec()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

let vc = TextureViewController()
PlaygroundPage.current.liveView = vc


//: [Next - 2A. Hello Node](@next)
