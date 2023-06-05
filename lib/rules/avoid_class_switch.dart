import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class AvoidClassSwitchCode extends DartLintRule {
  AvoidClassSwitchCode() : super(code: _code);

  /// Metadata about the warning that will show-up in the IDE.
  /// This is used for `// ignore: code` and enabling/disabling the lint
  static const _code = LintCode(
    name: 'avoid_class_switch',
    problemMessage: 'Evite usar Switch, use CoffeeSwitchButton 🦄',
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
      if (typeName.name == 'Switch') {
        reporter.reportErrorForNode(code, node);
      }
    });
  }
}
