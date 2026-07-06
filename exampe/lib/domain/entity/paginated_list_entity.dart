import 'pagination_entity.dart';

/// Wrapper generik hasil list + metadata pagination dari API.
class PaginatedListEntity<T> {
  final List<T> items;
  final PaginationEntity pagination;

  const PaginatedListEntity({
    required this.items,
    required this.pagination,
  });
}
