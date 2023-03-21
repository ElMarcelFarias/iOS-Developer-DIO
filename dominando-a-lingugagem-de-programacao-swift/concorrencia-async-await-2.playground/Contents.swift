import UIKit


let gallery = [
    "Summer Vaction": ["praia.png","campo.png","zoo.png","shopping.png"],
    "Road Trip": ["paris.png", "roma.png", "bahia.png", "madri.png"]
]

func add(_ photo: String, toGallery: String){
    print("Adicionando a foto \(photo) na galeria \(toGallery)")
}

func remove(_ photo: String, fromGallery: String) {
    print("Removendo a foto \(photo) na galeria \(fromGallery)")
}

Task {
    let handle = FileHandle.standardInput
    for try line in handle.bytes.lines {
        print(line)
    }
}
