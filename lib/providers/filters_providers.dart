import "package:flutter_riverpod/flutter_riverpod.dart";

enum Filter { glutenFree, lactoseFree, vegetarian, vegan }

class FiltersNotifire extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifire()
      : super({
          Filter.glutenFree: false,
          Filter.lactoseFree: false,
          Filter.vegetarian: false,
          Filter.vegan: false,
        });

  void setFilters(Map<Filter, bool> chosenFilters) {
    state = chosenFilters;
  }

  void setFilter(Filter filter, bool isActive) {
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filtersProvider =
    StateNotifierProvider<FiltersNotifire, Map<Filter, bool>>(
  (ref) => FiltersNotifire(),
);
