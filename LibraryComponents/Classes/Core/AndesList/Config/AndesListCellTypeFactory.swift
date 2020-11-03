//
//  AndesListCellSizeFactory.swift
//  AndesUI
//
//  Created by Jonathan Alonso Pinto on 22/10/20.
//

import Foundation

class AndesListCellTypeFactory {
    static func provide(withSize size: AndesListSize,
                        subTitleIsEmpty: Bool, thumbnail: AndesThumbnail? = nil) -> AndesListCellTypeProtocol {

        switch size {
        case .large:
            return AndesListCellLargeType(subTitleIsEmpty: subTitleIsEmpty, thumbnail: thumbnail)
        case .small:
            return AndesListCellSmallType(withThumbnail: thumbnail)
        case .medium:
            return AndesListCellMediumType(subTitleIsEmpty: subTitleIsEmpty, thumbnail: thumbnail)
        }
    }
}