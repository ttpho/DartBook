enum EnvironmentType {
  debug,
  staging,
  production,
}

const String debugUrl = "https://debug.abc.com/v3/";
const String stgUrl = "https://staging.abc.com/v2/";
const String proUrl = "https://production.abc.com/v1/";

/// use map
String? fetchBaseUrl(EnvironmentType type) {
  final Map<EnvironmentType, String> map = {
    EnvironmentType.debug: debugUrl,
    EnvironmentType.staging: stgUrl,
    EnvironmentType.production: proUrl,
  };
  return map[type];
}

void main(List<String> args) {
  EnvironmentType.values.forEach((element) {
    print("Index: ${element.index}, name: ${element.name}");
  });

  // https://staging.abc.com/v2/
  print(fetchBaseUrl(EnvironmentType.staging));
}

/// use switch/case
String getBaseUrl(EnvironmentType type) {
  switch (type) {
    case EnvironmentType.debug:
      return debugUrl;
    case EnvironmentType.staging:
      return stgUrl;
    case EnvironmentType.production:
      return proUrl;
  }
}
