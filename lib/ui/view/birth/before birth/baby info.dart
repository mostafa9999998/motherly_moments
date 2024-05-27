
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/birth/BirthMaster_bar.dart';
import 'package:provider/provider.dart';

import '../../../view_model/provider/main provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BabyInfoScreen extends StatefulWidget {
   BabyInfoScreen({super.key});
   static String babyInfoScreenname = 'BabyInfoScreen';
  @override
  State<BabyInfoScreen> createState() => _BabyInfoScreenState();
}

class _BabyInfoScreenState extends State<BabyInfoScreen> {
   TextEditingController babyname = TextEditingController();

   GlobalKey<FormState> formk = GlobalKey();

   DateTime selectdate = DateTime.now();

   

   String? selectedValue;

   @override
  Widget build(BuildContext context) {
    final List<String> genderItems = [
     AppLocalizations.of(context)!.male,
     AppLocalizations.of(context)!.female,
   ];
     Mainprovider provider = Provider.of(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.05 ,vertical: MediaQuery.of(context).size.height*.1, ),
        child: Form(
          key: formk,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(AppLocalizations.of(context)!.babytitel,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.babyQ
                  ),
                  controller: babyname,
                  validator: (value) {
                    if (value! .isEmpty || value.trim().isEmpty){
                      return AppLocalizations.of(context)!.babyname;
                    }
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    // Add Horizontal padding using menuItemStyleData.padding so it matches
                    // the menu padding when button's width is not specified.
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // Add more decoration..
                  ),
                  hint: Text(
                    AppLocalizations.of(context)!.genderQ,
                    style: TextStyle(fontSize: 14),
                  ),
                  items: genderItems
                      .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
                      .toList(),
                  validator: (value) {
                    if (value == null) {
                      return AppLocalizations.of(context)!.pselectg;
                    }
                    return null;
                  },
                  onSaved: (value) {
                    setState(() {
                      selectedValue = value.toString();
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value.toString();
                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.only(right: 8),
                  ),
                  iconStyleData: const IconStyleData(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black45,
                    ),
                    iconSize: 24,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.09,),
                InkWell(
                  onTap: () {
                    selectcalender(context,provider);

                  },
                  child: Text(AppLocalizations.of(context)!.selectbirth,
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.blue),
                      textAlign: TextAlign.center),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.3,),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: MediaQuery.sizeOf(context).width * 0.15,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formk.currentState?.validate() == true){
                      provider.setbabyname(babyname.text);
                      Navigator.pushReplacementNamed(context, BirthMasterscreen.birthmastername);}
                    },
                    child: Text(
                      AppLocalizations.of(context)!.seemils,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff8461D5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

   void selectcalender(BuildContext context , Mainprovider provider) async{
     var chosendate = await showDatePicker(context: context,
         initialDate: DateTime.now(),
         firstDate: DateTime.now().subtract(Duration(days: 500)),
         lastDate: DateTime.now().add(Duration(days: 270)));
     if (chosendate!= null){
       selectdate = chosendate;
       provider.setdate(chosendate);
     }
   }
}
