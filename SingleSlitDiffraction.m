(* ::Package:: *)

(* ::Text:: *)
(*Load some packaged we'll use for plotting:*)


(* ::Input:: *)
(*Needs["ErrorBarPlots`"]*)
(*Needs["PlotLegends`"]*)


(* ::Text:: *)
(*Define the \[Beta] parameter that shows up in the theoretical prediction for the diffraction pattern:*)


(* ::Input:: *)
(*\[Beta]:=0.5*(2\[Pi])/(632.8*10^-9)*0.08*10^-3 Sin[\[Theta]]*)


(* ::Text:: *)
(*Define a table with our data and associated uncertainties:*)


(* ::Input:: *)
(*data:={{{0.000,1.000},ErrorBar[0.001,0.025]},{{0.002,0.5795},ErrorBar[0.001,0.025]},{{0.004,0.3466},ErrorBar[0.001,0.025]},{{0.006,0.1648},ErrorBar[0.001,0.025]},{{0.008,0.0739},ErrorBar[0.001,0.025]},{{0.01,0.0568},ErrorBar[0.001,0.025]},{{0.012,0.0909},ErrorBar[0.001,0.025]},{{0.014,0.0568},ErrorBar[0.001,0.025]},{{0.016,0.0455},ErrorBar[0.001,0.025]},{{0.018,0.0398},ErrorBar[0.001,0.025]},{{0.02,0.0511},ErrorBar[0.001,0.025]},{{0.022,0.0568},ErrorBar[0.001,0.025]},{{0.024,0.0682},ErrorBar[0.001,0.025]},{{-0.002,0.5795},ErrorBar[0.001,0.025]},{{-0.004,0.3466},ErrorBar[0.001,0.025]},{{-0.006,0.1648},ErrorBar[0.001,0.025]},{{-0.008,0.0739},ErrorBar[0.001,0.025]},{{-0.01,0.0568},ErrorBar[0.001,0.025]},{{-0.012,0.0909},ErrorBar[0.001,0.025]},{{-0.014,0.0568},ErrorBar[0.001,0.025]},{{-0.016,0.0455},ErrorBar[0.001,0.025]},{{-0.018,0.0398},ErrorBar[0.001,0.025]},{{-0.02,0.0511},ErrorBar[0.001,0.025]},{{-0.022,0.0568},ErrorBar[0.001,0.025]},{{-0.024,0.0682},ErrorBar[0.001,0.025]}}*)


(* ::Text:: *)
(*Draw the theoretical curve on a plot:*)


(* ::Input:: *)
(*theory:=Plot[(Sin[ \[Beta]]/\[Beta])^2,{\[Theta],-1,1},Axes->True,PlotRangePadding->{0.01,0.05},PlotRange->{{-0.02,0.02},{0,1}},PlotStyle->Black,FrameLabel->{{Style["\!\(\*FractionBox[\(I\), SubscriptBox[\(I\), \(0\)]]\)",16],None},{Style["Angular Displacement (rad)",16],Style["Single Slit Diffraction Pattern",20]}},ImageSize->600,RotateLabel->False]*)


(* ::Text:: *)
(*Show the theoretical curve and data on the same plot:*)


(* ::Input:: *)
(*dataPlot:=ErrorListPlot[data,PlotStyle->Red]*)


(* ::Input:: *)
(*Show[{theory,dataPlot}]*)


(* ::Text:: *)
(*TODO:  Figure out how to attaach the legend to the plot*)


(* ::Input:: *)
(*Legend[{{Graphics[{Black,Line[{{0,0},{2,0}}]}],Style["   theory",Large]},{Graphics[{Red,Disk[{0,0.5},0.05],Line[{{0,0},{0,1}}],Line[{{-0.5,0.5},{0.5,0.5}}],Line[{{-0.05,1},{0.05,1}}],Line[{{-0.05,0},{0.05,0}}],Line[{{-0.5,0.46},{-0.5,0.54}}],Line[{{0.5,0.46},{0.5,0.54}}]}],Style["   data",Large]}}]//Graphics*)
