# Combinationa Logic Design

Combinational circuit - output value depends solely on the current values of inputs

Sequentail circuit - output value depends on both the current and the past state of inputs (on the sequence of the inputs)

# Boolean equation for any circuit:

## 1. Sum of products (Σ):

_miniterm_ - a product of all inputs to a function/circuit.
**It is a function that will output 1 for a particular input and 0 for all others**

|A|B|Y|miniterm ( _ * _ )|m[]|
|-|-|-|--------|-|
|0|0|0|A'B'|m0|
|0|1|1|A'B |m1| 
|1|0|1|A'B'|m2|
|1|1|0|A B |m3|

### It gets intuitive if you look at it the right way:
_For the output to be true you have to make your inputs be in:_

```
(one of the 'good' states) OR a (different one) OR (yet another one)
```

For the ground truth table above it'd be:
```
Y = A'B + AB' 
```
Or in a shorter, sigmoid form:
```
Y = F(A,B) = Σ(0b01, 0b10) = Σ(1,3)
```

## 2. Product of sums (∏)
Function as a product of all (maxterms) that make the output False

_maxterm_ - a sum of all inputs to a function/circut. **It is such a function that its output will be zero when given input occurs and will be one for all other inputs**


|A|B|Y|maxterm ( _ + _ )|M[]|
|-|-|-|--------|-|
|0|0|0|A+B |m0|
|0|1|1|A+B'|m1| 
|1|0|0|A'+B |m2|
|1|1|1|A'+B'|m3|

```
Y = F(A,B) = (A+B) * (A'+B) 
Y = F(A,B) = ∏(0,2)
```

X in a truth table means 'don't care'

Intuition behind it:
_For the output to be false you need only one of maxterms to be false_

## 3. Boolean algebra

Defines ~, +, * operators and what they do on 0s and 1s

_perfect induction_ - prove a theorem by showcasing all possible scenarios

