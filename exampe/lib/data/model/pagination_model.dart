import '../../domain/entity/pagination_entity.dart';

class PaginationModel {
  final int? currentPage;
  final int? totalPages;
  final int? totalItems;
  final int? itemsPerPage;
  final bool? hasMore;

  PaginationModel({
    this.currentPage,
    this.totalPages,
    this.totalItems,
    this.itemsPerPage,
    this.hasMore,
  });

  factory PaginationModel.fromJson(Map<String, dynamic> json) {
    return PaginationModel(
      currentPage: _readInt(json, 'currentPage', 'current_page'),
      totalPages: _readInt(json, 'totalPages', 'total_pages'),
      totalItems: _readInt(json, 'totalItems', 'total_items'),
      itemsPerPage: _readInt(json, 'itemsPerPage', 'items_per_page'),
      hasMore: json['hasMore'] as bool? ?? json['has_more'] as bool?,
    );
  }

  static int? _readInt(
    Map<String, dynamic> json,
    String camelKey,
    String snakeKey,
  ) {
    final value = json[camelKey] ?? json[snakeKey];
    if (value == null) return null;
    if (value is int) return value;
    return int.tryParse(value.toString());
  }

  PaginationEntity toEntity() {
    return PaginationEntity(
      currentPage: currentPage,
      totalPages: totalPages,
      totalItems: totalItems,
      itemsPerPage: itemsPerPage,
      hasMore: hasMore,
    );
  }
}
