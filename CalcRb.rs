use std::os::raw::c_double;

#[no_mangle]
pub extern "C" fn factorial(n: u64) -> u64 {
    (1..=n).product()
}

#[no_mangle]
pub extern "C" fn fibonacci(n: u64) -> u64 {
    if n<= 1{
        n
    }
    else{
        let mut a = 0;
        let mut b = 1;
        for _ in 2..=n {
            let temp = a + b;
            a =b;
            b = temp;
        }
        b
    }
}

#[no_mangle]
pub extern "C" fn complex_power(base: c_double, exponent: c_double) -> c_double {
    base.powf(exponent)
}