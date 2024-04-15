function [fig] = format_plot(fig, labelpath)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

delete(findall(fig, 'type', 'annotation'))

fig.Units = "inches";
fig.Position = [1, 1, 7.5, 9.5];

labels = jsondecode(fileread(labelpath));

ax = fig.CurrentAxes;

ax.OuterPosition = [0, 0, 1, 0.8];

title = annotation(fig, "textbox", [0.0, 0.95, 1.0, 0.05]);
title.LineStyle = "none";
title.String = labels.title;
title.HorizontalAlignment = "center";
title.VerticalAlignment = "top";


left = annotation(fig, "textbox", [0.0, 0.8, 0.5, 0.15]);
left.LineStyle = "none";
left.String = labels.left;
left.HorizontalAlignment = "left";
left.VerticalAlignment = "middle";

right = annotation(fig, "textbox", [0.5, 0.8, 0.5, 0.15]);
right.LineStyle = "none";
right.String = labels.right;
right.HorizontalAlignment = "right";
right.VerticalAlignment = "middle";

end