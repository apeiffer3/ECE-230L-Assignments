# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
Has low for 6 cycles and high for 6 cycles.

### 2 - Why does the ripple counter's output go to all 1s on the first clock cycle?
In our ripple counter it all happens in the same clock cycle.

### 3 - What width of ripple counter would you use to get to an output of ~1KHz?
2^N=100000 the closest we get is with N=17, but if N could be a decimal perhaps N =16.61