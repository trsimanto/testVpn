//
//  ContentView.swift
//  VpnTest
//
//  Created by REEA on 14/6/23.
//

import SwiftUI
import TunnelKitOpenVPNAppExtension
import TunnelKitCore
import TunnelKitManager
import TunnelKitOpenVPN







struct ContentView: View {

    @State var status = ""

    var body: some View {
        ZStack{
            VStack{
                Text(status)
                Button("Show details") {
                    Task{
                        await connect()
                    }


                }
            }


        }
    }

    func connect() async {

        let appGroup = "group.com.towhid.VpnTest"

        let tunnelIdentifier = "com.towhid.VpnTest.test"

        let vpn = NetworkExtensionVPN()

        var vpnStatus: VPNStatus = .disconnected

        let keychain = Keychain(group: appGroup)

        var cfg: OpenVPN.ProviderConfiguration?



        let credentials = OpenVPN.Credentials("test", "abcd")
        cfg = OpenVPN.DemoConfiguration.make(params: .init(
            title: "TunnelKit.OpenVPN",
            appGroup: appGroup,
            hostname: "",
            port: UInt16("8000")!,
            socketType: .tcp
        ))
        cfg?.username = credentials.username

        let passwordReference: Data
//        do {
//            passwordReference = try keychain.set(password: credentials.password, for: credentials.username, context: tunnelIdentifier)
//        } catch {
//            print("Keychain failure: \(error)")
//            return
//        }

                var extra = NetworkExtensionExtra()
               // extra.passwordReference = passwordReference

                do {
                    try await vpn.reconnect(
                        tunnelIdentifier,
                        configuration: cfg!,
                        extra: extra,
                        after: .seconds(2)
                    )
                } catch {
                    print("VPN reconnection failed: \(error)")
                }





    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
