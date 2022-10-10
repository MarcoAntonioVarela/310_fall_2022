**[Click here to go back to the homepage](0-outline.md)**
![Queues banner](pictures/1_queues_banner.png)

### Introduction:

**What are "queues"?**
\
Let's remember that queues are something we are all familar with, we see queues every time we are waiting in line, like when whe are about to buy something at our favorite store.
<!-- I will use HTML tags to illustrate an example of a queue -->
<img src="pictures/1_queue_example0.jpg" width="450" height="250" />

We join a queue whenever we get in line and, then there are other people that get in line behind.

When we talk about queues in Python programming and even with other languages adding items in a queue is called **Enqueue** and when we remove items from the queue we call that **Dequeue**.

Something to remember is that we Enqueue from the back and we Dequeue from the Front. We use FIFO, First In First Out method with queues.
\
\
**What is FIFO? (First In First Out)**\
A FIFO queue is a queue that operates on a first-in, first-out principle. This means that the request (like a customer in a store or a print job sent to a printer) is processed in the order in which it arrives. A first-come, first-served line is the most common type of queue that we join in our everyday lives and is generally accepted as the fairest way to operate a queue.

**FIFO Example:**\
Let's say that Marco (me) wants a spicy chicken sandwich from Chick-fill-A.
If I go to Chick-fill-A right after it is open, I will be the first customer, that means, I will be the first one waiting on the file.
Now let's say that my best friend Bill Gates also wants a chicken sandwich, so he gets in the waiting line, right after me.
Who would be the fist one to place the order?\
Me who got in the line first? or Bill Gates who got in the line after me?\
The answer is me, because I was added in the queue before Bill Gates, and according to the Fist In First Out principle, I should place my order first. 


<!-- I will use HTML tags to illustrate my queues example with 5 photos (waiting at chick-fill-A) -->
<img src="pictures/1_queues_example1.png" width="500" height="400" />
<img src="pictures/1_queues_example2.png" width="500" height="400" />
<img src="pictures/1_queues_example3.png" width="500" height="400" />
<img src="pictures/1_queues_example4.png" width="500" height="400" />
<img src="pictures/1_queues_example5.png" width="500" height="400" />

\
**What is the performance/ big O notation of queue operations?**
* BigO (1)
* De dequeue operation is O(n) when using a dynamic array, but other data structures can make it operate in O (1)

<!-- I will use HTML tags to illustrate a Big(O) notacion chart -->
<img src="pictures/1_queues_bigOnotation.png" width="590" height="350" />

**What is BigO (1)?**

BigO (1) is the fastest possible running time for any algorithm, commonly referred to as "Constant Running Time". In this case, the algorithm always takes the same amount of time to execute, regardless of the input size.

### Enqueue
Enqueue adds an item/value to the back of the queue.\
The Python code we will use will be 
```python
my_queue.append(value)
```
In the following example, we will enqueue in order our 4 customers waiting in our Chick-fill-A line (Marco Varela, Bill Gates, Steve Jobs and Elon Musk) using the .append() function.


```python
chick_fill_a_queue=[]
chick_fill_a_queue.append("Marco Varela")
chick_fill_a_queue.append("Bill Gates")
chick_fill_a_queue.append("Steve Jobs")
chick_fill_a_queue.append("Elon Musk")
print("Customers order:",chick_fill_a_queue)
```
And this will be our result if we print our queue:
<!-- I will use HTML tags to illustrate the enqueue example -->
<img src="pictures/1_queues_enqueue.png" width="600" height="90" />

* Time Complexity to enqueue an item/ value: O(1)

### Dequeue
Removes an item from the queue. The items are popped in the same order in which they are pushed.\
To dequeue, the Python code we will use will be:
```python
del my_queue[0]
```
We can also use .pop(index) to dequeue a value
```python
my_queue.pop(0)
```
### For our example 
Let's say that Marco Varela (the first one in the queue) and Bill Gates (the second one in the queue) got their sandwiches, so... who is the next one in our Chick-fill-A line/queue?\
Let's find out! in this example we will use .pop() function to remove the first two people in line.

```python
chick_fill_a_queue=[]
chick_fill_a_queue.append("Marco Varela")
chick_fill_a_queue.append("Bill Gates")
chick_fill_a_queue.append("Steve Jobs")
chick_fill_a_queue.append("Elon Musk")
print("Customers order:",chick_fill_a_queue)
print(chick_fill_a_queue.pop(0))
print(chick_fill_a_queue.pop(0))
print("After Removing elements:",chick_fill_a_queue)
```
And this will be our result if we print our queue:
<!-- I will use HTML tags to illustrate the dequeue example -->
<img src="pictures/1_queues_dequeue.png" width="600" height="120" />

* Time Complexity to dequeue an item/ value: O(1)
### Problem to solve:
Let's test our lesson! 
For this problem, there are a lot of people waiting at the BYU-Idaho Store to buy a ticket for tonight's activity BYU-Idol! but, this must be done in a proper manner.\
These people must be in order to avoid any confusion in line, so everybody can get their ticket quickly.\
Using this provided code, do the following:
1) Place (enqueue) the following customers in a Queue so they can buy their tickets in that order :
* Henry J. Eyering
* Michelangelo
* Leonardo
* Donatello
* Raphael

2) After 5 minutes, Henry J. Eyering and Michelangelo got their tickets! so please remove (dequeue) them and print the next 3 customers in line

```python 
 class Queue():
    def __init__(self):
        self.queue = []


    '''Returns False if the queue has at least one element (length of list > 0). 
    Otherwise returns True (length of list == 0) '''
    def is_empty(self):
        return not len(self.queue)

    
    '''Adds an element to the end of the list (queue)'''
    def enqueue(self, element):
        self.queue.append(element)
        return self.queue


    '''Firstly checks if the queue is empty. If the queue does not empty, removes 
    the first element of the list (queue). Otherwise, it returns a warning message'''
    def dequeue(self):
        if self.is_empty():
            return "Warning: The queue is empty"
        return self.queue.pop(0)

    
    '''Printing our queue'''
    def printin_queue(self):
        if self.is_empty():
            return "Warning: The queue is empty"
        return self.queue
    

if __name__ == '__main__':
    my_queue = Queue()

## Enqueue here our 5 customers

print(f"Our initial queue: {my_queue.printin_queue()}")

## Dequeue here our first 2 customers by calling our dequeue function twice

print(f"Our final queue: {my_queue.printin_queue()}")

```
This is our expected outcome:
<!-- I will use HTML tags to illustrate the problem outcome -->
<img src="pictures/1_queues_problem_outcome.png" width="600" height="50" />

Once you finished the problem, please [click here](solutions/1-queues_solution.py) to see the solution.

![Queues problem solution banner](pictures/1_queues_problem_solution.png)
**[Click here to go back to the homepage](0-outline.md)**
_________________________________________________________________
<sup>*CSE 212 - By Marco Varela (July, 2022)*</sup>
