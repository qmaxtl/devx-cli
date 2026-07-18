function New-DevXCli {

@"
import 'package:args/args.dart';

void main(List<String> arguments) {
  print("?? DevX CLI Started");
}
"@ | Set-Content "bin\devx_cli.dart"

Write-Host "? DevX CLI Entry Generated"
}
