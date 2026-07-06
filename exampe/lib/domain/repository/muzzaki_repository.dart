import 'package:dartz/dartz.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/entity/response/muzzaki_transaction_history_entity.dart';

import '../../core/error/failures.dart';
import '../entity/paginated_list_entity.dart';
import '../entity/response/muzakki_contribution_summary_entity.dart';
import '../entity/response/muzakki_dashboard_response_entity.dart';
import '../entity/response/muzzaki_transaction_item_list_entity.dart';
import '../entity/response/user_data_entity.dart';

abstract class MuzzakiRepository {
  Future<Either<Failure, MuzakkiDashboardResponseEntity>> getDashboard();
  Future<Either<Failure, UserDataEntity>> getProfile();
  Future<Either<Failure, MuzakkiContributionSummaryEntity>> getContributionSummary();
  Future<Either<Failure, PaginatedListEntity<MuzzakiTransactionItemListEntity>>>
  getHistoryTransaction({String? status, int page = 1});

  Future<Either<Failure, MuzzakiTransactionHistoryEntity>> detailTransaction(int transactionId);
}
