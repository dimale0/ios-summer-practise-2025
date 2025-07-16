

import Foundation

class AuthViewModel: ObservableObject {
    @Published var username = ""
    @Published var password = ""
    @Published var currentUser: User? = nil
    @Published var showError = false

    func login() {
        if let user = sampleUsers.first(where: { $0.username == username && $0.password == password }) {
            currentUser = user
            showError = false
        } else {
            showError = true
        }
    }

    func logout() {
        currentUser = nil
        username = ""
        password = ""
        showError = false
    }
}
