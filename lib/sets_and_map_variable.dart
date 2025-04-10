// final Set<int> someSet = {};
// final anotherSet = {1, 2, 3, 1};

// final setA = {8, 2, 3, 1, 4};
// final setB = {1, 6, 5, 4};

// Maps
final Map<String, int> emptyMap = {};
final inventory = {
  'cakes': 20,
  'pies': 14,
  'donuts': 37,
  'cookies': 141,
};

final digitToWord = {
  1: 'one',
  2: 'two',
  3: 'three',
  4: 'four',
};

final Map<String, String> treasureMap = {
  'garbage': 'in the dumpster',
  'glasses': 'on your head',
  'gold': 'in the cave',
  'gold': 'under your mattress', // Here second gold will not work
}; // so we gonna make it String to List

final Map<String, List> treasureMapList = {
  'garbage': ['in the dumpster'],
  'glasses': ['on your head'],
  'gold': ['in the cave', 'under your mattress'],
};

final myHouse = {
  'bedroom': 'messy',
  'kitchen': 'messy',
  'living room': 'messy',
  'code': 'clean',
};
