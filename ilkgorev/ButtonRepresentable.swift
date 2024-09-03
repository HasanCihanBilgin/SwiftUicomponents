import SwiftUI

protocol ButtonRepresentable {
    var type: ButtonType { get }
    var size: ButtonSize { get }
    var title: String? { get }
    var icon: Image? { get }
    var disabled: Bool { get }
    var action: () -> Void { get }
    var backgroundImage: Image? { get }
}
