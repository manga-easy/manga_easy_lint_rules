// This is the entrypoint of our custom linter
import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:manga_easy_lint_rules/rules/avoid_class_asset_image.dart';
import 'package:manga_easy_lint_rules/rules/avoid_class_image.dart';
import 'package:manga_easy_lint_rules/rules/avoid_class_switch.dart';
import 'package:manga_easy_lint_rules/rules/avoid_class_text.dart';
import 'package:manga_easy_lint_rules/rules/avoid_class_textbutton.dart';
import 'package:manga_easy_lint_rules/rules/avoid_class_textfield.dart';

PluginBase createPlugin() => _ExampleLinter();

/// A plugin class is used to list all the assists/lints defined by a plugin.
class _ExampleLinter extends PluginBase {
  /// We list all the custom warnings/infos/errors
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        AvoidClassTextCode(),
        AvoidClassTextButtonCode(),
        AvoidClassAssetImageCode(),
        AvoidClassImageCode(),
        AvoidClassSwitchCode(),
        AvoidClassFieldCode(),
      ];
}
