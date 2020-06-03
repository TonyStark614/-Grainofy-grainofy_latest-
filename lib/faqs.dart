import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Faqs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.greenAccent,
        title: Text('FAQs ',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Source Sans Pro',
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            EntryItem(data[index]),
        itemCount: data.length,
      ),
    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'Are grains stored in a healthy place?',
    <Entry>[
      Entry(
          'We keep godowns, clean and sterelized '),
    ],
  ),
  Entry(
    'How do you ensure food security?',
    <Entry>[
      Entry(
          'Through suggesting/devising methods of safe storage of foodgrains and adequate availability of skilled manpower for the same.'),
    ],
  ),
  Entry(
    'How do you ensure quality control?',
    <Entry>[
      Entry(
          ' Through scientific storage practices and preservation as issued by the govt. guidelines and getting inspections of foodgrains done on time.'),
    ],
  ),
  Entry(
    'How do you ensure pest control?',
    <Entry>[
      Entry(
          ''),
    ],
  ),
  Entry(
    'What will a barn owner do in case if he needs help?',
    <Entry>[
      Entry(
          ''),
    ],
  ),
  Entry(
    'How to connect with the like community?',
    <Entry>[
      Entry(
          ''),
    ],
  ),
  Entry(
    'What government benefits can we get?',
    <Entry>[
      Entry(
          ''),
    ],
  ),
  Entry(
    'What can I do to protect myself?',
    <Entry>[
      Entry(
          'Stay aware of the latest information on the outbreak, available on WHO website, and take care of your health by doing the following:  Wash your hands frequently with an alcohol-based hand rub or soap and water Why? Washing your hands with an alcohol-based hand rub or soap and water kills the virus if it is on your hands.  Maintain social distancing – maintain at least 1 metre (3 feet) distance between yourself and other people, particularly those who are coughing, sneezing and have a fever. Why? When someone who is infected with a respiratory disease, like 2019-nCoV, coughs or sneezes they project small droplets containing the virus. If you are too close, you can breathe in the virus  Avoid touching eyes, nose and mouth Why? Hands touch many surfaces which can be contaminated with the virus. If you touch your eyes, nose or mouth with your contaminated hands, you can transfer the virus from the surface to yourself.  If you have fever, cough and difficulty breathing, seek medical care early. Tell your health care provider if you have travelled in an area in China where 2019-nCoV has been reported, or if you have been in close contact with someone with who has travelled from China and has respiratory symptoms. Why? Whenever you have fever, cough and difficulty breathing it’s important to seek medical attention promptly as this may be due to a respiratory infection or other serious condition. Respiratory symptoms with fever can have a range of causes, and depending on your personal travel history and circumstances, 2019-nCoV could be one of them.  If you have mild respiratory symptoms and no travel history to or within China, carefully practice basic respiratory and hand hygiene and stay home until you are recovered, if possible.'),
    ],
  ),
  Entry(
    'How to deal with moisture migration in grains?',
    <Entry>[
      Entry(
          'Grain temperature can be used to minimize moisture migration within a bin. Your goal should be to try and keep the temperature within ten to fifteen degrees of the average outdoor temperatures.'),
    ],
  ),
  Entry(
    ' How to link with grain temperature monitoring system?',
    <Entry>[
      Entry(
          ''),
    ],
  ),
  Entry(
    'How to design your own storage model?',
    <Entry>[
      Entry(
          ''),
    ],
  ),
  
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
