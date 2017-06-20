//
//  Session.swift
//  MyApp
//
//  Created by DaoNV on 3/7/16.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import SAMKeychain

final class Session {

    init() { }

    struct Credential: CustomStringConvertible {
        let name: String
        let pass: String

        var isValid: Bool {
            return !name.isEmpty && !pass.isEmpty
        }

        var description: String {
            guard isValid, let base64 = "\(name):\(pass)".base64(.encode) else { return "" }
            return "Basic \(base64)"
        }
    }

    var credential = Credential(name: "", pass: "") {
        didSet {
            saveCredential()
        }
    }

    func loadCredential() {
        let host = Api.Path.baseURL.host
        guard let accounts = SAMKeychain.accounts(forService: host)?.last,
            let account = accounts[kSAMKeychainAccountKey] as? String else { return }

        guard let password = SAMKeychain.password(forService: host, account: account) else { return }
        credential = Credential(name: account, pass: password)
    }

    private func saveCredential() {
        guard credential.isValid else { return }
        let host = Api.Path.baseURL.host
        SAMKeychain.setPassword(credential.pass, forService: host, account: credential.name)
    }

    func clearCredential() {
        credential = Credential(name: "'", pass: "")
        let host = Api.Path.baseURL.host
        guard let accounts = SAMKeychain.accounts(forService: host) else { return }
        for account in accounts {
            if let account = account[kSAMKeychainAccountKey] as? String {
                SAMKeychain.deletePassword(forService: host, account: account)
            }
        }
    }

    func reset() {
        clearCredential()
    }
}
