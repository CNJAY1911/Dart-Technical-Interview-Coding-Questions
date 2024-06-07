/*

    Given an expression string exp, write a program to examine whether 
    the pairs and the orders of “{“, “}”, “(“, “)”, “[“, “]” 
    are correct in the given expression.

    Example: 

    Input: exp = “[()]{}{[()()]()}” 
    Output: Balanced
    Explanation: all the brackets are well-formed

    Input: exp = “[(])” 
    Output: Not Balanced 
    Explanation: 1 and 4 brackets are not balanced because 
    there is a closing ‘]’ before the closing ‘(‘

*/

import 'dart:collection';

bool areBracketsBalanced(String exp) {
  // Create a stack to keep track of opening brackets
  Queue<String> stack = Queue<String>();

  // Iterate through each character in the expression
  for (int i = 0; i < exp.length; i++) {
    String char = exp[i];

    // If the character is an opening bracket, push it onto the stack
    if (char == '{' || char == '(' || char == '[') {
      stack.addLast(char);
    }
    // If the character is a closing bracket
    else if (char == '}' || char == ')' || char == ']') {
      // If the stack is empty, it means there is no corresponding opening bracket
      if (stack.isEmpty) {
        return false;
      }

      // Pop the top element from the stack
      String top = stack.removeLast();

      // Check if the popped element is the corresponding opening bracket
      if ((char == '}' && top != '{') ||
          (char == ')' && top != '(') ||
          (char == ']' && top != '[')) {
        return false;
      }
    }
  }

  // If the stack is empty, all opening brackets have corresponding closing brackets
  return stack.isEmpty;
}

void main() {
  // Test cases
  String exp1 = "[()]{}{[()()]()}";
  String exp2 = "[(])";

  print("Input: $exp1");
  print("Output: ${areBracketsBalanced(exp1) ? 'Balanced' : 'Not Balanced'}");

  print("Input: $exp2");
  print("Output: ${areBracketsBalanced(exp2) ? 'Balanced' : 'Not Balanced'}");
}
