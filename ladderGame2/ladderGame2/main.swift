
import Foundation

func main() {
    let name = InputView().getPlayerName()
    guard let nameCount = name?.count else {
        return
    }
    let height = InputView().getLadderHeight()
    let ladder = Array(repeating: false, count: nameCount + (nameCount - 1))
    
    ResultView().drawLadder(ladder,nameCount,height)
    ResultView().printNames(name!)
}
main()

