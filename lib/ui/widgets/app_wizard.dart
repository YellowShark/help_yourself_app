import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class AppWizard extends StatefulWidget {
  final void Function() onComplete;
  final Map<String, Widget> steps;
  final Widget Function(BuildContext context, ControlsDetails controls)? controlsBuilder;
  final bool showControls;
  final int? currentStep;

  const AppWizard({
    Key? key,
    required this.onComplete,
    required this.steps,
    this.showControls = true,
    this.controlsBuilder,
    this.currentStep,
  }) : super(key: key);

  @override
  State<AppWizard> createState() => _AppWizardState();
}

class _AppWizardState extends State<AppWizard> {
  late var _currentStep = widget.currentStep ?? 0;

  @override
  void initState() {
    super.initState();
    _initStep();
  }

  @override
  void didUpdateWidget(covariant AppWizard oldWidget) {
    if (widget.currentStep != oldWidget.currentStep && widget.currentStep != null) {
      setState(() {
        _currentStep = widget.currentStep!;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: StepperType.horizontal,
      steps: _steps,
      currentStep: _currentStep,
      onStepContinue: () => setState(() => _isLastStep() ? widget.onComplete() : _currentStep++),
      onStepCancel: () => !_isFirstStep() ? setState(() => _currentStep--) : null,
      controlsBuilder: widget.showControls ? widget.controlsBuilder : (_, __) => Container(),
    );
  }

  List<Step> get _steps => widget.steps.entries
      .mapIndexed(
        (i, step) => Step(
          title: Text(step.key),
          content: step.value,
          isActive: _currentStep >= i,
          state: _currentStep >= i + 1 ? StepState.complete : StepState.indexed,
        ),
      )
      .toList();

  bool _isLastStep() => _currentStep == (_steps.length - 1);

  bool _isFirstStep() => _currentStep == 0;

  void _initStep() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        _currentStep = widget.currentStep ?? 0;
      });
    });
  }
}
