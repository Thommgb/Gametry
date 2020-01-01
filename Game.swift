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
