//: [Previous - 1. Introduction](@previous)
//: ## 2. Layout Spec
//: ### Think of it like flex layout system, but with more power

// no code in this section

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


//: [Next - 3. Simple Layout](@next)
