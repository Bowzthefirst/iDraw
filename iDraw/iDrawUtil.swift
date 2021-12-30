//
//  iDrawUtil.swift
//  iDraw
//
//  Created by Alexander Bowser on 12/29/21.
//

import Foundation
import GroupActivities
import PencilKit

enum iDrawMessageType: Codable {
case join(drawing: PKDrawing)
case draw(drawing: PKDrawing)
    case undo
    case clear
}
struct iDrawActivity: GroupActivity {
    var metadata: GroupActivityMetadata {
        var metadata = GroupActivityMetadata()
        metadata.type = .generic
        metadata.title = "iDraw Online"
        metadata.previewImage = UIImage(systemName: "hand.draw")?.cgImage
        return metadata
    }
}
