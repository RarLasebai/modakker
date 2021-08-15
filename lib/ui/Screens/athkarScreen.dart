import 'package:agendaapp/main.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class AthkarScreen extends StatefulWidget {
  @override
  _AthkarScreenState createState() => _AthkarScreenState();
}

Widget athkarCard(int _currentDekerIndex, List _deker) {
  return Container(
    height: 400,
    width: 200,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFF19110978), Color(0xFF191177174)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight),
        boxShadow: [
          BoxShadow(
              color: Colors.brown.withOpacity(0.4),
              blurRadius: 8,
              spreadRadius: 2,
              offset: Offset(4, 4))
        ],
        borderRadius: BorderRadius.all(Radius.circular(24))),
    child: Container(
        child: OverflowBox(
            child: Column(
      children: [
        Expanded(
          child: PageTransitionSwitcher(
            duration: Duration(seconds: 2),
            transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
                SharedAxisTransition(
                    animation: primaryAnimation,
                    secondaryAnimation: secondaryAnimation,
                    transitionType: SharedAxisTransitionType.vertical,
                    child: child),
            child: _deker[_currentDekerIndex],
          ),
        ),
      ],
    ))),
  );
}

class _AthkarScreenState extends State<AthkarScreen> {
  int _currentDekerIndex = 0;
  int _currentSleepIndex = 0;
  final _morning = <Widget>[
    Expanded(
        flex: 1,
        child: new SingleChildScrollView(
            scrollDirection: Axis.vertical, //.horizontal
            child: new Text(
              "الحمد لله وحده والصلاة والسلام على من لا نبيَّ بعده\n\n قراءة آية الكرسي -مرة واحدة \n\nقراءة سور الإخلاص، الفلق، الناس -ثلاث مرات" +
                  "\n\nأصبحنا وأصبح الملك لله، والحمد لله، لاإله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير\n\n" +
                  "ربِّ أسألك خير ما في هذا اليوم وخير مابعده، وأعوذ بك من شر ما في هذا اليوم وشرِّ مابعده، ربِّ أعوذ بك من الكسل وسوء الكبر رب أعوذ بك من عذاب في النار وعذابٍ في القبر\n",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ))),
    Expanded(
        flex: 1,
        child: new SingleChildScrollView(
            scrollDirection: Axis.vertical, //.horizontal
            child: new Text(
              "اللهم بكَ أصبحنا وبكَ أمسينا وبكَ نحيا وبكَ نموت وإليك النشور\n\nاللهم أنت ربي لا إله إلا أنت، خلقتني وأنا عبدك وأنا على عهدك ووعدك ماستطعت، أعوذ بكَ من شرِّ ما صنعت، أبوء لكَ بنعمتك عليَّ وأبوء بذنبي، فاغفر لي فإنه لا يغفر الذنوب إلا أنت \n\n" +
                  "اللهم إني أصبحت أشهدك وأشهد حملة عرشك، وملائكتك وجميع خلقك أنك أنت الله لا إله إلا أنت وحدك لا شريك لك، وأن محمداً عبدك ورسولك -أربع مرات \n\n" +
                  "اللهم ماأصبح بي من نعمة أو بأحد من خلقك فمنك وحدك لا شريك لك، فلكَ الحمد ولك الشكر\n اللهم عافني في بدني، اللهم عافني في سمعي، اللهم عافني في بصري، لا إله إلا أنت، اللهم إني أعوذ بك من الكفر والفقر وأعوذ بك من عذاب القبر، لا إله إلا أنت -ثلاث مرات\n حسبي الله لا إله إلا هو عليه توكلت وهو رب العرش العظيم -سبع مرات\n",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ))),
    Expanded(
        flex: 1,
        child: new SingleChildScrollView(
            scrollDirection: Axis.vertical, //.horizontal
            child: new Text(
              "اللهم إني أسألك العفو والعافية، في الدنيا والآخرة، اللهم إني أسألك العفو والعافية، في ديني ودنياي، وأهلي ومالي، اللهم استر عوراتي وآمن روعاتي، اللهم احفظني من بين يديَّ ومن خلفي، وعن يميني وعن شمالي ومن فوقي، وأعوذ بعظمتك أن أغتال من تحتي\n\n" +
                  "اللهم عالم الغيب والشهادة، فاطر السماوات والأرض، ربَّ كلِّ شيء ومليكه، أشهد أن لا إله إلا أنت، أعوذ بكّ من شرِّ نفسي ومن شرِّ الشيطان وشركه، وأن أقترف على نفسي سوءاً أو أجرَّهُ إلى مسلم\n\n" +
                  "بسم الله الذي لا يضرُّ مع اسمه شيء في الأرض ولا في السماء، وهو السميع العليم -ثلاث مرات\n\n رضيتُ بالله ربّاً وبالإسلام ديناً وبمحمدٍ صلَّى الله عليه وسلَّمَ نبيّاً\n\n" +
                  "ياحيُّ يا قيوم، برحمتك أستغيث، أصلح لي شأني كلَّه ولا تكلني إلى نفسي طرفةَ عين\n\n أصبحنا وأصبح الملك لله رب العالمين، اللهم إني أسألك خير هذا اليوم، فتحه ونصره ونوره وبركته وهُداه، وأعوذ بك من شرِّ ما فيه وشرِّ ما بعده\n\n ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ))),
    Expanded(
        flex: 1,
        child: new SingleChildScrollView(
            scrollDirection: Axis.vertical, //.horizontal
            child: new Text(
              "أصبحنا على فطرة الإسلام وعلى كلمة الإخلاص وعلى دين نبينا محمد صلى الله عليه وسلم وعلى ملة أبينا إبراهيم، حنيفاً مسلماً وماكان من المشركين\n\n سبحان الله وبحمده -مائة مرة \n\n " +
                  "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير -عشر مرات \n\n سبحان الله وبحمده عدد خلقه ورضى نفسه وزنة عرشه ومداد كلماته -صباحاً، ثلاث مرات\n\n اللهم إني أسألك علماً نافعاً ورزقاً طيباً وعملاً متقبلاً-ثباحاً \n\n" +
                  "أستغفر الله وأتوب إليه -مائة مرة \n\n أعوذ بكلمات الله التامات من شر ما خلق -مساءً، ثلاث مرات \n\n اللهم صلِّ وسلّم على نبينا محمد -عشر مرات\n\n",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ))),
  ];
  final _sleep = <Widget>[
    Expanded(
        flex: 1,
        child: new SingleChildScrollView(
            scrollDirection: Axis.vertical, //.horizontal
            child: new Text(
              "يجمع كفَّيْه ويقرأ سور الناس والفلق والإخلاص ثلاث مرات، ثم ينفث فيهما ويمسح بهما ماستطاع من جسده\n\n قراءة آية الكرسي وآخر عشر آياء من سورة البقرة 'آمن الرسول بما أُنزل إليه....'-مرة واحدة \n\n " +
                  "باسمك ربي وضعتُ جنبي، وبك أرفعه، فإن أمسكت نفسي فارحمها، وإن أرسلتها فاحفظها بما تحفظُ به عبادك الصالحين\n\n اللهم إنك خلقت نفسي وأنت توفَّاها، لك مماتها ومحياها، إن أحييتها فاحفظها وإن أمتها فاغفر لها، اللهم إني أسألك العافية\n\n اللهم قني عذابك بوم تبعثُ عبادك \n\n باسمك اللهم أموت وأحيا\n\n"
                      "سبحان الله -ثلاثاً وثلاثين مرة \n\n الحمد لله -ثلاثاً وثلاثين مرة \n\n الله أكبر -أربعاً وثلاثين مرة\n\n",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ))),
    Expanded(
        flex: 1,
        child: new SingleChildScrollView(
            scrollDirection: Axis.vertical, //.horizontal
            child: new Text(
              "اللهم ربَّ السماوات السبع وربَّ الأرض ورب العرش العظيم، ربنا ورب كل شيء، فالق الحّبِّ والنَّوى، ومنزل التوراة والإنجيل والفرقان، أعوذ بك من شر كل شيء أنت آخذ بناصيته، اللهم أنت الأول فليس قبلك شيء، وأنت الآخر فليس بعدك شيء، وأنت الظاهر فليس فوقك شيء، وأنت الباطن فليس دونكَ شيء، اقضِ عنا الدَّيْنَ وأغننا من الفقر\n\n" +
                  "الحمد لله الذي أطعمنا وسقانا، وكفانا وآوانا، فكم ممن لا كافيّ له ولا مؤوي\n\n اللهم علم الغيب والشهادة فاطر السماوات والأرض، ربَّ كل شيء ومليكه، أشهد أن لا إله إلا أنت، أعوذ بك من شر نفسي ومن شر الشيطان وشركه، وأن أقترف على نفسي سوءاً أو أجره إلى مسلم\n\n" +
                  "اللهم أسلمت نفسي إليكَ وفوضتُ أمري إليك وألجأت ظهري إليك، رغبة ورهبة إليك، لا ملجأ ولا منجا منك إلا إليك، آمنت بكتابك الذي أنزلت، وبنبِيِّك الذي أرسلت\n\n يقرأ سورة الملك وسورة السجدة، لا يُشترط قراءتها قبل النوم مباشرة، بل من بعد أذان المغرب\n\n",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MaterialColor(0xFF880E4F, color),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushReplacementNamed('home');
                });
              }),
          title: Text("الأذكار", style: Theme.of(context).textTheme.headline1),
        ),
        body: ListView(children: [
          SizedBox(height: 15.0),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "أذكار الصباح والمساء",
              style: Theme.of(context).textTheme.headline1,
              // TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Icon(Icons.nights_stay),
            Icon(Icons.wb_sunny),
          ]),
          SizedBox(height: 15.0),
          athkarCard(_currentDekerIndex, _morning),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: this._currentDekerIndex == 0
                          ? null
                          : () => setState(() => this._currentDekerIndex--),
                      child: const Icon(Icons.arrow_back)),
                  ElevatedButton(
                    onPressed: this._currentDekerIndex == 3
                        ? null
                        : () => setState(() => this._currentDekerIndex++),
                    child: Icon(Icons.arrow_forward),
                  )
                ],
              )),
          SizedBox(height: 15.0),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("أذكار النوم", style: Theme.of(context).textTheme.headline1),
            Icon(Icons.king_bed_outlined)
          ]),
          SizedBox(height: 15.0),
          athkarCard(_currentSleepIndex, _sleep),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: this._currentSleepIndex == 0
                          ? null
                          : () => setState(() => this._currentSleepIndex--),
                      child: const Icon(Icons.arrow_back)),
                  ElevatedButton(
                    onPressed: this._currentSleepIndex == 1
                        ? null
                        : () => setState(() => this._currentSleepIndex++),
                    child: Icon(Icons.arrow_forward),
                  )
                ],
              ))
        ]));
  }
}
