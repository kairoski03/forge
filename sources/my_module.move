module forge::forge {
    use sui::object::{Self, UID};
    use sui::transfer;
    use sui::tx_context::TxContext;
    use sui::tx_context;

    struct Sword has key, store {
        id: UID,
        strength: u64,
    }

    public entry fun sword_create(strength: u64, ctx: &mut TxContext) {
        let sword = Sword {
            id: object::new(ctx),
            strength: strength * 1,
            // strength: strength * 2,
        };
        transfer::transfer(sword, tx_context::sender(ctx));
    }
}