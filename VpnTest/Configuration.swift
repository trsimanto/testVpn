//
//  Configuration.swift
//  Demo
//
//  Created by Davide De Rosa on 6/13/20.
//  Copyright (c) 2023 Davide De Rosa. All rights reserved.
//
//  https://github.com/keeshux
//
//  This file is part of TunnelKit.
//
//  TunnelKit is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  TunnelKit is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with TunnelKit.  If not, see <http://www.gnu.org/licenses/>.
//

import Foundation
import TunnelKitCore
import TunnelKitOpenVPN
import TunnelKitWireGuard

extension OpenVPN {
    struct DemoConfiguration {
        static let ca = OpenVPN.CryptoContainer(pem: """
-----BEGIN CERTIFICATE-----
MIIB1TCCAXugAwIBAgITTguQvaD40E9wvc26A6CHYAr7wjAKBggqhkjOPQQDAjAe
MRwwGgYDVQQDDBNjbl95c3pSUDZNdG9pMWhPektBMB4XDTIzMDUxMzAwMTIwM1oX
DTMzMDUxMDAwMTIwM1owHjEcMBoGA1UEAwwTY25feXN6UlA2TXRvaTFoT3pLQTBZ
MBMGByqGSM49AgEGCCqGSM49AwEHA0IABHhvy1PPClNubA5px/kURDXA3GiCtMmB
UbwAmNyHa/HGRfTch3XfxlabiNG63nMji2f+wZea4DyXwIEXnrhCzWyjgZcwgZQw
DAYDVR0TBAUwAwEB/zAdBgNVHQ4EFgQUSwSik0cDzhcw7XAOf0OTh6q0kq8wWAYD
VR0jBFEwT4AUSwSik0cDzhcw7XAOf0OTh6q0kq+hIqQgMB4xHDAaBgNVBAMME2Nu
X3lzelJQNk10b2kxaE96S0GCE04LkL2g+NBPcL3NugOgh2AK+8IwCwYDVR0PBAQD
AgEGMAoGCCqGSM49BAMCA0gAMEUCIAwZaN6hDOGFNXaxasvi9jnoEy3aLY7vzEJ4
siXv0Fy6AiEA03PPMPdZwAOYZ2cAAGQn+jg7aN38adPZq1R+ab2KBs0=
-----END CERTIFICATE-----
""")

        static let cert = OpenVPN.CryptoContainer(pem: """
-----BEGIN CERTIFICATE-----
MIIB1jCCAXugAwIBAgIRAL8f2KgPQT0oMM9nRqn+M0UwCgYIKoZIzj0EAwIwHjEc
MBoGA1UEAwwTY25feXN6UlA2TXRvaTFoT3pLQTAeFw0yMzA1MTMwMDU3MjJaFw0y
NTA4MTUwMDU3MjJaMA4xDDAKBgNVBAMMA3VzMjBZMBMGByqGSM49AgEGCCqGSM49
AwEHA0IABFBznDjCcQM8T8yF/hLwnLgnS5rPsKAYamZhOllHbASPY9/apFYHbFDX
mEmiDB8lHzd54SlKFzGZ6aXsZ64Q0yCjgakwgaYwCQYDVR0TBAIwADAdBgNVHQ4E
FgQUAO1ytz3LJrF8XoDp+wHj5IU3MPEwWAYDVR0jBFEwT4AUSwSik0cDzhcw7XAO
f0OTh6q0kq+hIqQgMB4xHDAaBgNVBAMME2NuX3lzelJQNk10b2kxaE96S0GCE04L
kL2g+NBPcL3NugOgh2AK+8IwEwYDVR0lBAwwCgYIKwYBBQUHAwIwCwYDVR0PBAQD
AgeAMAoGCCqGSM49BAMCA0kAMEYCIQDdLyAfSqETBPyCZ5XA3GbUSjsNr075o9qj
R/6wP8T1CgIhAMLpmBSCXqSoglERya33vqy30DKFSTlpmCREFflQqwTr
-----END CERTIFICATE-----
""")

        static let clientKey = OpenVPN.CryptoContainer(pem: """
-----BEGIN PRIVATE KEY-----
MIGHAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBG0wawIBAQQgoUIPxZcpu1iGKIib
rwfDA41LVtfxw/zxuIPwWD4hiXOhRANCAARQc5w4wnEDPE/Mhf4S8Jy4J0uaz7Cg
GGpmYTpZR2wEj2Pf2qRWB2xQ15hJogwfJR83eeEpShcxmeml7GeuENMg
-----END PRIVATE KEY-----
""")

        static let tlsKey = OpenVPN.StaticKey(file: """
# 2048 bit OpenVPN static key
-----BEGIN OpenVPN Static key V1-----
805519f40c28fcbefa8124e54bc3e1a2
f674a238646d0e4e8c43b8d6da8791d4
20fc555132c0692b1005594ac0e799db
1840567f73febd393552a76aaf4ad728
38748a0c93749d50be333766b7fae698
29709e2389712e916caa34d670f8019c
8f38ca4b6f40159f9bab5dda133cd583
8cfd423877cd56403f2324dfbbf21f82
8fa46078d4c87272480f33ddca042b24
b099576a81921d5d7bbeea2a32d06f14
90fb33ec53b0077fe459f9c102dcc5ae
48b85bc8659efc53cd5da1cac7fc53aa
f7518a23a1bb91881d2ae8385dd52762
f99870de451fdf11e664c0f29331e4ad
5d40134a42e86c7a54b7d2aac2a5448a
d44d29ece3360b950400a9f478e75ef1
-----END OpenVPN Static key V1-----
""", direction: .client)!

        struct Parameters {
            let title: String

            let appGroup: String

            let hostname: String

            let port: UInt16

            let socketType: SocketType
        }

        static func make(params: Parameters) -> OpenVPN.ProviderConfiguration {
            var builder = OpenVPN.ConfigurationBuilder()

            builder.ca = ca
            builder.clientCertificate = cert
            builder.clientKey = clientKey
            builder.cipher = .aes256cbc
            builder.digest = .sha512
            builder.compressionFraming = .compLZO
            builder.renegotiatesAfter = nil
            builder.remotes = [Endpoint(params.hostname, EndpointProtocol(params.socketType, params.port))]
            builder.tlsWrap = TLSWrap(strategy: .auth, key: tlsKey)
            builder.mtu = 1350
            builder.routingPolicies = [.IPv4, .IPv6]
            let cfg = builder.build()

            var providerConfiguration = OpenVPN.ProviderConfiguration(params.title, appGroup: params.appGroup, configuration: cfg)
            providerConfiguration.shouldDebug = true
            providerConfiguration.masksPrivateData = false
            return providerConfiguration
        }
    }
}

extension WireGuard {
    struct Parameters {
        let title: String

        let appGroup: String

        let clientPrivateKey: String

        let clientAddress: String

        let serverPublicKey: String

        let serverAddress: String

        let serverPort: String
    }

    struct DemoConfiguration {
        static func make(params: Parameters) -> WireGuard.ProviderConfiguration? {
            var builder: WireGuard.ConfigurationBuilder
            do {
                builder = try WireGuard.ConfigurationBuilder(params.clientPrivateKey)
            } catch {
                print(">>> \(error)")
                return nil
            }
            builder.addresses = [params.clientAddress]
            builder.dnsServers = ["1.1.1.1", "1.0.0.1"]
            do {
                try builder.addPeer(params.serverPublicKey, endpoint: "\(params.serverAddress):\(params.serverPort)")
            } catch {
                print(">>> \(error)")
                return nil
            }
            builder.addDefaultGatewayIPv4(toPeer: 0)
            let cfg = builder.build()

            return WireGuard.ProviderConfiguration(params.title, appGroup: params.appGroup, configuration: cfg)
        }
    }
}




//client
//proto udp
//explicit-exit-notify
//remote 67.205.140.93 1194
//dev tun
//resolv-retry infinite
//nobind
//persist-key
//persist-tun
//remote-cert-tls server
//verify-x509-name server_v4DssPR0iwpom2GJ name
//auth SHA256
//auth-nocache
//cipher AES-128-GCM
//tls-client
//tls-version-min 1.2
//tls-cipher TLS-ECDHE-ECDSA-WITH-AES-128-GCM-SHA256
//ignore-unknown-option block-outside-dns
//setenv opt block-outside-dns # Prevent Windows 10 DNS leak
//verb 3



