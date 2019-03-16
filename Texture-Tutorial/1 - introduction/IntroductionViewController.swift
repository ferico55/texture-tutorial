//
//  IntroductionViewController.swift
//  Texture-Tutorial
//
//  Created by Ferico Samuel on 15/03/19.
//  Copyright © 2019 Tokopedia. All rights reserved.
//

import AsyncDisplayKit
import Foundation

//public class UIIntroductionViewController: UIViewController {
//
//}

public class IntroductionViewController: ASViewController<ASDisplayNode> {
    private let rootNode = ASDisplayNode()
    
    public init() {
//        rootNode.automaticallyManagesSubnodes = true
        super.init(node: rootNode)
        
        rootNode.layoutSpecBlock = { _, _ -> ASLayoutSpec in
            return ASLayoutSpec()
        }
        
//        rootNode.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    private func setupRedNode() {
        let redNode = ASDisplayNode()
        rootNode.addSubnode(redNode)
        
        redNode.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
