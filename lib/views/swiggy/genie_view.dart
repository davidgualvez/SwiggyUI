import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/widgets/dotted_seperator_view.dart';

class GenieView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Genie', style: Theme.of(context).textTheme.headline4),
                  UIHelper.verticalSpaceSmall(),
                  Text(
                    'Anything you need, deliverd.\nPick-up, Drop or Buy anything,\nfrom anywhere in your city',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.grey),
                  )
                ],
              ),
              Spacer(),
              UIHelper.horizontalSpaceMedium(),
              Image.asset(
                'assets/images/food2.jpg',
                height: 90.0,
                width: 90.0,
              ),
            ],
          ),
          UIHelper.verticalSpaceMedium(),
          DottedSeperatorView(),
          UIHelper.verticalSpaceMedium(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildGenieCardView(context),
              _buildGenieCardView(context)
            ],
          )
        ],
      ),
    );
  }

  Container _buildGenieCardView(BuildContext context) => Container(
        padding: const EdgeInsets.only(left: 10.0, top: 10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey[200],
              blurRadius: 2.0,
              offset: Offset(1.0, 3.0),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Buy\nAnything',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(fontSize: 22.0),
            ),
            UIHelper.verticalSpaceMedium(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Stationery\nMedicine\nGrocery\n& more',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    UIHelper.verticalSpaceSmall(),
                    ClipOval(
                      child: Container(
                        alignment: Alignment.center,
                        color: swiggyOrange,
                        height: 25.0,
                        width: 25.0,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 12.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    UIHelper.verticalSpaceMedium(),
                  ],
                ),
                UIHelper.horizontalSpaceMedium(),
                Image.asset(
                  'assets/images/food3.jpg',
                  height: 80.0,
                  width: 80.0,
                  fit: BoxFit.cover,
                ),
              ],
            )
          ],
        ),
      );
}