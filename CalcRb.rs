use std::f64::consts::PI;

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
pub extern "C" fn power(base: f64, exponent: f64) -> f64{
    base.powf(exponent)
}
#[no_mangle]
pub extern "C" fn gcd(mut a: u64, mut b: u64) -> u64{
    while b!=0{
        (a,b)=(b, a%b);
    }
    a
}
#[no_mangle]
            pub extern "C" fn lcm(a: u64, b: u64){
                a/gcd(a,b)*b
            }
#[no_mangle]
pub extern "C" fn sin_degrees(degrees: f64) -> {
    (degrees *PI/180.0).sin()
}
#[no_mangle]
pub extern "C" fn tan_degrees(degrees: f64) -> {
    (degrees *PI/180.0).tan()
}
}
