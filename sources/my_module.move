module forge::forge {
    use sui::object::{Self, UID};
    use sui::transfer;
    use sui::tx_context::TxContext;
    use sui::tx_context;

    struct Sword has key, store {
        id: UID,
        strength: u64,
    }

    public entry fun sword_create(ctx: &mut TxContext) {
        let sword = Sword {
            id: object::new(ctx),
            strength: 2,
        };
        transfer::transfer(sword, tx_context::sender(ctx));
    }
}