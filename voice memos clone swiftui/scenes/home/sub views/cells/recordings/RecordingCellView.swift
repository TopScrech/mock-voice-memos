import ScrechKit

struct RecordingCellView: View {
    var recording: RecordingCellVM
    
    var body: some View {
        VStack {
            HStack {
                Text(recording.name)
                    .headline()
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                
                Spacer()
            }
            
            HStack {
                Text(recording.recordingTime)
                    .footnote()
                    .foregroundColor(AppTheme.textSecondary)
                
                Spacer()
                
                Text(recording.duration)
                    .footnote()
                    .foregroundColor(AppTheme.textSecondary)
            }
        }
    }
}

#Preview {
    let recordingMock = PreviewHelpers.mockRecordingsVMs[0]
    
    RecordingCellView(recording: recordingMock)
        .previewLayout(.sizeThatFits)
}
