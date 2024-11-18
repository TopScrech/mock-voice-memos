import Foundation

struct RecordingCellVM: Identifiable {
    var id: UUID
    
    let name: String
    let recordingTime: String
    let duration: String
}
