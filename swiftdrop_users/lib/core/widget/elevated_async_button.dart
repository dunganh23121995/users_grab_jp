import 'package:flutter/material.dart';

class ElevatedAsyncButton extends StatefulWidget {
  final Future<void> Function() onPressed;
  final Widget child;
  final ButtonStyle? style;

  const ElevatedAsyncButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.style,
  });

  @override
  State<ElevatedAsyncButton> createState() => _ElevatedAsyncButtonState();
}

class _ElevatedAsyncButtonState extends State<ElevatedAsyncButton> {
  bool _isLoading = false;

  Future<void> _handleTap() async {
    if (_isLoading) return;

    setState(() => _isLoading = true);

    try {
      await widget.onPressed();
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _isLoading ? null : _handleTap,
      style: widget.style,
      child: _isLoading
          ? const SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      )
          : widget.child,
    );
  }
}
