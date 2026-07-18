param(
    [string]$Command = "help",
    [string]$Name = ""
)

function Create-EntryPoint {

@"
import 'package:args/args.dart';

void main(List<String> arguments) {
  print('?? DevX CLI');
}
"@ | Set-Content "bin/devx_cli.dart"

Write-Host ""
Write-Host "? bin/devx_cli.dart generated"
}

Clear-Host

Write-Host "====================================="
Write-Host "        DEVX BUILDER v0.1"
Write-Host "====================================="
Write-Host ""

switch ($Command) {

    "help" {

        Write-Host "Commands:"
        Write-Host ""
        Write-Host ".\builder.ps1 init"
        Write-Host ".\builder.ps1 generate-cli"
    }

    "init" {

        Write-Host "Project Ready."

    }

    "generate-cli" {

        Create-EntryPoint

        Write-Host ""
        Write-Host "? DevX CLI Generated"

    }

    default {

        Write-Host "Unknown Command"

    }

}
