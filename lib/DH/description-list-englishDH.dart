// ignore_for_file: file_names

class DescListEnglishDH {
  static String text1 =
      '• Basic idea can be shown with colors (later we will see how it works with numbers)';
  static String text2 = '• Multiplicative group of integers modulo n\n';
  static String text31 =
      '• This time with numbers – with small numbers; DHKE clearly uses big numbers';
  static String text321 = 'Alice selects a multiplicative group: n = ';
  static String text322 = 'and a primitive root r = ';
  // static List slide1Desc = [
  //   'Description test 1...',
  //   'Description test 2...',
  //   'Description test 3...',
  //   'Description test 4...',
  //   'Description test 5...',
  //   'Description test 6...',
  //   'Description test 7...',
  // ];
  static List slide1Desc = [
    'Alice thinks about her first color, which is yellow.',
    'When Alice tells Bob about her first color, Eve can listen to her and she also knows the color.',
    'To prevent Eve form listening again, Alice will think about another color (red) and Bob will think about a color as well (turquoise).',
    'Alice and Bob, mix the Alice\'s first color (yellow) with the colors, they thought about them. Now Alice and Bob have a new mixed color (Alice has the orange, Bob has blue).',
    'Alice sends her mixed color (orange) to Bob, and Bob sends his mixed color (blue) to Alice. Eve can know the mixed color of both, but not the actual color.',
    'Alice will mix Bob\'s mixed color (blue) with her second color (red). Bob will do the same, he mixes Alice\'s mixed color (orange) with his color (blue).',
    'Now Alice and Bob have the same result color which is (dark green), where Eve does not have any idea about it.',
  ];
  static List slide2Desc = [
    'Description test 1...',
    'Description test 2...',
    'Description test 3...',
    'Description test 4...',
    'Description test 5...',
    'Description test 6...',
    'Description test 7...',
    'Description test 8...',
    'Description test 9...',
    'Description test 10...',
    'Description test 11...',
    'Description test 12...',
    'Description test 13...',
    'Description test 14...',
    'Description test 15...',
    'Description test 16...',
    'Description test 17...',
  ];
  // static List slide3Desc = [
  //   'Description test 1...',
  //   'Description test 2...',
  //   'Description test 3...',
  //   'Description test 4...',
  //   'Description test 5...',
  //   'Description test 6...',
  // ];
  static List slide3Desc = [
    'Alice has to select a multiplicative group (n). And a primitive root (r).',
    'Alice share (n and r) with Bob. Eve will know the selected numbers!',
    'Alice selects her secret number (s (Alice)). And Bob selects his secret number (s (Bob)) as well. The secret numbers will not be exchanged!!',
    'Now Alice and Bob will generate their public key (\'a\' for Alice and \'b\' for Bob) with the help of the formula that\'s shown on the screen.',
    'Alice and Bob will exchange the values of their public keys (a and b). Eve can know these two values!',
    'Now Alice and Bob will generate the used secret key (S) with the formula\n(S = pow(b, s(Alice)) mod n).',
  ];
  static List tabTitle = [
    'Basic Idea of DHKE',
    'Some Mathematical Basics',
    'How does the DHKE work?',
  ];
}
