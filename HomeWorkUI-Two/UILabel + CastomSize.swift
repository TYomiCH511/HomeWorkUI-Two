//
//  UILabel + CastomSize.swift
//  HomeWorkUI-Two
//
//  Created by Artem on 10/29/20.
//

import UIKit

class IndentOfSide: UILabel {
    override var intrinsicContentSize: CGSize {
        let originalContentSize = super.intrinsicContentSize
        return CGSize(width: originalContentSize.width + 20, height: originalContentSize.height + 10)
   }
}
