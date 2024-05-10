import 'package:test_1/models/question.dart';

const List<List<List<Question>>> questions1 = [
  [
    //level1
    [
      //lec1
      Question(
        question: '1. When was Java created?',
        correctAnswerIndex: 1,
        options: [
          'a) 1990',
          'b) 1995',
          'c) 1999',
          'd) 1980',
        ],
      ),
      Question(
        question: '2. Java owned by.......?',
        correctAnswerIndex: 2,
        options: [
          'a) Apple',
          'b) Microsoft',
          'c) Oracle',
          'd) Android',
        ],
      ),
      Question(
        question: '3. Java used in Games?',
        correctAnswerIndex: 0,
        options: [
          'a) True',
          'b) False',
        ],
      ),
      Question(
        question: '4. Java used in Mobile applications?',
        correctAnswerIndex: 1,
        options: [
          'a) False',
          'b) True',
        ],
      ),
    ],
    [
      //lec2
      Question(
        question:
            '1. Java has Java Class Libraries and it is also known as.......?',
        correctAnswerIndex: 0,
        options: [
          'a) Java APIs',
          'b) Java JDKs',
          'c) Flutter',
          'd) Java IDEs',
        ],
      ),
      Question(
        question: '2. Java APIs Means.......?',
        correctAnswerIndex: 1,
        options: [
          'a) Java Virtual Machine',
          'b) Application Programming Interfaces',
          'c) Java Development Kit',
          'd) integrated development environment',
        ],
      ),
      Question(
        question:
            '3. The Java API stands for Java Application Programming Interface.',
        correctAnswerIndex: 1,
        options: [
          'a) False',
          'b) True',
        ],
      ),
      Question(
        question:
            '4. Java APIs: Rich collections of existing classes and methods?',
        correctAnswerIndex: 0,
        options: [
          'a) True',
          'b) False',
        ],
      ),
    ],
    [
      //lec3
      Question(
        question: '1. Java IDEs Means.......?',
        correctAnswerIndex: 0,
        options: [
          'a) Integrated development environments',
          'b) Java Virtual Machine',
          'c) Flutter',
          'd) Java Development Kit',
        ],
      ),
      Question(
        question: '2. one of the type of Java IDEs is.......?',
        correctAnswerIndex: 3,
        options: [
          'a) Microsoft Visual C++',
          'b) Eclipse',
          'c) NetBeans',
          'd) Both B and C',
        ],
      ),
      Question(
        question:
            '3. IDEs Provide tools that support the software development process, such as editors?',
        correctAnswerIndex: 1,
        options: [
          'a) False',
          'b) True',
        ],
      ),
      Question(
        question:
            '4. Java IDEs can be used in debuggers for locating logic errors?',
        correctAnswerIndex: 0,
        options: [
          'a) True',
          'b) False',
        ],
      ),
    ],
  ], //end level1
  [
    //level2
    [
      //lec1
      Question(
        question: '1. What is the purpose of the if statement in Java?',
        correctAnswerIndex: 2,
        options: [
          'a) To define a variable',
          'b) To declare a method',
          'c) To execute code conditionally',
          'd) To create a loop',
        ],
      ),
      Question(
        question: '2. What type of expression does the if statement evaluate?',
        correctAnswerIndex: 1,
        options: [
          'a) Integer expression',
          'b) Boolean expression',
          'c) Double expression',
          'd) String expression',
        ],
      ),
      Question(
        question:
            '3. if statement: Allows a program to make a decision based on a condition’s value?',
        correctAnswerIndex: 1,
        options: [
          'a) False',
          'b) True',
        ],
      ),
      Question(
        question: '4. An if statement always begins with keyword if?',
        correctAnswerIndex: 0,
        options: [
          'a) True',
          'b) False',
        ],
      ),
    ],
    [
      //lec2
      Question(
        question: '1. What is the primary purpose of a for loop in Java?',
        correctAnswerIndex: 3,
        options: [
          'a) To declare variables',
          'b) To create conditional statements',
          'c) To define methods',
          'd) To repeatedly execute a block of code',
        ],
      ),
      Question(
        question: '2. What are the three components of a for loop in Java?',
        correctAnswerIndex: 2,
        options: [
          'a)  Initialize, Condition, Execute',
          'b) Start, Stop, Step',
          'c)  Initialization, loopCondition, increment',
          'd) Loop, Test, Increment',
        ],
      ),
      Question(
        question:
            '3. The for loop in Java is a control flow statement that allows you to repeatedly execute a block of code for a specific number of times.',
        correctAnswerIndex: 1,
        options: [
          'a) False',
          'b) True',
        ],
      ),
      Question(
        question: '4. The update step in a for loop is optional.',
        correctAnswerIndex: 1,
        options: [
          'a) True',
          'b) False',
        ],
      ),
    ],
    [
      //lec3
      Question(
        question: '1. What is the primary purpose of a while loop in Java?',
        correctAnswerIndex: 2,
        options: [
          'a) To declare variables',
          'b) To create conditional statements',
          'c) To repeatedly execute a block of code',
          'd) To define methods',
        ],
      ),
      Question(
        question: '2. Which keyword is used to begin a while loop in Java?',
        correctAnswerIndex: 3,
        options: [
          'a) when',
          'b) case',
          'c) loop',
          'd) while',
        ],
      ),
      Question(
        question:
            '3.  The condition in a while loop is evaluated after each iteration.',
        correctAnswerIndex: 1,
        options: [
          'a) False',
          'b) True',
        ],
      ),
      Question(
        question:
            '4.  A while loop will always execute at least once, even if the initial condition is false.',
        correctAnswerIndex: 1,
        options: [
          'a) True',
          'b) False',
        ],
      ),
    ],
  ], //end level2
  [
    //level3
    [
      //lec1
      Question(
        question:
            '1. What is the primary purpose of the public access modifier in Java?',
        correctAnswerIndex: 1,
        options: [
          'a) Restricts visibility to the same class',
          'b) Allows access from any other class',
          'c) Encapsulates internal details',
          'd) Hides implementation details',
        ],
      ),
      Question(
        question: '2. In Java, a private method can be called from:',
        correctAnswerIndex: 0,
        options: [
          'a) Only within the same class',
          'b) Any other class',
          'c) Any class in the same package',
          'd) Only within the same package',
        ],
      ),
      Question(
        question:
            '3. The benefit of using the private access modifier is Hiding implementation details?',
        correctAnswerIndex: 1,
        options: [
          'a) False',
          'b) True',
        ],
      ),
      Question(
        question:
            '4.   The public access modifier in Java allows class members to be accessed only within the same class.',
        correctAnswerIndex: 1,
        options: [
          'a) True',
          'b) False',
        ],
      ),
    ],
    [
      //lec2
      Question(
        question: '1.  What is Inheritance in Java?',
        correctAnswerIndex: 0,
        options: [
          'a) A mechanism for code organization and reuse',
          'b) A mechanism for code duplication',
          'c) A method for creating new classes',
          'd) A way to implement interfaces',
        ],
      ),
      Question(
        question: '2.  What is the superclass in inheritance?',
        correctAnswerIndex: 1,
        options: [
          'a) The class that inherits from another class',
          'b) The class whose properties and behaviors are inherited',
          'c) The child class in a hierarchy',
          'd) The most specialized class in a hierarchy',
        ],
      ),
      Question(
        question:
            '3.  The extends keyword is used in Java to indicate that a class is inheriting from another class.',
        correctAnswerIndex: 1,
        options: [
          'a) False',
          'b) True',
        ],
      ),
      Question(
        question:
            '4.  A subclass can access private members (fields and methods) of its superclass.',
        correctAnswerIndex: 1,
        options: [
          'a) True',
          'b) False',
        ],
      ),
    ],
    [
      //lec3
      Question(
        question:
            '1.  Which keyword is used to denote method overriding in Java?',
        correctAnswerIndex: 0,
        options: [
          'a) @Override',
          'b) implement',
          'c) override',
          'd) extends',
        ],
      ),
      Question(
        question:
            '2.  In method overriding, the method in the subclass must have the same:',
        correctAnswerIndex: 2,
        options: [
          'a) Method name and return type',
          'b) Method name and parameter types',
          'c) Method name, return type, and parameter types',
          'd) Method name, return type, and order of parameters',
        ],
      ),
      Question(
        question:
            '3.  polymorphism is A mechanism for treating objects of different types as objects of a common type?',
        correctAnswerIndex: 1,
        options: [
          'a) False',
          'b) True',
        ],
      ),
      Question(
        question:
            '4.  In method overriding, the return type of the overridden method in the subclass must be the same as the return type in the superclass.',
        correctAnswerIndex: 0,
        options: [
          'a) True',
          'b) False',
        ],
      ),
    ],
  ],
];
