/*
  const data = [
  {
    name: "abhishek",
    age: 20,
  },
  {
    name: "ajay",
    age: 20,
  },
  {
    name: "ashish",
    age: 21,
  },
];

Output : {
20: 2,
21: 1
};
}

*/

void main() {
  const data = [
    {
      "name": "abhishek",
      "age": 20,
    },
    {
      "name": "ajay",
      "age": 20,
    },
    {
      "name": "ashish",
      "age": 21,
    },
  ];

  Map<int, int> result = {};

  for (var frag in data) {
    int age = frag["age"] as int;
    result[age] = (result[age] ?? 0) + 1;
  }

  print("$result");
}
