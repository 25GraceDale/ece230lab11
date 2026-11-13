# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Christopher Turmes and Grace Dale

## Summary
We made two different kind of counters, one being a modulo counter, and the other being a ripple counter. These counters were implemented using previous code for D flipflops. full adders, and T flipflops.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
The modulo counter divides by 2*count because of how we define hertz. A single hertz includes a rise, fall, and another rise. Since hertz includes two rises, which are two separate triggers, the counter thus divide clocks by double the count instead of just count.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
A twisted ring counter would eventually get an all 1s output on a clock cycle, as it cascades 1s down its truth table as the clock signals progress.


### 3 - What width of ring counter would you use to get to an output of ~1KHz?
The width needed depends on the input frequency being used. This is seen in the equation f(div)=.5*N*f. This can then be manipulated into N=f(div)/(.5*f), where N represents the number of bits being used in the ring counter. 
