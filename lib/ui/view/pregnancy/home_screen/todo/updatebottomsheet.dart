import 'package:flutter/material.dart';
import 'package:motherly_moments/data/repo/apis/baby%20groth/Api%20manager.dart';
import 'package:motherly_moments/data/repo/moduls/todo/TaskBody.dart';
import 'package:motherly_moments/ui/view_model/provider/main%20provider.dart';
import 'package:provider/provider.dart';

import '../../../../utils/loading.dart';

class ShowUpdatebottomsheet extends StatefulWidget {
  ShowUpdatebottomsheet({super.key,});

  @override
  State<ShowUpdatebottomsheet> createState() => _ShowUpdatebottomsheetState();
}

class _ShowUpdatebottomsheetState extends State<ShowUpdatebottomsheet> {
  GlobalKey<FormState>  formkey = GlobalKey();
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
            'Update the Task',
            style:TextStyle(fontSize: 20,fontWeight: FontWeight.w800),
          )),
          Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(height:MediaQuery.of(context).size.height*.03 ,),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Enter New Task Title'),
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
                      hintText: 'Enter New Task Description',
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

          SizedBox(height: 30),
          ElevatedButton(onPressed: (){
            updatethetask();
          },
              child:Text('Update',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 22  ),)
          )
        ],
      ),
    );
  }

  void updatethetask() async {

if (formkey.currentState!.validate()){
  try{
    showLoading(context);
    Mainprovider provider = Provider.of<Mainprovider>(context,listen: false);
    var R = Apimanager.updatetask(provider.taskid,title!,content!);
    if(await R){
      hideLoading(context);
      showerror(context, 'Task Updated successfully');
      provider.notifyListeners();
    } else{
      hideLoading(context);
      showerror(context, 'some thing went wrong');
    }
  }
  catch(e){
    hideLoading(context);
    showerror(context, 'some thing went wrong');
  }
}
  }

}
