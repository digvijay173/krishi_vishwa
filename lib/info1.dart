import 'package:flutter/material.dart';
import 'package:krishi_vishwa/credit.dart';

class Info1 extends StatefulWidget {
  @override
  _Info1State createState() => _Info1State();
}

class _Info1State extends State<Info1> {
  List<Processlist> process2 = [
    Processlist('1.Crop Selection', 'step1',
        '''As a farmer, the first step in starting a farm is deciding what you want to produce. We’ve covered quite a few types of farming, but the options don’t end there.

You can grow or raise just about any plant or animal you’d like on your small farm as long as the circumstances are right.

What you plan to produce will weigh heavily on your preferences and interests as a farmer. It is also important to point out that there are a lot of ethical questions that arise when you decide to found a small farm.

Agriculture, in general, relies greatly on the land and other creatures. If sustainability is important to you as a farmer, you’ll likely want to start leaning towards growing crops in a fashion that promotes biodiversity. 

Ultimately, you will want to consider what sort of agricultural products will provide the return on investment that you are hoping for with your small farm.'''),
    Processlist('2.Land Preparation', 'step2',
        '''When establishing a new date plantation, certain actions need to be implemented to ensure the long term success of the plantation. One of these actions involve the initial land preparation which should be done prior to transplanting of the plant material (offshoots or tissue culture-derived plants).

The purpose of land preparation is to provide the necessary soil conditions which will enhance the successful establishment of the young offshoots or the tissue culture plants received from the nursery. Considering the nature of the date palm, one can not "save" on this operation and hope for long term sustainability of the plantation.

The aim is to enable the date grower to plan and structure the implementation process in advance, ensuring the successful establishment of the date plantation. Planning forms part of the initial preparation and will help to limiting unnecessary stoppages during the implementation phase.

Critical factors to consider during this planning exercise are summarised as follows:

- Availability and quality of irrigation water;
- Field selection;
- Mechanical actions to be implemented;
- Chemical needs for pre-plant soil improvement;
- Tools and equipment needed for date cultivation;
- Labour needs;
- Irrigation design and installation;
- Leaching schedule;
- Hole preparation;
- Financial requirements and
- Time schedule.'''),
    Processlist('3.Seed Selection', 'step3',
        '''When it comes to farming, making an informed seed selection can make all the difference between a year of success and a year of decline. Having confidence in the information on hand to help make the right seed choices is vital.
Annual farm budgets are based on both fixed and variable costs. It’s a tight margin business, and profitability can vary widely. And, every year, you only get one chance to “get it right.” Having the right partners and tech-tools is critical to making the best decisions. Here are four best practices to help increase profitability and productivity for seed selection.
1. Choose the Best Seed at the Best Price
One of the best places to start evaluating what seed should be chosen for the year’s planting is to look at last year’s growth and yield for other regional farms. Review what seeds were purchased, how they performed, and how hybrids performed in the region in general.2. Reevaluate Seed Choices to Lower Costs
Once you have determined last year’s seed performance, you can be more confident about which seed packages will help expand the farm in the future. While a seed with multiple traits is more convenient, it’s also more expensive. 3. Increase Productivity Through Technology
Today’s forward-thinking farmers use technology to do more than drive equipment in the fields. They use it to analyze their fields, anticipate needs, increase efficiency, and make more informed decisions to produce higher harvest yields.4. Get Unbiased Insight
Just as finding the right agronomists and trusted advisors is vital for every grower, incorporating technology to make intelligent planting decisions is equally important. When looking for a tech solution, look for a partner whose goal is to help you make better decisions. Their primary focus should always be to provide reliable data and recommendations so that growers know their best interests come first, always.'''),
    Processlist('4.Seed Sowing', 'step4',
        '''As a farmer, the first step in starting a farm is deciding what you want to produce. We’ve covered quite a few types of farming, but the options don’t end there.
You can grow or raise just about any plant or animal you’d like on your small farm as long as the circumstances are right.
What you plan to produce will weigh heavily on your preferences and interests as a farmer. It is also important to point out that there are a lot of ethical questions that arise when you decide to found a small farm.
Agriculture, in general, relies greatly on the land and other creatures. If sustainability is important to you as a farmer, you’ll likely want to start leaning towards growing crops in a fashion that promotes biodiversity. 
Ultimately, you will want to consider what sort of agricultural products will provide the return on investment that you are hoping for with your small farm.'''),
    Processlist('5.Irrigation', 'step5',
        '''In areas where rain doesn’t come regularly or when growing water-hungry crops, farmers are forced to get creative. Irrigation uses groundwater, surface water, and water delivered directly to farms to hydrate thirsty plants.
Evapotranspiration and wind are issues farmers face when trying to get water to plants while avoiding waste. General access to water and a diminished supply are also struggles for farmers in many parts of the country. There are multiple ways to irrigate. Research has backed numerous effective application strategies, but each farmer has their own preference and budget. On this page, you’ll find an overview of techniques and how irrigation fits into the U.S. agriculture landscape.'''),
    Processlist('6.Crop Growth', 'step6',
        '''Growth of crops, plants or plant parts is defined as the irreversible increase in size whereas development is the continuous change in plant form and function with characteristic transition phases. Growth is primarily associated with capture and allocation of resources whereas development is mostly related to non-resource environmental cues such as temperature, photoperiod and light quality. We separate development and growth conceptually, but both types of processes are closely linked. Thermal time and variations of thermal time corrected to account for photoperiod and vernalization are useful to model crop phenological development. Crop development, in particular the time of flowering, is one of the most important traits for crop adaptation. Breeders, agronomists and growers understand the importance of matching the pattern of phenological development to their particular environments, and use a combination of genetic and agronomic tools to manipulate development. Crop growth depends on the capacity of the canopy to capture CO2 and radiation, the capacity of the root system to capture water and nutrients from soil, and the efficiency of the crop to transform resources (water, nutrients, radiation, carbon dioxide) into dry matter. Stresses such as water deficits or soil compaction reduce growth by reducing the amount of resources captured by the crop, by reducing the efficiency in the use of resources or both.'''),
    Processlist('7.Fertilizing', 'step7',
        '''Fertilizers replace the nutrients that crops remove from the soil. Without the addition of fertilizers, crop yields and agricultural productivity would be significantly reduced. That’s why mineral fertilizers are used to supplement the soil’s nutrient stocks with minerals that can be quickly absorbed and used by crops. 
Thus, in order to meet human nutritional needs in the crops and meat we eat, we need to replace what we take out. The key is to get this balance right and to maintain a level of nutrients in soils that will support our crops without applying excess.
Each crop draws down from these reserves and we need to replace them with fertilizers, every year and after every crop.
Put simply – we use fertilizer to: 
Provide nutrients not available in the soil.
Replace nutrients removed at harvest.
Balance nutrients for better producequality and higher yield.'''),
    Processlist('8.Harvesting', 'step8',
        '''Being a precision farmer means implanting carefully thought out plans along each step of the way, from the inception of buying up the seed, through to seeding and cultivation and culminating in the all-important harvest.
Even if there is a bumper yield, failing to plan ahead costs farmers significant profit each and every year, some crop hasn’t got adequate storage, some isn’t harvested in the most efficient way and some is lost as spoilage due to slow harvesting practices.
By following these top 10 tips, you should see yourself nicely through the trying and exhaustive harvest period.
The main issue we come across with loss of yield is farmers not knowing when to harvest, so a lot of these tips will maximise yield and reduce spoilage by providing practical and simple solutions.
1.    When did you plant the crop?
2.    How healthy is your rotation?
3.    Has your rotation caused disease?
4.    Did your field have a stressful year?
5.    Use your eyes
9.    Environmental factors
8.    Is the soil healthy?
''')
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[400],
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Steps of Farming",
            style: TextStyle(color: Colors.black, fontSize: 30.0),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 20, 0),
                  child: Text(
                    '*Please read all the processes before starting the game.',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Expanded(
                child: GridView.count(
                  crossAxisCount: 4,
                  childAspectRatio: (2 / 1),
                  controller: new ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  children: List.generate(process2.length, (index) {
                    final process = process2[index];
                    return new Container(
                      margin: new EdgeInsets.all(1.0),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            child: new Hero(
                              tag: process.tag,
                              child: new Container(
                                  alignment: FractionalOffset.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: new Text(
                                      process.name,
                                      style: TextStyle(fontSize: 25.0),
                                    ),
                                  )),
                            ),
                            onTap: () {
                              // ignore: missing_required_param
                              Navigator.of(context).push(
                                PageRouteBuilder(
                                  fullscreenDialog: true,
                                  pageBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation) {
                                    return Scaffold(
                                      appBar: new AppBar(
                                        backgroundColor: Colors.black,
                                        title: new Text(process.name),
                                      ),
                                      backgroundColor: Colors.yellow,
                                      body: new Hero(
                                          tag: process.tag,
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: new Text(process.para),
                                          )),
                                    );
                                  },
                                  transitionsBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation,
                                      Widget child) {
                                    var begin = Offset(0.0, 1.0);
                                    var end = Offset.zero;
                                    var curve = Curves.ease;

                                    var tween = Tween(begin: begin, end: end)
                                        .chain(CurveTween(curve: curve));
                                    return Align(
                                        child: SlideTransition(
                                      position: animation.drive(tween),
                                      child: child,
                                    ));
                                  },
                                ),
                              );
                              // new MaterialPageRoute(
                              //     fullscreenDialog: true,
                              //     builder: (BuildContext context) {
                              //       return new Scaffold(
                              //         appBar: new AppBar(
                              //           backgroundColor: Colors.black,
                              //           title: new Text(process.name),
                              //         ),
                              //         backgroundColor: Colors.yellow,
                              //         body: new Hero(
                              //             tag: process.tag,
                              //             child: Padding(
                              //               padding:
                              //                   const EdgeInsets.all(15.0),
                              //               child: new Text(process.para),
                              //             )),
                              //       );
                              //     }));
                            },
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Respond to button press
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Credit()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''Lets's Go''',
                        style: new TextStyle(
                          fontSize: 30.0,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildprocessCard(BuildContext context, int index) {
    final process = process2[index];
    return new Container(
      child: Card(
        child: InkWell(
          child: new Hero(
            tag: process.tag,
            child: new Container(
                alignment: FractionalOffset.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    process.name,
                    style: TextStyle(fontSize: 25.0),
                  ),
                )),
          ),
          onTap: () {
            // ignore: missing_required_param
            Navigator.push(
                context,
                new MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (BuildContext context) {
                      return new Scaffold(
                        appBar: new AppBar(
                          title: new Text(process.name),
                        ),
                        body: new Hero(
                            tag: process.tag,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: new Text(process.para),
                            )),
                      );
                    }));
          },
        ),
      ),
    );
  }
}

class Processlist {
  String name;
  String tag;
  String para;
  Processlist(this.name, this.tag, this.para);
}
