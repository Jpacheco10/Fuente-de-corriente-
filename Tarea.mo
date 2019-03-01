package Tarea
  package Pines
    connector pinpos
     Modelica.SIunits.Voltage v "Electric Potential";
      flow Modelica.SIunits.Current i "Current Flow";
      annotation(
        Icon(graphics = {Ellipse(origin = {0, 15}, fillColor = {85, 255, 255}, fillPattern = FillPattern.Solid, extent = {{86, -81}, {-86, 81}}, endAngle = 360)}));
    end pinpos;

    connector pinneg
    Modelica.SIunits.Voltage v "Electric Potential";
      flow Modelica.SIunits.Current i "Current Flow";
      annotation(
        Icon(graphics = {Ellipse(origin = {5, -4}, fillColor = {85, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-85, 88}, {85, -88}}, endAngle = 360)}));
    end pinneg;

    partial model Fuentecorriente
  Modelica.SIunits.Voltage v;
      Modelica.SIunits.Current i;
      pinpos pinpos1 annotation(
        Placement(visible = true, transformation(origin = {-82, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-82, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      pinneg pinneg1 annotation(
        Placement(visible = true, transformation(origin = {64, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {64, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      v = p.v - n.v;
      0 = p.i + n.i;
      i = p.i;
      annotation(
        Icon(graphics = {Ellipse(origin = {-8, -4}, extent = {{-68, 60}, {68, -60}}, endAngle = 360), Text(origin = {-3, -1}, extent = {{-69, -33}, {69, 33}}, textString = "→")}));
    end Fuentecorriente;
  end Pines;
  annotation(
    Icon(graphics = {Ellipse(extent = {{78, 8}, {78, 8}}, endAngle = 360), Ellipse(origin = {83, -1}, extent = {{-17, 15}, {17, -15}}, endAngle = 360), Ellipse(origin = {-84, 1}, fillColor = {85, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-16, 15}, {16, -15}}, endAngle = 360)}));
end Tarea;
