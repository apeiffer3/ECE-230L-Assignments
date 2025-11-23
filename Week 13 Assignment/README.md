# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Compare and contrast One Hot and Binary encodings
Binary has a flip flop for each digit, Onehot has a dff for each variable.
### Which method did your team find easier, and why?
Onehot was much easier and I'm not really sure but it seemed to have an immense amount to do with the test bench.
Our code in lab for our binary would not pass through several iterations. Only at home did we get it to work eventually.
### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
I mean my preference is onehot utilization very simple and apparently helps with clock times and circuit pathing.
It honestly seems like the only time you would use the alternative is when you're limited on dff's or you're accesing a large database.
