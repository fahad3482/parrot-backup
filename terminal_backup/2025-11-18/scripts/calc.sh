
#!/bin/bash

echo "Simple Calculator"
echo "Enter first number:"
read a

echo "Enter second number:"
read b

echo "Select operation (+, -, *, /):"
read op

case $op in
    +) result=$((a + b)) ;;
    -) result=$((a - b)) ;;
    \*) result=$((a * b)) ;;
    /) 
        if [ "$b" -eq 0 ]; then
            echo "Error: Division by zero"
            exit 1
        fi
        result=$((a / b))
    ;;
    *) 
        echo "Invalid operation"
        exit 1
    ;;
esac

echo "Result: $result"
