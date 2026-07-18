class CreateCommand {
  void run(List<String> args) {
    if (args.isEmpty) {
      print("Usage: devx create community-app");
      return;
    }

    switch (args.first) {
      case "community-app":
        print("Creating Community App...");
        break;

      default:
        print("Unknown project type: ${args.first}");
    }
  }
}
