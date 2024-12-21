# String Calculator

This is a simple **String Calculator** implemented in Ruby. It calculates sum of numbers in given string.

```ruby
	calculator = StringCalculator.new
	calculator.add("")
	calculator.add("1")
	calculator.add("1,5")
	calculator.add("1\n2\n3")
```

-   **Input:**  a string of comma-separated numbers
-   **Output:**  an integer, sum of the numbers
- **Examples:**
    ```ruby
      Input:  “”
      Output:  0
    ```
    ```ruby
      Input:  “1”
      Output:  1
    ```
    ```ruby
      Input:  “1,5”
      Output:  6
    ```