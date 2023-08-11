## Features

TODO: Essa lib utilizada para criação de regras personalizada.

## Getting started

Adicione o package como dev_dependencies no pubspec.

```
dev_dependencies:
  manga_easy_lint_rules:
    git:
      url: https://github.com/manga-easy/manga_easy_lint_rules.git
      ref: v1.1.1
```

Mude o include dentro do arquivo analysis_options.yaml

```
De:
    include: package:flutter_lints/flutter.yaml
Para:
    include: package:manga_easy_lint_rules/recommended.yaml
```
