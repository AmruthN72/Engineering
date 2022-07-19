import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
   InfoPage({Key? key,this.value,this.disaster}) : super(key: key);

  int? value;
  String? disaster;
  List text = [Text("DO’s: \n\n"
      "•	Stay indoors during the heavy rains and not allow children to venture out, to swim or play in water bodies and stagnant water.\n"
      "•	Strictly avoid any loose and dangling wires from lamp posts. If you have to drive, do drive carefully.\n"
      "•	Switch off the electrical mains in your house.\n"
      "•	Keep emergency lights and mobile phones charged.\n"
      "•	Stock adequate quantities of candles and matches.\n"
      "•	Make provisions for children and adults requiring special diets.\n"
      "•	Keep medicine special food for babies and children or elders. Remain calm.\n\n"
      "DON'Ts:\n\n"
      "•	Avoid being misled by rumours.\n"
      "•	Don't leave shelters until informed by the rescue personals.\n"
      "•	Don't leave the safer place during a lull, however, minor repairs can be carried out.\n"
      "•	Don't touch the loose and dangling wire from a lamp post, it may have an electric current.\n"
      ,style: TextStyle(fontSize: 20),),
    Text("Do’s:\n\n"
        "	Avoid building in flood prone areas unless you elevate and reinforce your home.\n"
        "	Elevate the furnace, water heater, and electric panel if susceptible to flooding.\n"
        "	Install \"Check Valves\" in sewer traps to prevent floodwater from backing up into the drains of your home.\n"
        "	Contact community officials to find out if they are planning to construct barriers (levees, beams and floodwalls) to stop floodwater from entering the homes in your area.\n"
        "	Seal the walls in your basement with waterproofing compounds to avoid seepage.\n"
        "If you must prepare to evacuate, you should:\n"
        "	Secure your home. If you have time, bring in outdoor furniture. Move essential items to an upper floor.\n"
        "	Turn off utilities at the main switches or valves if instructed to do so. Disconnect electrical appliances. Do not touch electrical equipment if you are wet or standing in water.\n\n"
        "Don’ts:\n\n"
        "	Do not walk through moving water. Six inches of moving water can make you fall. If you have to walk in water, walk where the water is not moving. Use a stick to check the firmness of the ground in front of you.\n"
        "	Do not drive into flooded areas. If floodwaters rise around your car, abandon the car and move to higher ground if you can do so safely. You and the vehicle can be quickly swept away.\n",style: TextStyle(fontSize: 20),),

    Text("What to Do Before an Earthquake: \n\n"
        "	Repair deep plaster cracks in ceilings and foundations. Get expert advice if there are signs of structural defects.\n"
        "	Anchor overhead lighting fixtures to the ceiling.\n"
        "	Follow BIS codes relevant to your area for building standards\n"
        "	Fasten shelves securely to walls.\n"
        "	Place large or heavy objects on lower shelves."
        "	Store breakable items such as bottled foods, glass, and china in low, closed cabinets with latches.\n"
        "	Hang heavy items such as pictures and mirrors away from beds, settees, and anywhere that people sit.\n"
        "	Brace overhead light and fan fixtures.\n"
        "	Repair defective electrical wiring and leaky gas connections. These are potential fire risks.\n"
        "	Secure water heaters, LPG cylinders etc., by strapping them to the walls or bolting to the floor.\n"
        "	Store weed killers, pesticides, and flammable products securely in closed cabinets with latches and on bottom shelves.\n"
        "	Identify safe places indoors and outdoors.\n"
        "	Under strong dining table, bed\n"
        "	Against an inside wall\n"
        "	Away from where glass could shatter around windows, mirrors, pictures, or where heavy bookcases or other heavy furniture could fall over\n"
        "	In the open, away from buildings, trees, telephone and electrical lines, flyovers and bridges\n"
        "	Know emergency telephone numbers (such as those of doctors, hospitals, the police, etc)\n"
        "	Educate yourself and family members \n"
        "Don’ts:\n\n"
        "If outdoors\n"
        "	Do not move from where you are. However, move away from buildings, trees, streetlights, and utility wires.\n"
        "	If you are in open space, stay there until the shaking stops. The greatest danger exists directly outside buildings; at exits; and alongside exterior walls. Most earthquake-related casualties result from collapsing walls, flying glass, and falling objects.\n"
        "If in a moving vehicle\n"
        "	Stop as quickly as safety permits and stay in the vehicle. Avoid stopping near or under buildings, trees, overpasses, and utility wires.\n"
        "	Proceed cautiously once the earthquake has stopped. Avoid roads, bridges, or ramps that might have been damaged by the earthquake.\n"
        "If trapped under debris\n"
        "	Do not light a match.\n"
        "	Do not move about or kick up dust.\n"
        "	Cover your mouth with a handkerchief or clothing.\n"
        "	Tap on a pipe or wall so rescuers can locate you. Use a whistle if one is available. Shout only as a last resort. Shouting can cause you to inhale dangerous amounts of dust.\n\n",style: TextStyle(fontSize: 20),),
  Text(  "Do’s:\n\n"
      "• Know your forest fire risk,\n"
      "• Make a forest emergency plan\n"
      "• familiarize yourself with local emergency plans\n"
      "• Be informed and make others aware about mobile. email. radio, TV alerts/warnings systems accessible in your locality for forest fire.\n"
      "• Be aware of weather updates. emergency instructions or evacuation orders\n"
      "• Educate family members and neighbours on plans, do’s  and don’ts in case of forest fires.\n"
      "• Practice evacuating your home\n"
      "• Teach all household members the technique of stop, drop, and roll in case cloth catches fire\n"
      "• Plan more than one escape routes before the fire season sets in.\n"
      "• Create a safety zone around your home by removing vegetation/articles that easily catch fire.\n"
      "Donts:\n\n"
      "• Preventing Forest Fire untended without completely extinguishing, checking and rechecking the ashes near vegetation.\n"
      "• Do NOT leave/throw cigarettes, matches, and other smoking materials from moving vehicles near forest area without completely extinguishing it.\n"
      "• Do NOT lea ve behind flammables during outdoor earn] ing in forests. • /v . oid any 01 en burn ing in windy conditions .\n",style: TextStyle(fontSize: 20),)
  ];
  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5c64b8),
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            widget.disaster!
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
            child: widget.text[widget.value!],)


          ],
        ),
      ),
    );
  }
}
