//: [Previous - 5. Challenge](@previous)
//: ## Scroll View
//: ### Use stack for scrolling children

import AsyncDisplayKit
import UIKit
import PlaygroundSupport

class TextureViewController: ASViewController<ASDisplayNode> {
    private var scrollChildren: [ASLayoutElement] = []
    
    public init() {
        // this is boiler plate
        let rootNode = ASScrollNode()
        rootNode.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        rootNode.automaticallyManagesContentSize = true
        rootNode.automaticallyManagesSubnodes = true
        super.init(node: rootNode)
        
        self.setupViews()
        
        rootNode.layoutSpecBlock = { [weak self] _, _ -> ASLayoutSpec in
            // will not render what we expect, hmm, how to make the layout spec utilize all available width?
            return ASStackLayoutSpec(direction: .vertical, spacing: 8, justifyContent: .center, alignItems: .stretch, children: self?.scrollChildren ?? [])
        }
    }
    
    private func setupViews() {
        for _ in 1...5 {
            let node = ASDisplayNode()
            node.backgroundColor = self.getColor()
            let height = CGFloat.random(in: 100...300)
            node.style.preferredSize = CGSize(width: 100, height: height)
            
            self.scrollChildren.append(node)
        }
        
        self.node.transitionLayout(withAnimation: true, shouldMeasureAsync: true)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func getColor() -> UIColor {
        let r = CGFloat.random(in: 0...1)
        let g = CGFloat.random(in: 0...1)
        let b = CGFloat.random(in: 0...1)
        
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
}

PlaygroundPage.current.liveView = TextureViewController()
