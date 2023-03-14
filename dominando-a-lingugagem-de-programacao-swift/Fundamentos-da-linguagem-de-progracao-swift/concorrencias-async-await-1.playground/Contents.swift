import CoreFoundation

/*
let startTime = CFAbsoluteTimeGetCurrent()
DispatchQueue.global().sync {
    for i in 0...10 {
        print("Fui....\(i)")
    }
}


DispatchQueue.global().sync {
    for i in 0...10 {
        print("Voltei....\(i)")
    }
}
 */

 //Executando na Main thread
/*
DispatchQueue.main.sync {
    
}
 */

func fetchUserId(from server: String) async -> Int {
    if server == "primary" {
        return 97
    }
    return 501
}


func fetchUserName(from server: String) async -> String {
    let userID = await fetchUserId(from: server)
    if userID == 501 {
        return "Maria clara"
    }
    return "Marcel Leite de Farias"
}

func connectUser(to server: String) async {
    async let userID = fetchUserId(from: server)
    async let userName = fetchUserName(from: server)
    
    let greeting = await "Olá \(userName), userID \(userID)"
    print(greeting)
}

Task {
    await connectUser(to: "primary")
}
    
