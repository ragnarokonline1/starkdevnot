#[contract]
mod HelloSir {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Bye(from: ContractAddress, value: felt252) {}


    #[internal]
    fn Say_Hello(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}

