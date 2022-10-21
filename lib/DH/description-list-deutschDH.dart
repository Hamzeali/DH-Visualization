// ignore_for_file: file_names

class DescListDeutchDH {
  static String text1 =
      '• Grundidee kann mit Farben dargestellt werden (später werden wir sehen, wie es mit Zahlen funktioniert)';
  static String text2 = '• Multiplikative Gruppe der ganzen Zahlen modulo n\n';
  static String text31 =
      '• Diesmal mit Zahlen – mit kleinen Zahlen; DHKE verwendet eindeutig große Zahlen';
  static String text321 = 'Alice wählt eine multiplikative Gruppe aus: n = ';
  static String text322 = 'und eine primitive Wurzel r = ';
  // static List slide1Desc = [
  //   'Beschreibung test 1...',
  //   'Beschreibung test 2...',
  //   'Beschreibung test 3...',
  //   'Beschreibung test 4...',
  //   'Beschreibung test 5...',
  //   'Beschreibung test 6...',
  //   'Beschreibung test 7...',
  // ];
  static List slide1Desc = [
    'Alice denkt an ihre erste Farbe, die Gelb ist.',
    'Als Alice Bob von ihrer ersten Farbe erzählt, kann Eve ihr zuhören und sie kennt auch die Farbe.',
    'Um zu verhindern, dass Eve wieder zuhört, denkt Alice an eine andere Farbe (Rot) und Bob denkt auch an eine Farbe (Türkis).',
    'Alice und Bob, mische die erste Farbe von Alice (Gelb) mit den Farben, die sie sich ausgedacht haben. Jetzt haben Alice und Bob eine neue Mischfarbe (Alice hat Orange, Bob hat Blau).',
    'Alice sendet ihre gemischte Farbe (Orange) an Bob und Bob sendet seine gemischte Farbe (Blau) an Alice. Eve kann die Mischfarbe von beiden kennen, aber nicht die tatsächliche Farbe.',
    'Alice mischt Bobs gemischte Farbe (Blau) mit ihrer zweiten Farbe (Rot). Bob macht dasselbe, er mischt Alices Mischfarbe (Orange) mit seiner Farbe (Blau).',
    'Jetzt haben Alice und Bob die gleiche Ergebnisfarbe (dunkelgrün), von der Eve keine Ahnung hat.',
  ];
  static List slide2Desc = [
    'Beschreibung test 1...',
    'Beschreibung test 2...',
    'Beschreibung test 3...',
    'Beschreibung test 4...',
    'Beschreibung test 5...',
    'Beschreibung test 6...',
    'Beschreibung test 7...',
    'Beschreibung test 8...',
    'Beschreibung test 9...',
    'Beschreibung test 10...',
    'Beschreibung test 11...',
    'Beschreibung test 12...',
    'Beschreibung test 13...',
    'Beschreibung test 14...',
    'Beschreibung test 15...',
    'Beschreibung test 16...',
    'Beschreibung test 17...',
  ];
  // static List slide3Desc = [
  //   'Beschreibung test 1...',
  //   'Beschreibung test 2...',
  //   'Beschreibung test 3...',
  //   'Beschreibung test 4...',
  //   'Beschreibung test 5...',
  //   'Beschreibung test 6...',
  // ];

  // static List slide3Desc = [
  //   'Beschreibung test 1...',
  //   'Beschreibung test 2...',
  //   'Beschreibung test 3...',
  //   'Beschreibung test 4...',
  //   'Beschreibung test 5...',
  //   'Beschreibung test 6...',
  // ];

  static List slide3Desc = [
    'Alice muss eine multiplikative Gruppe (n) auswählen. Und eine primitive Wurzel (r).',
    'Alice teilt (n und r) mit Bob. Eve wird die ausgewählten Nummern kennen!',
    'Alice wählt ihre Geheimnummer (s (Alice)). Und Bob wählt auch seine Geheimzahl(en (Bob)) aus. Die Privatnummern werden nicht ausgetauscht!!',
    'Jetzt generieren Alice und Bob ihren öffentlichen Schlüssel (\'a\' für Alice und \'b\' für Bob) mit Hilfe der Formel, die auf dem Bildschirm angezeigt wird.',
    'Alice und Bob werden die Werte ihrer öffentlichen Schlüssel (a und b) austauschen. Eve kann diese beiden Werte kennen!',
    'Jetzt generieren Alice und Bob den verwendeten geheimen Schlüssel (S) mit der Formel\n(S = pow(b, s(Alice)) mod n).',
  ];

  static List tabTitle = [
    'Grundlegende Idee des DHKE',
    'Einige mathematische Grundlagen',
    'Wie funktioniert das DHKE?',
  ];
}
