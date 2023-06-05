import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class AvoidClassImageCode extends DartLintRule {
  AvoidClassImageCode() : super(code: _code);

  /// Metadata about the warning that will show-up in the IDE.
  /// This is used for `// ignore: code` and enabling/disabling the lint
  static const _code = LintCode(
    name: 'avoid_class_image',
    problemMessage: 'Evite usar Image, use CoffeeImage 🦄',
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    // Our lint will highlight all variable declarations with our custom warning.
    context.registry.addInstanceCreationExpression((node) {
      final typeName = node.constructorName.type.name;
      if (typeName.name == 'Image') {
        reporter.reportErrorForNode(code, node);
      }
    });
  }
}
