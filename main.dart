import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main()=>runApp(const Wayne());

class Wayne extends StatelessWidget{
 const Wayne({super.key});
 @override Widget build(BuildContext c)=>MaterialApp(
  debugShowCheckedModeBanner:false,title:'WAYNE Health',
  theme:ThemeData(brightness:Brightness.dark,scaffoldBackgroundColor:const Color(0xff080b14),
  colorScheme:ColorScheme.fromSeed(seedColor:const Color(0xff8b7cff),brightness:Brightness.dark),
  textTheme:GoogleFonts.interTextTheme(ThemeData.dark().textTheme)),
  home:const Shell());
}
class Shell extends StatefulWidget{const Shell({super.key});@override State<Shell> createState()=>_Shell();}
class _Shell extends State<Shell>{int i=0;final pages=[const Today(),const Coach(),const Progress(),const Profile()];
@override Widget build(BuildContext c)=>Scaffold(body:SafeArea(child:pages[i]),bottomNavigationBar:NavigationBar(
backgroundColor:const Color(0xff0d111e),indicatorColor:const Color(0xff29233f),selectedIndex:i,
onDestinationSelected:(v)=>setState(()=>i=v),destinations:const[
NavigationDestination(icon:Icon(Icons.grid_view_rounded),label:'Today'),
NavigationDestination(icon:Icon(Icons.auto_awesome_rounded),label:'AI Coach'),
NavigationDestination(icon:Icon(Icons.insights_rounded),label:'Progress'),
NavigationDestination(icon:Icon(Icons.person_rounded),label:'Profile')]));}

class Today extends StatelessWidget{const Today({super.key});
@override Widget build(BuildContext c)=>ListView(padding:const EdgeInsets.all(20),children:[
const Row(children:[CircleAvatar(radius:25,backgroundColor:Color(0xff29233f),child:Icon(Icons.person)),SizedBox(width:12),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('Good morning, Vamsi',style:TextStyle(fontSize:20,fontWeight:FontWeight.w800)),Text('Your next level starts today.',style:TextStyle(color:Color(0xff8e96af)))])),Icon(Icons.notifications_none_rounded)]),
const SizedBox(height:24),const HeroCard(),const SizedBox(height:22),const Text('Today at a glance',style:TextStyle(fontSize:19,fontWeight:FontWeight.w800)),const SizedBox(height:12),
const Row(children:[Expanded(child:Metric('Weight','92.3','kg',Icons.monitor_weight,Color(0xff9d8cff))),SizedBox(width:12),Expanded(child:Metric('Steps','6,842','/ 10k',Icons.directions_walk,Color(0xff59d6b2)))]),
const SizedBox(height:12),const Row(children:[Expanded(child:Metric('Calories','1,248','kcal',Icons.local_fire_department,Color(0xffffb86b))),SizedBox(width:12),Expanded(child:Metric('Recovery','82','%',Icons.favorite_border,Color(0xff72b7ff)))]),
const SizedBox(height:24),const Text('Your mission',style:TextStyle(fontSize:19,fontWeight:FontWeight.w800)),const SizedBox(height:12),
const Mission('Upper-body foundation','Strength • 32 min • Beginner',.42,Icons.fitness_center,Color(0xff9d8cff)),
const SizedBox(height:10),const Mission('Evening walk','Zone 2 • 25 min • Easy pace',.68,Icons.directions_walk,Color(0xff59d6b2)),
const SizedBox(height:22),Container(padding:const EdgeInsets.all(18),decoration:BoxDecoration(color:const Color(0xff15162b),borderRadius:BorderRadius.circular(22),border:Border.all(color:const Color(0xff39345e))),child:const Row(crossAxisAlignment:CrossAxisAlignment.start,children:[Icon(Icons.auto_awesome,color:Color(0xffb7a8ff)),SizedBox(width:12),Expanded(child:Text('AI insight: keep today’s strength session controlled and finish with an easy walk. Small wins compound.',style:TextStyle(height:1.45,color:Color(0xffc9cbe0))))]))]);}

class HeroCard extends StatelessWidget{const HeroCard({super.key});@override Widget build(BuildContext c)=>Container(padding:const EdgeInsets.all(22),decoration:BoxDecoration(borderRadius:BorderRadius.circular(28),gradient:const LinearGradient(colors:[Color(0xff30265c),Color(0xff101725)]),border:Border.all(color:Color(0xff51447d))),child:const Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('BODY RECOMPOSITION',style:TextStyle(letterSpacing:1.5,color:Color(0xffbeb1ff),fontSize:11,fontWeight:FontWeight.w800)),SizedBox(height:14),Text('Your body.\\nYour system.\\nYour evolution.',style:TextStyle(fontSize:29,height:1.1,fontWeight:FontWeight.w900)),SizedBox(height:18),Text('Target date  •  09 March 2027',style:TextStyle(color:Color(0xffc7c1e8),fontWeight:FontWeight.w700))]);}

class Metric extends StatelessWidget{final String a,b,d;final IconData icon;final Color color;const Metric(this.a,this.b,this.d,this.icon,this.color,{super.key});@override Widget build(BuildContext c)=>Container(padding:const EdgeInsets.all(16),decoration:BoxDecoration(color:const Color(0xff101521),borderRadius:BorderRadius.circular(20),border:Border.all(color:const Color(0xff20283a))),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Icon(icon,color:color),const SizedBox(height:12),Text(a,style:const TextStyle(color:Color(0xff8f98af),fontSize:12)),const SizedBox(height:4),Text('$b $d',style:const TextStyle(fontSize:22,fontWeight:FontWeight.w800))]));}
class Mission extends StatelessWidget{final String a,b;final double p;final IconData icon;final Color color;const Mission(this.a,this.b,this.p,this.icon,this.color,{super.key});@override Widget build(BuildContext c)=>Container(padding:const EdgeInsets.all(16),decoration:BoxDecoration(color:const Color(0xff101521),borderRadius:BorderRadius.circular(20),border:Border.all(color:const Color(0xff20283a))),child:Row(children:[Icon(icon,color:color,size:28),const SizedBox(width:14),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text(a,style:const TextStyle(fontWeight:FontWeight.w800)),Text(b,style:const TextStyle(color:Color(0xff8f98af),fontSize:12)),const SizedBox(height:9),LinearProgressIndicator(value:p,color:color,backgroundColor:const Color(0xff242b3a))])),const SizedBox(width:10),Text('${(p*100).round()}%',style:TextStyle(color:color,fontWeight:FontWeight.w800))]));}

class Coach extends StatelessWidget{const Coach({super.key});@override Widget build(BuildContext c)=>ListView(padding:const EdgeInsets.all(20),children:[const Text('WAYNE AI',style:TextStyle(color:Color(0xffb7a8ff),letterSpacing:1.5,fontWeight:FontWeight.w800)),const SizedBox(height:8),const Text('Your intelligent\\nhealth companion.',style:TextStyle(fontSize:31,height:1.1,fontWeight:FontWeight.w900)),const SizedBox(height:12),const Text('Ask about training, food, recovery, fasting or progress.',style:TextStyle(color:Color(0xff8f98af))),const SizedBox(height:25),...['Build today’s workout','Plan my meals','Check my recovery','Explain my health report'].map((x)=>Container(margin:const EdgeInsets.only(bottom:12),padding:const EdgeInsets.all(18),decoration:BoxDecoration(color:const Color(0xff101521),borderRadius:BorderRadius.circular(20),border:Border.all(color:const Color(0xff20283a))),child:Row(children:[const Icon(Icons.auto_awesome,color:Color(0xffb7a8ff)),const SizedBox(width:14),Expanded(child:Text(x,style:const TextStyle(fontWeight:FontWeight.w800))),const Icon(Icons.chevron_right)]))) ]);}

class Progress extends StatelessWidget{const Progress({super.key});@override Widget build(BuildContext c)=>ListView(padding:const EdgeInsets.all(20),children:[const Text('Your progress',style:TextStyle(fontSize:30,fontWeight:FontWeight.w900)),const SizedBox(height:8),const Text('Consistency is the real transformation.',style:TextStyle(color:Color(0xff8f98af))),const SizedBox(height:24),const Metric('Weight trend','95.0 → 92.3','kg',Icons.show_chart,Color(0xff9d8cff)),const SizedBox(height:14),const Metric('Waist','106','cm',Icons.straighten,Color(0xffffb86b)),const SizedBox(height:14),const Metric('Body fat estimate','28–30','%',Icons.donut_large,Color(0xff59d6b2))]);}
class Profile extends StatelessWidget{const Profile({super.key});@override Widget build(BuildContext c)=>ListView(padding:const EdgeInsets.all(20),children:[const Text('Your profile',style:TextStyle(fontSize:30,fontWeight:FontWeight.w900)),const SizedBox(height:24),const CircleAvatar(radius:38,backgroundColor:Color(0xff29233f),child:Icon(Icons.person,size:42)),const SizedBox(height:12),const Center(child:Text('Vamsi',style:TextStyle(fontSize:22,fontWeight:FontWeight.w800))),const SizedBox(height:24),...['Goal: Fat loss + muscle retention','Height: 170 cm','Starting weight: 95 kg','Target date: 9 March 2027'].map((x)=>Container(margin:const EdgeInsets.only(bottom:10),padding:const EdgeInsets.all(17),decoration:BoxDecoration(color:const Color(0xff101521),borderRadius:BorderRadius.circular(18)),child:Text(x))) ]);}
