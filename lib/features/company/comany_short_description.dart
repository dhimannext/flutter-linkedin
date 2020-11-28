import 'package:flutter/material.dart';
import 'package:linkedin/data/company_data.dart';
import 'package:linkedin/models/company.dart';
import 'package:provider/provider.dart';
import 'package:meta/meta.dart';

class CompanyShortDescription extends StatelessWidget {
  final String companyID;

  const CompanyShortDescription({Key key, @required this.companyID})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final companyProvider = Provider.of<CompanyData>(context);
    Company company = companyProvider.companies.firstWhere((x)=>x.id==companyID);
    return ListTile(
      leading: Container(
        width: 50,
        height: 40,
        child: Image.network(
          'https://image3.mouthshut.com/images/imagesp/925718280s.png',//company.imageUrl,
          fit: BoxFit.fill,
        ),
      ),
      title: Text(DateTime.now().millisecondsSinceEpoch%2==0?'Pavi Saraswat':'Pooja Deswal'),
      subtitle: Text("${company.followers} followers"),
    );
  }
}
