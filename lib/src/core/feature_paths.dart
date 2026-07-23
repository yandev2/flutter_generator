/// Single source of truth untuk path feature-first.
abstract final class FeaturePaths {
  static const appRouterDir = 'lib/app/router';
  static const appProvidersDir = 'lib/app/providers';

  static String featureRoot(String feature) => 'lib/features/$feature';

  static String presentationPages(String feature) =>
      '${featureRoot(feature)}/presentation/pages';

  static String presentationProviders(String feature) =>
      '${featureRoot(feature)}/presentation/providers';

  static String presentationStates(String feature) =>
      '${featureRoot(feature)}/presentation/states';

  static String domainEntities(String feature) =>
      '${featureRoot(feature)}/domain/entities';

  static String domainRepositories(String feature) =>
      '${featureRoot(feature)}/domain/repositories';

  static String domainUsecases(String feature) =>
      '${featureRoot(feature)}/domain/usecases';

  static String dataModels(String feature) =>
      '${featureRoot(feature)}/data/models';

  static String dataRepositories(String feature) =>
      '${featureRoot(feature)}/data/repositories';

  static String dataDatasources(String feature) =>
      '${featureRoot(feature)}/data/datasources';

  static List<String> featureScaffoldDirs(String feature) => [
        presentationPages(feature),
        presentationProviders(feature),
        presentationStates(feature),
        '${featureRoot(feature)}/presentation/widgets',
        domainEntities(feature),
        domainRepositories(feature),
        domainUsecases(feature),
        dataModels(feature),
        dataRepositories(feature),
        dataDatasources(feature),
      ];
}
