# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Summary
We had a lot typed out in verilog already, it was mainly adjusting our top file and accounting for errors that we had the most trouble with, even still did not take us too much time to get our circuit functioning as intended Stair light on the first two switches and bit adder on the rest.

### 1 - How might you add more than two bits together?
By representing them with an XOR gate. Making a binary adder circuit that handles the sum and carry bits for each position. Basically by adding aditional circuits.
### 2 - What is the importance of the XOR gate in an adder?
It having 2 0s in a circuit come out to 0, an on in a gate as 1s in the bit position and the final 1(on) 1(on) representing a carry over through a different gate.
### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
3 is the largest if you go over you're using more than two bit and need a carry over in order to properly represent binary to decimal as 1 1 = 3 ~ (digit *1)+(digit*2)
