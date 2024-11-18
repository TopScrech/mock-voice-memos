import SwiftUI

struct RecordButtonView: View {
    var clickHandler: OnClickHandler
    
    var body: some View {
        ZStack {
            Button(action: clickHandler) {
                Text("")
                    .padding()
            }
            .frame(width: 50, height: 50)
            .foregroundColor(.black)
            .background(.red)
            .clipShape(.circle)
            
            Circle()
                .strokeBorder(.gray, lineWidth: 3)
        }
        .frame(width: 62, height: 62)
    }
}

#Preview {
    RecordButtonView {}
        .previewLayout(.sizeThatFits)
}
