
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamart_admin/utils/colors.dart';

class WithdrawalMobileView extends StatelessWidget {
  final List<Map<String, String>> data;
  final ScrollController _horizontalScrollController = ScrollController();

  WithdrawalMobileView({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(10),
      color: AppColors.backgroundGlitter,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          // Scrollable data rows
          // Fixed header row
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: _horizontalScrollController,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.borderColor),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    _buildHeaderCell('NAME', width: 100.0),
                    _buildHeaderCell('AMOUNT', width: 120.0),
                    _buildHeaderCell('BANK NAME', width: 150.0),
                    _buildHeaderCell('BANK ACCOUNT', width: 200),
                    _buildHeaderCell('EMAIL', width: 150.0),
                    _buildHeaderCell('PHONE', width: 120.0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderCell(String label, {required double width}) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildDataCell(dynamic content, {required double width}) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: content is String
          ? Text(
        content,
        textAlign: TextAlign.center,
      )
          : Center(
        child: content,
      ),
    );
  }
}


