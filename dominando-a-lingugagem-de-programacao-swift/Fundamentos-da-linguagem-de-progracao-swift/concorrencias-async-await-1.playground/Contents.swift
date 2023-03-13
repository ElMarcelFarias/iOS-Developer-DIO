import UIKit
import CoreFoundation

/*
let startTime = CFAbsoluteTimeGetCurrent()
DispatchQueue.global().sync {
    for i in 0...10 {
        print("Fui \(i)")
    }
}

DispatchQueue.global().sync {
    for i in 0...10 {
        print("voltei \(i)")
    }
}
 
*/



/*
DispatchQueue.main.sync {
    // Executando na main thread
}
 */


//funcoes assincronas

/*

func fetchUserId(from server: String) async -> Int {
    if server == "primary" {
        return 97
    }
    return 501
}


func fetchUserName(from server: String) async -> String {
    let userId = await fetchUserId(from: server)
    if userId == 501 {
        return "Marcel Leite de Farias"
    }
    return "Convidado"
}

func connectUser(to server: String) async  {
    
    async let userId = fetchUserId(from: server)
    async let userName = fetchUserName(from: server)
    let greeting = await "Olá \(userName), userId \(userId)"
    print(greeting)
}


Task {
    await connectUser(to: "primary")
}

*/

let gallery = [
    "Summer Vaction": ["praia.png","campo.png","zoo.png","shopping.png"],
    "Road Trip": ["paris.png", "roma.png", "bahia.png", "madri.png"]
]


func listPhotos(inGallery name: String) async -> [String] {
    // Simulacao de rede assincrona
    do {
        try await Task.sleep(nanoseconds: 100000)
    } catch {
        
    }
    
    return gallery[name] ?? []
}


Task {
    let phoneName = await listPhotos(inGallery: "Summer Vaction")
    let sortedName = phoneName.sorted()
    let name = sortedName[0]
}

