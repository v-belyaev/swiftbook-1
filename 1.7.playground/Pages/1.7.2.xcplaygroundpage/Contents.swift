//: [Previous](@previous)

import Foundation

/*:
## Задание 2

 2.1.
 
 Спроектировать проигрыватель(класс `AudioPlayer`), в него можно добавить одну или несколько композиций (метод `addCompositions(compositions: [AudioFile])`):
 - композиция (класс или структура `AudioFile`) имеет название, альбом, автора и длительность.
 
 Проигрыватель может:
 - перемешивать композиции(метод `shuffleCompositions()`)
 - выводить количество песен (свойство `numberOfCompositions`)
 - проигрывать следующую песню (метод `playNext()`), предыдущую (метод `playPrevious()`)
 - при проигрывании  песни выводить в консоль: "Играет композиция с именем <название>(<альбом>). Автор: <автор>",
 - если была  последняя композиция(песня), то при проигрывании следующей(`playNext()`) будет играться первая.
 - если песен нет, то при попытке проигрывания следующей песни или предыдущей выводить: "Композиции не найдены",
 
 2.2.
 
 К проигрывателю через USB может быть подключено одно из выходных устройств: Наушники(класс `Headphones`), Колонки(класс `Loudspeakers`).
 
 Колонки при начале проигрывания композиции в проигрывателе(если подключены) выводят в консоль "На колонках проигрывается неизвестный звук длительностью <длительность>"
 
 Наушники при начале проигрывания композиции в проигрывателе(если подключены) выводят в консоль "В наушниках проигрывается неизвестный звук длительностью <длительность>", где <длительность> - это длительность композиции.
 
 > Если интерфейс подключения один (USB), то может стоит подключать выходное устройство через протокол?
 
 2.3.
 Время послушать музыку! Для этого нужно последовательно выполнить действия:
 
 - Создать объект класса проигрыватель(`AudioPlayer`),
 - Добавить в него 3 любые песни `addCompositions`, пример песни: `AudioFile(title: "Anesthetize", album: "Fear of a Blank Planet", author: "Porcupine Tree", lengthSeconds: 1063)`
 - Проиграть 1 песню (и вспомнить, что выходное устройство не подключено :-))
 - Подключить к проигрывателю колонки `Loudspeakers`.
 - Перемешать песни (метод `shuffleCompositions()`)
 - Проиграть 5 песен через метод `playNext()`.
 - Вместо колонок подключить наушники `Headphones`
 - Проиграть 2 песни.

*/

// Реализацию остальных структур, протоколов и т.д. просьба смотреть в папке Sources
class AudioPlayer {
    //MARK: Properties
    var compositions: [AudioFile] = []
    
    var outputDevice: OutputDeviceProtocol? {
        return externalSoundDevice
    }
    var numberOfCompositions: Int {
        return compositions.count
    }
    
    //MARK: Private properties
    private var currentTrackNumber: Int?
    private var externalSoundDevice: OutputDeviceProtocol?
    
    //MARK: Public methods
    func addCompositions(_ compositions: [AudioFile]) {
        self.compositions = compositions
    }
    
    func addCompositions(_ compositions: AudioFile...) {
        self.compositions = compositions as [AudioFile]
    }
    
    func shuffleCompositions() {
        compositions.shuffle()
    }
    
    func playNext() {
        guard compositions.count > 0 else {
            print("Композиции не найдены")
            return
        }
        changeCurrentTrackNumber(with: .increment)
        playTrack()
    }
    
    func playPrevious() {
        guard compositions.count > 0 else {
            print("Композиции не найдены")
            return
        }
        changeCurrentTrackNumber(with: .decrement)
        playTrack()
    }
    
    func connectOutput(device: OutputDeviceProtocol) {
        if let _ = externalSoundDevice {
            print("Внешнее устройство отключено")
        }
        externalSoundDevice = device
        print("Внешнее устройство подключено")
    }
    
    //MARK: Private methods
    private func playTrack() {
        guard let currentNumber = currentTrackNumber else {
            print("Ошибка воспроизведения трека")
            return
        }
        
        let track = compositions[currentNumber]
        checkDevice(trackLength: track.lengthInSeconds)
        
        if let album = track.album {
            print("Играет композиция с именем \(track.title) (\(album)). Автор: \(track.author)\n")
        } else {
            print("Играет композиция с именем \(track.title). Автор: \(track.author)\n")
        }
    }
    
    private func checkDevice(trackLength: UInt) {
        if let device = outputDevice {
            switch device.deviceType {
            case .headphones:
                print("В наушниках проигрывается неизвестный звук длительностью \(trackLength) секунд")
            case .loudspeakers:
                print("На колонках проигрывается неизвестный звук длительностью \(trackLength) секунд")
            }
        }
    }
    
    private func changeCurrentTrackNumber(with incrementType: IncrementType) {
        guard let currentNumber = currentTrackNumber else {
            switch incrementType {
            case .increment:
                currentTrackNumber = 0
                return
            case .decrement:
                currentTrackNumber = compositions.count - 1
                return
            }
        }
        
        if case .increment = incrementType {
            guard currentNumber < compositions.count - 1 else {
                currentTrackNumber = 0
                return
            }
            currentTrackNumber = currentNumber + 1
        } else {
            guard currentNumber > 0 else {
                currentTrackNumber = compositions.count - 1
                return
            }
            currentTrackNumber = currentNumber - 1
        }
    }
    
    private enum IncrementType {
        case increment
        case decrement
    }
}

let audioPlayer = AudioPlayer()

let tracks: [AudioFile] = [
    AudioFile(title: "I Admit It", author: "Zhu", lengthInSeconds: 174),
    AudioFile(title: "Start Again", author: "MUZZ", lengthInSeconds: 253),
    AudioFile(title: "Can't Hold Us Down", author: "Axwell & Ingrosso", lengthInSeconds: 378)
]

audioPlayer.addCompositions(tracks)
audioPlayer.playNext()

let speakers = Loudspeakers()
let headphones = Headphones()

audioPlayer.connectOutput(device: speakers)
audioPlayer.shuffleCompositions()

for _ in 1...5 {
    audioPlayer.playNext()
}

audioPlayer.connectOutput(device: headphones)

for _ in 1...2 {
    audioPlayer.playPrevious()
}

//: **Конец**
