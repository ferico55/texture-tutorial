//: [Previous - 3. Simple Layout](@previous)
//: ## Updating Data
//: ### Let's learn about how to dynamically change data of the node on the fly

import AsyncDisplayKit
import UIKit
import PlaygroundSupport

class SampleImageNode: ASDisplayNode {
    private let imageNode = ASNetworkImageNode()
    private let textNode = ASTextNode()
    
    init(imageUrl: URL?, caption: String) {
        super.init()
        self.automaticallyManagesSubnodes = true

        imageNode.url = imageUrl
        textNode.attributedText = NSAttributedString(string: caption)
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        return ASStackLayoutSpec(direction: .vertical,
                                 spacing: 4,
                                 justifyContent: .center,
                                 alignItems: .center,
                                 children: [imageNode, textNode])
    }
}

let url1 = URL(string: "https://banner2.kisspng.com/20180823/sbf/kisspng-stuart-the-minion-kevin-the-minion-minions-despica-minion-sticker-by-mishustina2-2-5b7f5d9c21e0e4.9861923915350736921388.jpg")
let caption1 = "minion standard"
let url2 = URL(string: " https://www.partyrama.co.uk/wp-content/uploads/2017/06/minion-prison-banana-lifesize-cardboard-cutout-84cms-product-image.jpg")
let caption2 = "minion pisang"

class TextureViewController: ASViewController<ASDisplayNode> {
    private var sampleNode: SampleImageNode?
    
    public init() {
        let rootNode = ASDisplayNode()
        rootNode.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        super.init(node: rootNode)
        
        sampleNode = SampleImageNode(imageUrl: url1, caption: caption1)
        
        rootNode.layoutSpecBlock = { [weak self] _, _ -> ASLayoutSpec in
            guard let self = self,
                let sampleNode = self.sampleNode else {
                    return ASLayoutSpec()
            }

            return ASWrapperLayoutSpec(layoutElement: sampleNode)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            // TODO: try to update the url and caption here
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

PlaygroundPage.current.liveView = TextureViewController()

//: [Next - 5. Challenge](@next)
