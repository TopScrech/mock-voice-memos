import SwiftUI

extension View {
    func bottomSheet<Content: View>(
        isPresented:Binding<Bool>,
        @ViewBuilder content: @escaping () -> Content,
        onClose: @escaping ()->()
    ) -> some View {
        self
            .background(BottomSheetHelper(
                isPresented: isPresented,
                content: content(),
                onClose: onClose
            ))
    }
}
