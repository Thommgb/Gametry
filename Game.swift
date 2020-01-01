enum CharacterType: String {
case knight
case wizard
case giant
case thief
    }

enum EnnemiType {
case goblin
case dwarf
    }


class Character {
    var name : String
    var life : Int
    var canHeal : Bool
    var canAttack : Bool
    var characterType : CharacterType
    
    init(name: String, life: Int, canHeal: Bool, canAttack: Bool, characterType: CharacterType) {
        self.name = name
        self.life = life
        self.canHeal = canHeal
        self.canAttack = canAttack
        self.characterType = characterType
    }
}

//Toutes les phrases d'intro et d'histoire.

class Texte {
    func story() {
        print("Il était une fois nanana..")
    }
    
    func shooseYourTeam() {
        print("Bonjour Voyageur ! Vous devrez choisir trois des quatre classes suivantes afin de vous créer trois personnages !"
        + "\n1. \(CharacterType.knight.rawValue)"
        + "\n2. \(CharacterType.wizard.rawValue)"
        + "\n3. \(CharacterType.giant.rawValue)"
        + "\n4. \(CharacterType.thief.rawValue)")
    }
    
    func listingCharacter() {
    if let choice = readLine() {
            switch choice {
                case "\(CharacterType.knight.rawValue)":
                    CharacterType.knight
                print("Le chevalier, une classe puissante et indispensable de toute bonne équipe! Donnez lui un nom.")
                    
                case "\(CharacterType.wizard.rawValue)":
                    CharacterType.wizard
                print("Vous ne passerez pas ! Capable de grands soins et de sérieux dégats le magicien est idéal. Donnez lui un nom.")
                
                case "\(CharacterType.giant.rawValue)":
                    CharacterType.giant
                print("Très bon choix! Écrasez vos ennemis sans pitié. Donnez lui un nom.")
                
                case "\(CharacterType.thief.rawValue)":
                CharacterType.thief
                print("Le voleur est fourbe et rapide ! A vous de jouer. Donnez lui un nom.")
                
                default:
                print("HOP HOP HOP, on revient par ici")
                
                }
            }
        
        func openChest() {
            print("Vous avez eu un coffre!")
            if Bool.random() {
            print("Une nouvelle arme a été découverte ! l'épée s'équipe automatiquement au chevalier. ")
            if false {
                    print("Pas de chance le coffre est vide !")
                }
            }
        }
