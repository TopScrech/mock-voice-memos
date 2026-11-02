import SwiftUI

struct StopButtonView: View {
    var clickHandler: OnClickHandler
    
    var body: some View {
        ZStack {
            Button(action: clickHandler) {
                Text("")
                    .padding()
            }
            .frame(width: 25, height: 25)
            .foregroundColor(.black)
            .background(.red)
            .clipShape(.rect)
            .cornerRadius(5)
            
            
            Circle()
                .strokeBorder(.gray, lineWidth: 3)
        }
        .frame(width: 62, height: 62)
    }
}

@available(iOS 17.0, *)
#Preview(traits: .sizeThatFitsLayout) {
    StopButtonView {}
}
