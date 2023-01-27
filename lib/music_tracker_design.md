
# Music Tracker - Single Method Program Design

## 1. Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Method Signature

```ruby

method name: task_tracker(text) 
text: arg as a string (e.g. "hello there")
output: a list of strings (e.g. "TODO: a food shop" or "No text including 'TODO' was found")

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

task_tracker("hello there") => ["No text including 'TODO' was found"]
task_tracker("TODO: homework") => ["TODO: homework"]
task_tracker(nil) throws an error "No text was entered"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
