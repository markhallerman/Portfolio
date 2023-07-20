import Foundation

extension AwardsView {
    class ViewModel: ObservableObject {
        let dataController: DataController

        init(dataController: DataController) {
            self.dataController = dataController
        }

        func color(for award: Award) -> String? {
            dataController.hasEarned(award: award) ? award.color : nil
        }

        func label(for award: Award) -> String {
            dataController.hasEarned(award: award) ? "Unlocked: \(award.name)" : "Locked"
        }

        func hasEarned(award: Award) -> Bool {
            dataController.hasEarned(award: award)
        }
    }
}
