import 'package:flutter/material.dart';
import 'package:motherly_moments/data/repo/apis/baby%20groth/Api%20manager.dart';
import 'package:motherly_moments/data/repo/moduls/todo/TaskBody.dart';
import 'package:motherly_moments/ui/view_model/provider/main%20provider.dart';
import 'package:provider/provider.dart';

import '../../../../utils/loading.dart';

class Showbottomsheet extends StatefulWidget {
  Showbottomsheet({super.key});

  @override
  State<Showbottomsheet> createState() => _ShowbottomsheetState();
}

class _ShowbottomsheetState extends State<Showbottomsheet> {
  GlobalKey<FormState>  formkey = GlobalKey();
  DateTime date =DateTime.now();
  String? title ;
  String? content;
  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
              child: Text(
            'Add New Task',
            style: Theme.of(context).textTheme.titleMedium,
          )),
          Form(
              key: formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Enter Task Title'),
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'please enter title';
                      } else {
                        return null;
                      }
                    },
                    onChanged: (text){
                      title=text;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Task Description',
                    ),
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'please enter description';
                      } else {
                        return null;
                      }
                    },
                    onChanged: (text){
                    content=text;
                  },
                  )
                ],
              ),

          ),
          SizedBox(height: 20),
          Text('Select Date',style: Theme.of(context).textTheme.titleSmall,),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              showselectatae();
              setState(() {});
            },
            child: Center(
              child: Text('${date.year}/${date.month}/${date.day}',style:TextStyle(fontSize: 18,)),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(onPressed: (){
            addthetask();
          },
              child:Text('Add',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 22  ),)
          )
        ],
      ),
    );
  }

  void addthetask() async {

if (formkey.currentState!.validate()){
  try{
    showLoading(context);
    var R = Apimanager.addtask(title!,content!,"34" , date);
    if(await R){
      hideLoading(context);
      showerror(context, 'Task added successfully');
      setState(() {});
    } else{
      hideLoading(context);
      showerror(context, 'some thing went wrong');
    }
  }
  catch(e){
    hideLoading(context);
    showerror(context, e.toString());
  }
}
  }

  void showselectatae() async{
    var chosendate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365))
    );
    if (chosendate !=null){
    date = chosendate;
    }
  }
}
