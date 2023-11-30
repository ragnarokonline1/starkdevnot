#[contract]
mod HelloSir {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[external]
    fn Bye(from: ContractAddress, value: felt252) {}


    #[internal]
    fn Say_Goodbye(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}



