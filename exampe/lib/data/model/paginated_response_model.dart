import 'pagination_model.dart';

class PaginatedResponseModel<T> {
  final List<T> items;
  final PaginationModel pagination;

  PaginatedResponseModel({
    required this.items,
    required this.pagination,
  });

  factory PaginatedResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) itemMapper,
  ) {
    final rawData = json['data'];
    final items = rawData is List
        ? rawData
            .map((e) => itemMapper(e as Map<String, dynamic>))
            .toList()
        : <T>[];

    final rawPagination = json['pagination'];
    final pagination = rawPagination is Map<String, dynamic>
        ? PaginationModel.fromJson(rawPagination)
        : PaginationModel();

    return PaginatedResponseModel(items: items, pagination: pagination);
  }
}
