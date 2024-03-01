import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/core/localization/translation_key_manager.dart';
import 'package:pos/features/home/presentation/views/widgets/home_view_item_builder.dart';

abstract class ConstantsManager
{
  static const String fontFamily = 'Cairo';

  static List<Widget> gridItems = [
    HomeViewItemBuilder(
      color: const Color(0xfff37736),
      icon: Icons.grid_view_outlined,
      page: Scaffold(
        appBar: AppBar(title: Text(TranslationKeyManager.salesInvoice.tr)),
      ),
      title: TranslationKeyManager.salesInvoice.tr,
    ),
    HomeViewItemBuilder(
      color: const Color(0xfff37736),
      icon: Icons.merge_type,
      page: Scaffold(
        appBar: AppBar(title: Text(TranslationKeyManager.branches.tr)),
      ),
      title: TranslationKeyManager.branches.tr,
    ),
    HomeViewItemBuilder(
      color: Color(0xffFF6D6D),
      page: Scaffold(
        appBar: AppBar(title: Text(TranslationKeyManager.sellingPoint.tr)),
      ),
      icon: Icons.control_point_duplicate,
      title: TranslationKeyManager.sellingPoint.tr,
    ),
    HomeViewItemBuilder(
      color: Colors.lightGreen,
      icon: Icons.account_tree_outlined,
      page: Scaffold(
        appBar: AppBar(title: Text(TranslationKeyManager.purchases.tr)),
      ),
      title: TranslationKeyManager.purchases.tr,
    ),
    HomeViewItemBuilder(
      color: const Color(0xffffa700),
      page: Scaffold(
        appBar: AppBar(title: Text(TranslationKeyManager.groupCode.tr)),
      ),
      icon: Icons.code,
      title: TranslationKeyManager.groupCode.tr,
    ),
    HomeViewItemBuilder(
      color: const Color(0xfff37736),
      page: Scaffold(
        appBar: AppBar(title: Text(TranslationKeyManager.itemCode.tr)),
      ),
      icon: Icons.code,
      title: TranslationKeyManager.itemCode.tr,
    ),
    HomeViewItemBuilder(
      color: const Color(0xffFF6D6D),
      icon: Icons.manage_accounts_outlined,
      page: Scaffold(
        appBar: AppBar(title: Text(TranslationKeyManager.accountsCode.tr)),
      ),
      title: TranslationKeyManager.accountsCode.tr,
    ),
    HomeViewItemBuilder(
      color: Colors.lightGreen,
      icon: Icons.attach_money_outlined,
      page: Scaffold(
        appBar: AppBar(title: Text(TranslationKeyManager.cashReceipt.tr)),
      ),
      title: TranslationKeyManager.cashReceipt.tr,
    ),
    HomeViewItemBuilder(
      color: const Color(0xffffa700),
      page: Scaffold(
        appBar: AppBar(title: Text(TranslationKeyManager.paymentVoucher.tr)),
      ),
      icon: Icons.payment,
      title: TranslationKeyManager.paymentVoucher.tr,
    ),
    HomeViewItemBuilder(
      color: const Color(0xfff37736),
      icon: Icons.money,
      page: Scaffold(
        appBar: AppBar(title: Text(TranslationKeyManager.expenses.tr)),
      ),
      title: TranslationKeyManager.expenses.tr,
    ),
    HomeViewItemBuilder(
      color: const Color(0xffFF6D6D),
      icon: Icons.monetization_on_outlined,
      page: Scaffold(
        appBar: AppBar(title: Text(TranslationKeyManager.revenue.tr)),
      ),
      title: TranslationKeyManager.revenue.tr,
    ),
    HomeViewItemBuilder(
      color: Colors.lightGreen,
      icon: Icons.report_gmailerrorred,
      title: TranslationKeyManager.earningReportBudget.tr,
      page: Scaffold(
        appBar: AppBar(title: Text(TranslationKeyManager.earningReportBudget.tr)),
      ),
    ),
    HomeViewItemBuilder(
      color: const Color(0xffffa700),
      icon: FontAwesomeIcons.file,
      page: Scaffold(
        appBar: AppBar(title: Text(TranslationKeyManager.taxes.tr)),
      ),
      title: TranslationKeyManager.taxes.tr,
    ),
    HomeViewItemBuilder(
      color: const Color(0xfff37736),
      icon: Icons.ballot_outlined,
      page: Scaffold(
        appBar: AppBar(title: Text(TranslationKeyManager.financialInvoices.tr)),
      ),
      title: TranslationKeyManager.financialInvoices.tr,
    ),
  ];

}