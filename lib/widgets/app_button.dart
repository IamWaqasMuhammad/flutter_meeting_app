
import '../app_barrels.dart';

class CustomButton extends StatelessWidget {
  final double height, width, radius, borderWidth;
  final Color color, borderColor;
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;
  final BoxShape boxShape;
  final Widget child;
  final void Function()? onTap;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.child,
    this.width = 300,
    this.height = 50,
    this.color = Colors.transparent,
    this.radius = 10,
    this.borderColor = Colors.transparent,
    this.borderWidth = 1,
    this.boxShadow,
    this.gradient,
    this.boxShape = BoxShape.rectangle,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.white.withOpacity(0.2),
        highlightColor: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(
              color: borderColor,
              width: borderWidth,
            ),
            boxShadow: boxShadow,
            gradient: gradient,
            shape: boxShape,
          ),
          child: child,
        ),
      ),
    );
  }
}
