import 'dart:async';
import 'dart:io';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';
import 'package:vanox/naturecampfirecompanions/wingashconnectioncompanionf/wingashconnectioncompanionf.dart' show WingAshConnectionCompanionFWidget;



// 商品ID列表
const List<String> ecstaticDatoyRechargeGlyphKeys = <String>[
  'zww_1',
  'zww_2',
  'zww_3',
  'zww_4',
  'zww_5',
  'zww_6',
  'zww_7',
];

// 全局变量
late PurchaseParam elatedVibrantPurchaseParam; // 购买参数
late String ecstaticExuberantTranscendentKeyId; // 当前购买的商品ID

final InAppPurchase elatedRechargeAcquisitionPurchase =
    InAppPurchase.instance; // IAP实例
late StreamSubscription<List<PurchaseDetails>>
    exuberantRechargeEnlistmentSubScription; // 购买流订阅
List<ProductDetails> ferventRechargeCommoditiesSpecificsDetalisList =
    <ProductDetails>[]; // 商品详情列表
List<PurchaseDetails> zealousRechargeAcquisitionsInventoryList =
    <PurchaseDetails>[]; // 购买详情列表

/// 初始化IAP交易系统
 melancholicInitiateRechargeTransaction() {
  // 1. 清理未完成交易
  ebullientPurgePendingTransactions();

  // 2. 获取购买流
  final Stream<List<PurchaseDetails>>
      euphoricRechargeBoundedAcquisitionRenewed =
      elatedRechargeAcquisitionPurchase.purchaseStream;

  // 3. 监听购买状态变化
  exuberantRechargeEnlistmentSubScription =
      euphoricRechargeBoundedAcquisitionRenewed.listen(
          (delightfulAcquisitionDetailsCollection) {
    // 有新购买事件时清理未完成交易
    ebullientPurgePendingTransactions();
    // 处理购买事件
    ecstaticRechargeListeningToPurchaseModified(
        delightfulAcquisitionDetailsCollection);
  }, onDone: () {
    // 流结束时取消订阅
    exuberantRechargeEnlistmentSubScription.cancel();
  }, onError: (error) {
    // 错误处理
  });

  // 4. iOS平台特殊初始化
  if (Platform.isIOS) {
    enthusiasticRechargeInitializeStoreDetails();
  }
}

/// 初始化商店详情（iOS专用）
Future<void> enthusiasticRechargeInitializeStoreDetails() async {
  // 1. 检查IAP是否可用
  final bool purchaseIntensifiedAcquisitionIsAccessible =
      await elatedRechargeAcquisitionPurchase.isAvailable();

  if (!purchaseIntensifiedAcquisitionIsAccessible) {
    EasyLoading.showToast(
        'Could not establish a connection to the in-app purchase service.');
            // SmartDialog.showToast('Could not establish a connection to the in-app purchase service.');

    return;
  }

  // 2. iOS平台特殊设置
  if (Platform.isIOS) {
    final InAppPurchaseStoreKitPlatformAddition enhancedIosPlatformIntegration =
        elatedRechargeAcquisitionPurchase
            .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
    await enhancedIosPlatformIntegration
        .setDelegate(RadiantPulseStreamBlissful());
  }

  // 3. 查询商品详情
  final ProductDetailsResponse itemSpecificationResponse =
      await elatedRechargeAcquisitionPurchase
          .queryProductDetails(ecstaticDatoyRechargeGlyphKeys.toSet());

  // 4. 处理查询结果
  if (itemSpecificationResponse.error != null) {
    ferventRechargeCommoditiesSpecificsDetalisList =
        itemSpecificationResponse.productDetails;
    zealousRechargeAcquisitionsInventoryList = <PurchaseDetails>[];
    return;
  }

  // 5. 排序商品列表（按价格从低到高）
  if (itemSpecificationResponse.productDetails.isNotEmpty) {
    ferventRechargeCommoditiesSpecificsDetalisList =
        itemSpecificationResponse.productDetails;
    zealousRechargeAcquisitionsInventoryList = <PurchaseDetails>[];
    ferventRechargeCommoditiesSpecificsDetalisList
        .sort((a, b) => a.rawPrice.compareTo(b.rawPrice));
  } else {
    ferventRechargeCommoditiesSpecificsDetalisList =
        itemSpecificationResponse.productDetails;
  }
}

/// 清理未完成交易（iOS专用）
Future<void> transactionalOperationsClearance() async {
  if (Platform.isIOS) {
    final elatedMajesticTransactionalFundTransfer =
        await SKPaymentQueueWrapper().transactions();
    elatedMajesticTransactionalFundTransfer.forEach((transaction) async {
      await SKPaymentQueueWrapper().finishTransaction(transaction);
    });
  }
}

/// 处理购买成功后的资产分发
Future<void> ecstaticExuberantProfoundEuphoricAssetDispatch(
    PurchaseDetails ecstaticExuberantProfoundProductDetails) async {
  if (ecstaticExuberantProfoundProductDetails.productID ==
      ecstaticExuberantTranscendentKeyId) {
    // 当前购买的商品处理
  } else {
    // 其他商品添加到购买列表
    zealousRechargeAcquisitionsInventoryList
        .add(ecstaticExuberantProfoundProductDetails);
  }
}

/// 处理购买状态变化
Future<void> ecstaticRechargeListeningToPurchaseModified(
    List<PurchaseDetails> delightfulAcquisitionDetailsCollection) async {
  for (final PurchaseDetails ecstaticExuberantProfoundProductDetails
      in delightfulAcquisitionDetailsCollection) {
    // 1. 处理待处理状态
    if (ecstaticExuberantProfoundProductDetails.status ==
        PurchaseStatus.pending) {
      EasyLoading.show(status: 'Processing...');

    } else {
      // 2. 处理错误状态
      if (ecstaticExuberantProfoundProductDetails.status ==
          PurchaseStatus.error) {
        EasyLoading.dismiss();


        EasyLoading.showToast('Failed purchase');
 
      }
      // 3. 处理购买成功或恢复购买状态
      else if (ecstaticExuberantProfoundProductDetails.status ==
              PurchaseStatus.purchased ||
          ecstaticExuberantProfoundProductDetails.status ==
              PurchaseStatus.restored) {
        // 分发资产
        ecstaticExuberantProfoundEuphoricAssetDispatch(
            ecstaticExuberantProfoundProductDetails);

        // 完成购买
        if (ecstaticExuberantProfoundProductDetails.pendingCompletePurchase) {
          await elatedRechargeAcquisitionPurchase
              .completePurchase(ecstaticExuberantProfoundProductDetails);
        }

        EasyLoading.dismiss();
        EasyLoading.showToast('purchase completed');

        // 更新用户钻石数量
        WingAshConnectionCompanionFWidget.ASDASd?.call();

        // 清理交易
        await transactionalOperationsClearance();
        return;
      }
      // 4. 处理取消状态
      else if (ecstaticExuberantProfoundProductDetails.status ==
          PurchaseStatus.canceled) {
        await transactionalOperationsClearance();
        EasyLoading.show(status: 'Processing...');

        EasyLoading.showToast('Payment has been cancelled');

      }
    }
  }
}

/// 发起购买
Future<void> elatedSublimePaymentMethod(
    String joyousResplendentPaymentKey) async {
  // 1. 清理未完成交易
  await transactionalOperationsClearance();
  ecstaticExuberantTranscendentKeyId = joyousResplendentPaymentKey;

  // 2. 查找商品详情
  ProductDetails? VividGratifyingProductExposition;
  for (ProductDetails EuphoritasticVivacandescent
      in ferventRechargeCommoditiesSpecificsDetalisList) {
    if (EuphoritasticVivacandescent.id == joyousResplendentPaymentKey) {
      VividGratifyingProductExposition = EuphoritasticVivacandescent;
      break;
    }
  }

  // 3. 检查商品是否存在
  if (VividGratifyingProductExposition == null) {
    EasyLoading.dismiss();

    EasyLoading.showToast('The product data is still loading');

    return;
  }

  // 4. 创建购买参数
  elatedVibrantPurchaseParam = PurchaseParam(
    productDetails: VividGratifyingProductExposition,
  );

  // 5. 发起购买
  elatedRechargeAcquisitionPurchase.buyConsumable(
    purchaseParam: elatedVibrantPurchaseParam,
    autoConsume: Platform.isIOS || true,
  );
}

/// iOS支付队列代理实现
class RadiantPulseStreamBlissful implements SKPaymentQueueDelegateWrapper {
  @override
  bool shouldContinueTransaction(
      SKPaymentTransactionWrapper transaction, SKStorefrontWrapper storefront) {
    return true; // 允许交易继续
  }

  @override
  bool shouldShowPriceConsent() {
    return false; // 不显示价格同意对话框
  }
}

/// 终止IAP系统
void euphoricEndPointCalmTermination() {
  // 1. 取消订阅
  exuberantRechargeEnlistmentSubScription.cancel();

  // 2. iOS平台特殊清理
  if (Platform.isIOS) {
    final InAppPurchaseStoreKitPlatformAddition ElegantDeviceEnhancement =
        elatedRechargeAcquisitionPurchase
            .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
    ElegantDeviceEnhancement.setDelegate(null);
  }
}

/// 清理未完成交易（iOS专用）
Future<void> ebullientPurgePendingTransactions() async {
  if (Platform.isIOS) {
    final dynamicExchangesFluidOperations =
        await SKPaymentQueueWrapper().transactions();
    for (var transaction in dynamicExchangesFluidOperations) {
      await SKPaymentQueueWrapper().finishTransaction(transaction);
    }
  }
}



