# Binary numbers

## 1. sign/magnitude representation

An intuitive way for humans to deal with negative numbers. The most significant bit indicates presence of the minus sign.

```
[1]0000110 = [-]6(10)
```


**Has two major disadvantages:**
    
- Boolean arithmetic doesn't work out of the box,
- there is +0 and -0 which is pretty awkward


## 2. two's complimentary representation

The msb has the value of -2^N-1. This way for eight bit numbers:

```
-128(10) = 0b 1000 0000
0(10) = 0b 0000 0000
127 = 0b 0111 1111
```

### An easy method to convert to negative numbers

Negate all the numbers and add 1;

Example:

```
15(10) = 0b0000 1111
           1111 0000 //flip the signs
           1111 0001 //add one
```

In order to substract - negate the subtrahend and add the value to the minuend

### Misc notes

The amount of information D in a discrete valued variable with N
distinct states is measured in units of bits as:

    D = log_2(N) bits

