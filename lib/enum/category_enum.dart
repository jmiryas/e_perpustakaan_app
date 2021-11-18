enum CategoryType {
  all,
  adultFictions,
  businessAndInvesting,
  history,
  science,
}

String categoryTypeString(CategoryType categoryType) {
  switch (categoryType) {
    case CategoryType.all:
      return "All Category";
    case CategoryType.adultFictions:
      return "Adult Fiction";
    case CategoryType.businessAndInvesting:
      return "Business & Investing";
    case CategoryType.history:
      return "History";
    case CategoryType.science:
      return "Science";
    default:
      return "All Category";
  }
}
