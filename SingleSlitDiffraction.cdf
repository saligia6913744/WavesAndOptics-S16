(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[    100226,       1954]
NotebookOptionsPosition[    100033,       1932]
NotebookOutlinePosition[    100387,       1948]
CellTagsIndexPosition[    100344,       1945]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[TextData[StyleBox["Load some packaged we\[CloseCurlyQuote]ll use for \
plotting:",
 FontSize->18]], "Text",
 CellChangeTimes->{{3.6690266567328568`*^9, 3.669026696553092*^9}, {
  3.669073956987715*^9, 3.669073958113965*^9}}],

Cell[BoxData[{
 RowBox[{"Needs", "[", "\"\<ErrorBarPlots`\>\"", "]"}], "\[IndentingNewLine]", 
 RowBox[{"Needs", "[", "\"\<PlotLegends`\>\"", "]"}]}], "Input",
 CellChangeTimes->{{3.669023985029894*^9, 3.669023985717433*^9}}],

Cell[TextData[StyleBox["Define the \[Beta] parameter that shows up in the \
theoretical prediction for the diffraction pattern:",
 FontSize->18]], "Text",
 CellChangeTimes->{{3.6690267073557673`*^9, 3.669026744508493*^9}}],

Cell[BoxData[
 RowBox[{"\[Beta]", ":=", 
  RowBox[{"0.5", "*", 
   FractionBox[
    RowBox[{"2", "\[Pi]"}], 
    RowBox[{"(", 
     RowBox[{"632.8", "*", 
      SuperscriptBox["10", 
       RowBox[{"-", "9"}]]}], ")"}]], "*", "0.08", "*", 
   SuperscriptBox["10", 
    RowBox[{"-", "3"}]], 
   RowBox[{"Sin", "[", "\[Theta]", "]"}]}]}]], "Input",
 CellChangeTimes->{{3.668952274810834*^9, 3.6689523156212997`*^9}, {
  3.668952365862254*^9, 3.668952427513982*^9}, {3.669020211914886*^9, 
  3.669020212888756*^9}, {3.66902131633004*^9, 3.669021317799963*^9}, {
  3.6690217247284718`*^9, 3.669021725980867*^9}, {3.6690232873063707`*^9, 
  3.66902335718961*^9}, {3.6690319748771667`*^9, 3.66903198611028*^9}, {
  3.669040379366671*^9, 3.669040379529111*^9}, {3.669040428030381*^9, 
  3.669040437406969*^9}, {3.669040989014556*^9, 3.669040989101313*^9}}],

Cell[TextData[StyleBox["Define a table with our data and associated \
uncertainties:",
 FontSize->18]], "Text",
 CellChangeTimes->{{3.669026749057233*^9, 3.669026772931706*^9}}],

Cell[BoxData[
 RowBox[{"data", ":=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0.000", ",", "1.000"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0.002", ",", "0.5795"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0.004", ",", "0.3466"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0.006", ",", "0.1648"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0.008", ",", "0.0739"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0.01", ",", "0.0568"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0.012", ",", "0.0909"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0.014", ",", "0.0568"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0.016", ",", "0.0455"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0.018", ",", "0.0398"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0.02", ",", "0.0511"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0.022", ",", "0.0568"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0.024", ",", "0.0682"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.002"}], ",", "0.5795"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.004"}], ",", "0.3466"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.006"}], ",", "0.1648"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.008"}], ",", "0.0739"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.01"}], ",", "0.0568"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.012"}], ",", "0.0909"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.014"}], ",", "0.0568"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.016"}], ",", "0.0455"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.018"}], ",", "0.0398"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.02"}], ",", "0.0511"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.022"}], ",", "0.0568"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.024"}], ",", "0.0682"}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", 
       RowBox[{"0.001", ",", "0.025"}], "]"}]}], "}"}]}], "}"}]}]], "Input",
 CellChangeTimes->{{3.669020216784993*^9, 3.669020221314*^9}, {
  3.669020365147135*^9, 3.6690203713446817`*^9}, {3.6690205244694233`*^9, 
  3.669020588894095*^9}, {3.6690206652108707`*^9, 3.669020775878023*^9}, {
  3.6690212264875603`*^9, 3.669021226574861*^9}, {3.6690212867383347`*^9, 
  3.6690212868173532`*^9}, {3.669021555118383*^9, 3.6690216934462433`*^9}, {
  3.66902184668181*^9, 3.669021958894264*^9}, {3.6690220140167303`*^9, 
  3.669022014112183*^9}, {3.669022055614531*^9, 3.669022089255508*^9}, {
  3.669022121235812*^9, 3.669022122045938*^9}, {3.669022197660831*^9, 
  3.669022197937788*^9}, {3.669023215070665*^9, 3.669023252056316*^9}, {
  3.669023769120142*^9, 3.66902385901549*^9}, {3.669023889470829*^9, 
  3.66902391939014*^9}}],

Cell[TextData[StyleBox["Draw the theoretical curve on a plot:",
 FontSize->18]], "Text",
 CellChangeTimes->{{3.669026792619795*^9, 3.669026800267879*^9}}],

Cell[BoxData[
 RowBox[{"theory", ":=", 
  RowBox[{"Plot", "[", 
   RowBox[{
    SuperscriptBox[
     RowBox[{"(", 
      FractionBox[
       RowBox[{"Sin", "[", " ", "\[Beta]", "]"}], "\[Beta]"], ")"}], "2"], 
    ",", 
    RowBox[{"{", 
     RowBox[{"\[Theta]", ",", 
      RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", 
    RowBox[{"Axes", "\[Rule]", "True"}], ",", 
    RowBox[{"PlotRangePadding", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{"0.01", ",", "0.05"}], "}"}]}], ",", 
    RowBox[{"PlotRange", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "0.02"}], ",", "0.02"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
    RowBox[{"PlotStyle", "\[Rule]", "Black"}], ",", 
    RowBox[{"FrameLabel", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{
          "\"\<\!\(\*FractionBox[\(I\), SubscriptBox[\(I\), \(0\)]]\)\>\"", 
           ",", "16"}], "]"}], ",", "None"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{"\"\<Angular Displacement (rad)\>\"", ",", "16"}], "]"}], 
         ",", 
         RowBox[{"Style", "[", 
          RowBox[{"\"\<Single Slit Diffraction Pattern\>\"", ",", "20"}], 
          "]"}]}], "}"}]}], "}"}]}], ",", 
    RowBox[{"ImageSize", "\[Rule]", "600"}], ",", 
    RowBox[{"RotateLabel", "\[Rule]", "False"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.66894879597851*^9, 3.6689489247496853`*^9}, {
   3.668952050528167*^9, 3.668952130108325*^9}, {3.668952252274639*^9, 
   3.6689522618343363`*^9}, {3.668952399863412*^9, 3.668952480398017*^9}, {
   3.668959311353772*^9, 3.668959387503615*^9}, {3.6689595130320044`*^9, 
   3.6689595138161097`*^9}, {3.6690208049731007`*^9, 
   3.6690208116358557`*^9}, {3.669021372371154*^9, 3.6690214211668987`*^9}, {
   3.6690214883390617`*^9, 3.6690214992337027`*^9}, {3.6690233695337563`*^9, 
   3.669023372070753*^9}, {3.66902348586549*^9, 3.6690234872157707`*^9}, {
   3.66902353683608*^9, 3.669023636459633*^9}, {3.669023672181924*^9, 
   3.6690236831561317`*^9}, {3.66902560776344*^9, 3.6690257287010736`*^9}, 
   3.669026538491132*^9, {3.6690265852406683`*^9, 3.669026610669353*^9}, {
   3.66903164998785*^9, 3.669031777839286*^9}, {3.669031977472633*^9, 
   3.6690319888886633`*^9}}],

Cell[TextData[StyleBox["Show the theoretical curve and data on the same plot:",
 FontSize->16]], "Text",
 CellChangeTimes->{{3.6690268082891397`*^9, 3.669026820552237*^9}}],

Cell[BoxData[
 RowBox[{"dataPlot", ":=", 
  RowBox[{"ErrorListPlot", "[", 
   RowBox[{"data", ",", 
    RowBox[{"PlotStyle", "\[Rule]", "Red"}]}], "]"}]}]], "Input",
 CellChangeTimes->{
  3.668948838958599*^9, {3.6689595157166348`*^9, 3.668959539783223*^9}, {
   3.6690206185125837`*^9, 3.669020618918292*^9}, {3.669023705803197*^9, 
   3.669023722753055*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Show", "[", 
  RowBox[{"{", 
   RowBox[{"theory", ",", "dataPlot"}], "}"}], "]"}]], "Input",
 CellChangeTimes->{{3.669020797288986*^9, 3.669020830505513*^9}, {
   3.669023374764914*^9, 3.669023396964981*^9}, 3.669023437526402*^9, {
   3.66902349570654*^9, 3.669023508680963*^9}, {3.669023725867358*^9, 
   3.66902373178467*^9}, {3.669023937794965*^9, 3.669023942002687*^9}, {
   3.669024012120859*^9, 3.669024036308057*^9}, {3.6690240827475157`*^9, 
   3.669024096273267*^9}, {3.6690249827263193`*^9, 3.669025012429204*^9}, {
   3.6690250536934357`*^9, 3.669025099100974*^9}, {3.669025208345647*^9, 
   3.669025211015226*^9}, {3.669025274301203*^9, 3.669025302628517*^9}, {
   3.66902536472745*^9, 3.6690256040427637`*^9}, {3.669040466261732*^9, 
   3.669040486607811*^9}, {3.669040531611023*^9, 3.669040557607624*^9}, 
   3.6690405897803297`*^9, {3.669040978563119*^9, 3.669040995265114*^9}, {
   3.6690413300419827`*^9, 3.669041331635569*^9}, {3.66905971392421*^9, 
   3.6690597218105516`*^9}, {3.669059771815064*^9, 3.6690597757018957`*^9}}],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {GrayLevel[0], LineBox[CompressedData["
1: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
uLuOPLhOYgqWc6TsXya2462DxiqDh4UI/vGc1+yodsw2xblh0cUE+v6f03uD
2/FLHa96wX8p4cTA86MBvnz/efTV8Y1LCd/DfBOrL7SjDTHidwNrMWHnTjPa
yjPtqP/K/9vtm8KEZ81Ke+1O8vM9YBfB48/LojcFQjOM29FIRMprQocJPrJd
fzi67Th9yNEpZdUvGPj5Xk5Tsx1NB48YJOn16tw+MaO/f2c7SgrYPHgA1bCe
pHtOW57Pn0vahyFDOhR5Rz44tL4dafG8iADJKTD/+/s9SLTjiLyVSoSSEIFz
b127rkg73lYK3CGxZjEhcp3T7OHZNpy2ltfr27iMoJiVvdlguA1rdiQOXPBY
Tvi+m3v4KL0NJ1k5e1e+X0pw+L7Pw6i3DTW6dhi8NxMjTJvciTJubsPSN/hW
R0mQ8Lin8p1JTRtOcXUZgpPjoH5uWatZWRtul34r3fWODPWTJ6YtitowtD9U
2W95GXjeTZaxetOGHgJnJELrQkFEkqJ7Mr0N9fTfC9xybIb0NBV3m8Q2HCM8
8+ou4MAhVZ97dtFtSKv8Hmt3Yw46S768dQhpw/r8/IOi2SKEa8cEmx39+P67
dyQ8D15CWNl+bNLZuw1V/SS/V0tLEPJcYze4urUhVStAZC5fgnBspAPc7dqw
VcLrrr3sMgI1QNbVw7wNZ+aJIqt4ooTgZR4R5wz5axIr0llNgLA5KT/3wqE2
PBo2DlvDRqFEafK3124+XqOwvF30Xjj5UWf8knIbhqx8kl5zLhdGD4et99nc
hk8mys/uuPYaYprqD11b3YYxwq5Jk0G9oOK4+ozvkjbcY/k/hqs7HusvCsve
e2fLHhmRjO+hkIQkGSGjQpRfWWWPFDKSkIRERvbeXHuv930lWUlIRGZU4ufP
8zn33vOc8TnPffhZKFI3sa4Vq8cPiT6gn6WOXj+9icDBJ+u9769RVJz0h+1t
AgUckK8M+v8YRfcVGjR45eggJUFhM3BuFFnIGBwiBkZQFvJlDxkfRRuqNtbB
HQyAL2lVfTQ0iprs8r4+lqUFNw0q28cdo+jFGvn5X5zkQN1v/Ci8fhStVSiS
BkT9w3IsknMjS0dRmfLJ09Jra9i5xc/9UTmjSKfD8MJAHgGb9RBbj0kdRStP
Lmhy6Ydi/sf+Y42LH0WyLnv/1KtbMc5n1SrxEaOosdjBxC9mAavkObBOCBxF
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
PrAXvco=
      "]]}}, {{}, 
    {RGBColor[1, 0, 0], PointBox[CompressedData["
1:eJxTTMoPSmViYGCQBGIQjQo+2P9Z+fGSb1KCvSpb41Tn7kdQfoF9xCmjIxv1
rtn/qsvaUzK5wp5vn8FMLYmjUPkG+6qlOs4yrzfZV4usc39Y1WLfFnV5z2OR
tVD1HfYLr5m8t3Ddbl/5Us2QY00PXB6if4L9prnvlx/zXm5vfd+/d3reJHuL
H4dSViUsgZo3xZ5767LK45qr7Hd58jBpt09DM3+G/d6gaYp9pRth7t+P5v79
aO7fj+b+/Wju34/m/v1o7t+P5v79aO7fj+b+/WjuRzN/xn6Y+wEp1Mou
      
      "]], {{LineBox[{{0.001, 1.}, {-0.001, 1.}}], 
       LineBox[{
        Offset[{0, 1.5}, {0.001, 1.}], Offset[{0, -1.5}, {0.001, 1.}]}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.001, 1.}], Offset[{0, -1.5}, {-0.001, 1.}]}], 
       LineBox[{{0., 1.025}, {0., 0.975}}], 
       LineBox[{
        Offset[{1.5, 0}, {0., 1.025}], Offset[{-1.5, 0}, {0., 1.025}]}], 
       LineBox[{
        Offset[{1.5, 0}, {0., 0.975}], Offset[{-1.5, 0}, {0., 0.975}]}]}, {
       LineBox[{{0.003, 0.5795}, {0.001, 0.5795}}], 
       LineBox[{
        Offset[{0, 1.5}, {0.003, 0.5795}], 
         Offset[{0, -1.5}, {0.003, 0.5795}]}], 
       LineBox[{
        Offset[{0, 1.5}, {0.001, 0.5795}], 
         Offset[{0, -1.5}, {0.001, 0.5795}]}], 
       LineBox[{{0.002, 0.6045}, {0.002, 0.5545}}], 
       LineBox[{
        Offset[{1.5, 0}, {0.002, 0.6045}], 
         Offset[{-1.5, 0}, {0.002, 0.6045}]}], 
       LineBox[{
        Offset[{1.5, 0}, {0.002, 0.5545}], 
         Offset[{-1.5, 0}, {0.002, 0.5545}]}]}, {
       LineBox[{{0.005, 0.3466}, {0.003, 0.3466}}], 
       LineBox[{
        Offset[{0, 1.5}, {0.005, 0.3466}], 
         Offset[{0, -1.5}, {0.005, 0.3466}]}], 
       LineBox[{
        Offset[{0, 1.5}, {0.003, 0.3466}], 
         Offset[{0, -1.5}, {0.003, 0.3466}]}], 
       LineBox[{{0.004, 0.37160000000000004`}, {0.004, 0.3216}}], 
       LineBox[{
        Offset[{1.5, 0}, {0.004, 0.37160000000000004`}], 
         Offset[{-1.5, 0}, {0.004, 0.37160000000000004`}]}], 
       LineBox[{
        Offset[{1.5, 0}, {0.004, 0.3216}], 
         Offset[{-1.5, 0}, {0.004, 0.3216}]}]}, {
       LineBox[{{0.007, 0.1648}, {0.005, 0.1648}}], 
       LineBox[{
        Offset[{0, 1.5}, {0.007, 0.1648}], 
         Offset[{0, -1.5}, {0.007, 0.1648}]}], 
       LineBox[{
        Offset[{0, 1.5}, {0.005, 0.1648}], 
         Offset[{0, -1.5}, {0.005, 0.1648}]}], 
       LineBox[{{0.006, 0.1898}, {0.006, 0.1398}}], 
       LineBox[{
        Offset[{1.5, 0}, {0.006, 0.1898}], 
         Offset[{-1.5, 0}, {0.006, 0.1898}]}], 
       LineBox[{
        Offset[{1.5, 0}, {0.006, 0.1398}], 
         Offset[{-1.5, 0}, {0.006, 0.1398}]}]}, {
       LineBox[{{0.009000000000000001, 0.0739}, {0.007, 0.0739}}], 
       LineBox[{
        Offset[{0, 1.5}, {0.009000000000000001, 0.0739}], 
         Offset[{0, -1.5}, {0.009000000000000001, 0.0739}]}], 
       LineBox[{
        Offset[{0, 1.5}, {0.007, 0.0739}], 
         Offset[{0, -1.5}, {0.007, 0.0739}]}], 
       LineBox[{{0.008, 0.09889999999999999}, {0.008, 0.04889999999999999}}], 
       LineBox[{
        Offset[{1.5, 0}, {0.008, 0.09889999999999999}], 
         Offset[{-1.5, 0}, {0.008, 0.09889999999999999}]}], 
       LineBox[{
        Offset[{1.5, 0}, {0.008, 0.04889999999999999}], 
         Offset[{-1.5, 0}, {0.008, 0.04889999999999999}]}]}, {
       LineBox[{{0.011, 0.0568}, {0.009000000000000001, 0.0568}}], 
       LineBox[{
        Offset[{0, 1.5}, {0.011, 0.0568}], 
         Offset[{0, -1.5}, {0.011, 0.0568}]}], 
       LineBox[{
        Offset[{0, 1.5}, {0.009000000000000001, 0.0568}], 
         Offset[{0, -1.5}, {0.009000000000000001, 0.0568}]}], 
       LineBox[{{0.01, 0.08180000000000001}, {0.01, 0.0318}}], 
       LineBox[{
        Offset[{1.5, 0}, {0.01, 0.08180000000000001}], 
         Offset[{-1.5, 0}, {0.01, 0.08180000000000001}]}], 
       LineBox[{
        Offset[{1.5, 0}, {0.01, 0.0318}], 
         Offset[{-1.5, 0}, {0.01, 0.0318}]}]}, {
       LineBox[{{0.013000000000000001`, 0.0909}, {0.011, 0.0909}}], 
       LineBox[{
        Offset[{0, 1.5}, {0.013000000000000001`, 0.0909}], 
         Offset[{0, -1.5}, {0.013000000000000001`, 0.0909}]}], 
       LineBox[{
        Offset[{0, 1.5}, {0.011, 0.0909}], 
         Offset[{0, -1.5}, {0.011, 0.0909}]}], 
       LineBox[{{0.012, 0.1159}, {0.012, 0.06589999999999999}}], 
       LineBox[{
        Offset[{1.5, 0}, {0.012, 0.1159}], 
         Offset[{-1.5, 0}, {0.012, 0.1159}]}], 
       LineBox[{
        Offset[{1.5, 0}, {0.012, 0.06589999999999999}], 
         Offset[{-1.5, 0}, {0.012, 0.06589999999999999}]}]}, {
       LineBox[{{0.015, 0.0568}, {0.013000000000000001`, 0.0568}}], 
       LineBox[{
        Offset[{0, 1.5}, {0.015, 0.0568}], 
         Offset[{0, -1.5}, {0.015, 0.0568}]}], 
       LineBox[{
        Offset[{0, 1.5}, {0.013000000000000001`, 0.0568}], 
         Offset[{0, -1.5}, {0.013000000000000001`, 0.0568}]}], 
       LineBox[{{0.014, 0.08180000000000001}, {0.014, 0.0318}}], 
       LineBox[{
        Offset[{1.5, 0}, {0.014, 0.08180000000000001}], 
         Offset[{-1.5, 0}, {0.014, 0.08180000000000001}]}], 
       LineBox[{
        Offset[{1.5, 0}, {0.014, 0.0318}], 
         Offset[{-1.5, 0}, {0.014, 0.0318}]}]}, {
       LineBox[{{0.017, 0.0455}, {0.015, 0.0455}}], 
       LineBox[{
        Offset[{0, 1.5}, {0.017, 0.0455}], 
         Offset[{0, -1.5}, {0.017, 0.0455}]}], 
       LineBox[{
        Offset[{0, 1.5}, {0.015, 0.0455}], 
         Offset[{0, -1.5}, {0.015, 0.0455}]}], 
       LineBox[{{0.016, 0.07050000000000001}, {0.016, 
        0.020499999999999997`}}], 
       LineBox[{
        Offset[{1.5, 0}, {0.016, 0.07050000000000001}], 
         Offset[{-1.5, 0}, {0.016, 0.07050000000000001}]}], 
       LineBox[{
        Offset[{1.5, 0}, {0.016, 0.020499999999999997`}], 
         Offset[{-1.5, 0}, {0.016, 0.020499999999999997`}]}]}, {
       LineBox[{{0.019, 0.0398}, {0.016999999999999998`, 0.0398}}], 
       LineBox[{
        Offset[{0, 1.5}, {0.019, 0.0398}], 
         Offset[{0, -1.5}, {0.019, 0.0398}]}], 
       LineBox[{
        Offset[{0, 1.5}, {0.016999999999999998`, 0.0398}], 
         Offset[{0, -1.5}, {0.016999999999999998`, 0.0398}]}], 
       LineBox[{{0.018, 0.0648}, {0.018, 0.0148}}], 
       LineBox[{
        Offset[{1.5, 0}, {0.018, 0.0648}], 
         Offset[{-1.5, 0}, {0.018, 0.0648}]}], 
       LineBox[{
        Offset[{1.5, 0}, {0.018, 0.0148}], 
         Offset[{-1.5, 0}, {0.018, 0.0148}]}]}, {
       LineBox[{{0.021, 0.0511}, {0.019, 0.0511}}], 
       LineBox[{
        Offset[{0, 1.5}, {0.021, 0.0511}], 
         Offset[{0, -1.5}, {0.021, 0.0511}]}], 
       LineBox[{
        Offset[{0, 1.5}, {0.019, 0.0511}], 
         Offset[{0, -1.5}, {0.019, 0.0511}]}], 
       LineBox[{{0.02, 0.0761}, {0.02, 0.026099999999999998`}}], 
       LineBox[{
        Offset[{1.5, 0}, {0.02, 0.0761}], Offset[{-1.5, 0}, {0.02, 0.0761}]}],
        LineBox[{
        Offset[{1.5, 0}, {0.02, 0.026099999999999998`}], 
         Offset[{-1.5, 0}, {0.02, 0.026099999999999998`}]}]}, {
       LineBox[{{0.023, 0.0568}, {0.020999999999999998`, 0.0568}}], 
       LineBox[{
        Offset[{0, 1.5}, {0.023, 0.0568}], 
         Offset[{0, -1.5}, {0.023, 0.0568}]}], 
       LineBox[{
        Offset[{0, 1.5}, {0.020999999999999998`, 0.0568}], 
         Offset[{0, -1.5}, {0.020999999999999998`, 0.0568}]}], 
       LineBox[{{0.022, 0.08180000000000001}, {0.022, 0.0318}}], 
       LineBox[{
        Offset[{1.5, 0}, {0.022, 0.08180000000000001}], 
         Offset[{-1.5, 0}, {0.022, 0.08180000000000001}]}], 
       LineBox[{
        Offset[{1.5, 0}, {0.022, 0.0318}], 
         Offset[{-1.5, 0}, {0.022, 0.0318}]}]}, {
       LineBox[{{0.025, 0.0682}, {0.023, 0.0682}}], 
       LineBox[{
        Offset[{0, 1.5}, {0.025, 0.0682}], 
         Offset[{0, -1.5}, {0.025, 0.0682}]}], 
       LineBox[{
        Offset[{0, 1.5}, {0.023, 0.0682}], 
         Offset[{0, -1.5}, {0.023, 0.0682}]}], 
       LineBox[{{0.024, 0.0932}, {0.024, 0.043199999999999995`}}], 
       LineBox[{
        Offset[{1.5, 0}, {0.024, 0.0932}], 
         Offset[{-1.5, 0}, {0.024, 0.0932}]}], 
       LineBox[{
        Offset[{1.5, 0}, {0.024, 0.043199999999999995`}], 
         Offset[{-1.5, 0}, {0.024, 0.043199999999999995`}]}]}, {
       LineBox[{{-0.001, 0.5795}, {-0.003, 0.5795}}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.001, 0.5795}], 
         Offset[{0, -1.5}, {-0.001, 0.5795}]}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.003, 0.5795}], 
         Offset[{0, -1.5}, {-0.003, 0.5795}]}], 
       LineBox[{{-0.002, 0.6045}, {-0.002, 0.5545}}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.002, 0.6045}], 
         Offset[{-1.5, 0}, {-0.002, 0.6045}]}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.002, 0.5545}], 
         Offset[{-1.5, 0}, {-0.002, 0.5545}]}]}, {
       LineBox[{{-0.003, 0.3466}, {-0.005, 0.3466}}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.003, 0.3466}], 
         Offset[{0, -1.5}, {-0.003, 0.3466}]}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.005, 0.3466}], 
         Offset[{0, -1.5}, {-0.005, 0.3466}]}], 
       LineBox[{{-0.004, 0.37160000000000004`}, {-0.004, 0.3216}}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.004, 0.37160000000000004`}], 
         Offset[{-1.5, 0}, {-0.004, 0.37160000000000004`}]}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.004, 0.3216}], 
         Offset[{-1.5, 0}, {-0.004, 0.3216}]}]}, {
       LineBox[{{-0.005, 0.1648}, {-0.007, 0.1648}}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.005, 0.1648}], 
         Offset[{0, -1.5}, {-0.005, 0.1648}]}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.007, 0.1648}], 
         Offset[{0, -1.5}, {-0.007, 0.1648}]}], 
       LineBox[{{-0.006, 0.1898}, {-0.006, 0.1398}}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.006, 0.1898}], 
         Offset[{-1.5, 0}, {-0.006, 0.1898}]}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.006, 0.1398}], 
         Offset[{-1.5, 0}, {-0.006, 0.1398}]}]}, {
       LineBox[{{-0.007, 0.0739}, {-0.009000000000000001, 0.0739}}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.007, 0.0739}], 
         Offset[{0, -1.5}, {-0.007, 0.0739}]}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.009000000000000001, 0.0739}], 
         Offset[{0, -1.5}, {-0.009000000000000001, 0.0739}]}], 
       LineBox[{{-0.008, 0.09889999999999999}, {-0.008, 
        0.04889999999999999}}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.008, 0.09889999999999999}], 
         Offset[{-1.5, 0}, {-0.008, 0.09889999999999999}]}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.008, 0.04889999999999999}], 
         Offset[{-1.5, 0}, {-0.008, 0.04889999999999999}]}]}, {
       LineBox[{{-0.009000000000000001, 0.0568}, {-0.011, 0.0568}}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.009000000000000001, 0.0568}], 
         Offset[{0, -1.5}, {-0.009000000000000001, 0.0568}]}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.011, 0.0568}], 
         Offset[{0, -1.5}, {-0.011, 0.0568}]}], 
       LineBox[{{-0.01, 0.08180000000000001}, {-0.01, 0.0318}}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.01, 0.08180000000000001}], 
         Offset[{-1.5, 0}, {-0.01, 0.08180000000000001}]}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.01, 0.0318}], 
         Offset[{-1.5, 0}, {-0.01, 0.0318}]}]}, {
       LineBox[{{-0.011, 0.0909}, {-0.013000000000000001`, 0.0909}}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.011, 0.0909}], 
         Offset[{0, -1.5}, {-0.011, 0.0909}]}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.013000000000000001`, 0.0909}], 
         Offset[{0, -1.5}, {-0.013000000000000001`, 0.0909}]}], 
       LineBox[{{-0.012, 0.1159}, {-0.012, 0.06589999999999999}}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.012, 0.1159}], 
         Offset[{-1.5, 0}, {-0.012, 0.1159}]}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.012, 0.06589999999999999}], 
         Offset[{-1.5, 0}, {-0.012, 0.06589999999999999}]}]}, {
       LineBox[{{-0.013000000000000001`, 0.0568}, {-0.015, 0.0568}}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.013000000000000001`, 0.0568}], 
         Offset[{0, -1.5}, {-0.013000000000000001`, 0.0568}]}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.015, 0.0568}], 
         Offset[{0, -1.5}, {-0.015, 0.0568}]}], 
       LineBox[{{-0.014, 0.08180000000000001}, {-0.014, 0.0318}}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.014, 0.08180000000000001}], 
         Offset[{-1.5, 0}, {-0.014, 0.08180000000000001}]}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.014, 0.0318}], 
         Offset[{-1.5, 0}, {-0.014, 0.0318}]}]}, {
       LineBox[{{-0.015, 0.0455}, {-0.017, 0.0455}}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.015, 0.0455}], 
         Offset[{0, -1.5}, {-0.015, 0.0455}]}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.017, 0.0455}], 
         Offset[{0, -1.5}, {-0.017, 0.0455}]}], 
       LineBox[{{-0.016, 0.07050000000000001}, {-0.016, 
        0.020499999999999997`}}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.016, 0.07050000000000001}], 
         Offset[{-1.5, 0}, {-0.016, 0.07050000000000001}]}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.016, 0.020499999999999997`}], 
         Offset[{-1.5, 0}, {-0.016, 0.020499999999999997`}]}]}, {
       LineBox[{{-0.016999999999999998`, 0.0398}, {-0.019, 0.0398}}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.016999999999999998`, 0.0398}], 
         Offset[{0, -1.5}, {-0.016999999999999998`, 0.0398}]}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.019, 0.0398}], 
         Offset[{0, -1.5}, {-0.019, 0.0398}]}], 
       LineBox[{{-0.018, 0.0648}, {-0.018, 0.0148}}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.018, 0.0648}], 
         Offset[{-1.5, 0}, {-0.018, 0.0648}]}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.018, 0.0148}], 
         Offset[{-1.5, 0}, {-0.018, 0.0148}]}]}, {
       LineBox[{{-0.019, 0.0511}, {-0.021, 0.0511}}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.019, 0.0511}], 
         Offset[{0, -1.5}, {-0.019, 0.0511}]}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.021, 0.0511}], 
         Offset[{0, -1.5}, {-0.021, 0.0511}]}], 
       LineBox[{{-0.02, 0.0761}, {-0.02, 0.026099999999999998`}}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.02, 0.0761}], 
         Offset[{-1.5, 0}, {-0.02, 0.0761}]}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.02, 0.026099999999999998`}], 
         Offset[{-1.5, 0}, {-0.02, 0.026099999999999998`}]}]}, {
       LineBox[{{-0.020999999999999998`, 0.0568}, {-0.023, 0.0568}}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.020999999999999998`, 0.0568}], 
         Offset[{0, -1.5}, {-0.020999999999999998`, 0.0568}]}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.023, 0.0568}], 
         Offset[{0, -1.5}, {-0.023, 0.0568}]}], 
       LineBox[{{-0.022, 0.08180000000000001}, {-0.022, 0.0318}}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.022, 0.08180000000000001}], 
         Offset[{-1.5, 0}, {-0.022, 0.08180000000000001}]}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.022, 0.0318}], 
         Offset[{-1.5, 0}, {-0.022, 0.0318}]}]}, {
       LineBox[{{-0.023, 0.0682}, {-0.025, 0.0682}}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.023, 0.0682}], 
         Offset[{0, -1.5}, {-0.023, 0.0682}]}], 
       LineBox[{
        Offset[{0, 1.5}, {-0.025, 0.0682}], 
         Offset[{0, -1.5}, {-0.025, 0.0682}]}], 
       LineBox[{{-0.024, 0.0932}, {-0.024, 0.043199999999999995`}}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.024, 0.0932}], 
         Offset[{-1.5, 0}, {-0.024, 0.0932}]}], 
       LineBox[{
        Offset[{1.5, 0}, {-0.024, 0.043199999999999995`}], 
         Offset[{-1.5, 0}, {-0.024, 0.043199999999999995`}]}]}}}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  Frame->True,
  FrameLabel->{{
     FormBox[
      StyleBox[
      "\"\\!\\(\\*FractionBox[\\(I\\), SubscriptBox[\\(I\\), \\(0\\)]]\\)\"", 
       16, StripOnInput -> False], TraditionalForm], None}, {
     FormBox[
      StyleBox["\"Angular Displacement (rad)\"", 16, StripOnInput -> False], 
      TraditionalForm], 
     FormBox[
      StyleBox[
      "\"Single Slit Diffraction Pattern\"", 20, StripOnInput -> False], 
      TraditionalForm]}},
  ImageSize->600,
  PlotRange->{{-0.02, 0.02}, {0, 1}},
  PlotRangeClipping->True,
  PlotRangePadding->{0.01, 0.05},
  RotateLabel->False]], "Output",
 CellChangeTimes->{{3.669025509625588*^9, 3.669025612799757*^9}, 
   3.669025732206683*^9, 3.6690265435216217`*^9, {3.669031654016734*^9, 
   3.669031782576331*^9}, 3.669031997530931*^9, 3.669040386419229*^9, 
   3.6690405917633533`*^9, 3.6690409959546556`*^9, 3.6690413403370447`*^9, 
   3.669059715757431*^9, {3.669059772945777*^9, 3.669059778199088*^9}, 
   3.6690726764968853`*^9, 3.669072905449821*^9, 3.669073971973613*^9}]
}, Open  ]],

Cell[TextData[StyleBox["TODO:  Figure out how to attaach the legend to the \
plot",
 FontSize->16]], "Text",
 CellChangeTimes->{{3.6690727036665277`*^9, 3.6690727115644827`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Legend", "[", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Graphics", "[", 
        RowBox[{"{", 
         RowBox[{"Black", ",", 
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"2", ",", "0"}], "}"}]}], "}"}], "]"}]}], "}"}], "]"}], 
       ",", 
       RowBox[{"Style", "[", 
        RowBox[{"\"\<   theory\>\"", ",", "Large"}], "]"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Graphics", "[", 
        RowBox[{"{", 
         RowBox[{"Red", ",", 
          RowBox[{"Disk", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "0.5"}], "}"}], ",", "0.05"}], "]"}], ",", 
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", "1"}], "}"}]}], "}"}], "]"}], ",", 
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "0.5"}], ",", "0.5"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"0.5", ",", "0.5"}], "}"}]}], "}"}], "]"}], ",", 
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "0.05"}], ",", "1"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"0.05", ",", "1"}], "}"}]}], "}"}], "]"}], ",", 
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "0.05"}], ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"0.05", ",", "0"}], "}"}]}], "}"}], "]"}], ",", 
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "0.5"}], ",", "0.46"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "0.5"}], ",", "0.54"}], "}"}]}], "}"}], "]"}], 
          ",", 
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0.5", ",", "0.46"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"0.5", ",", "0.54"}], "}"}]}], "}"}], "]"}]}], "}"}], 
        "]"}], ",", 
       RowBox[{"Style", "[", 
        RowBox[{"\"\<   data\>\"", ",", "Large"}], "]"}]}], "}"}]}], "}"}], 
   "]"}], "//", "Graphics"}]], "Input",
 CellChangeTimes->{{3.669024187890459*^9, 3.669024288679183*^9}, {
  3.669024343716339*^9, 3.6690246622097282`*^9}, {3.669024693346697*^9, 
  3.669024734992921*^9}, {3.669024832810357*^9, 3.669024870191833*^9}, {
  3.669024950493566*^9, 3.669024955257596*^9}, {3.669059743663123*^9, 
  3.669059753744022*^9}, {3.669072610086527*^9, 3.6690726327711153`*^9}, {
  3.669072747403063*^9, 3.6690728161794167`*^9}, {3.669072848033783*^9, 
  3.6690728484425592`*^9}}],

Cell[BoxData[
 GraphicsBox[GraphicsGroupBox[{
    {GrayLevel[0], 
     RectangleBox[{-0.95, -1.05}, \
{-0.14999999999999997`, -0.4499999999999999}]}, 
    {GrayLevel[1], EdgeForm[{GrayLevel[0], Thickness[0.001]}], 
     GraphicsGroupBox[{
       RectangleBox[{-1, -1}, {-0.19999999999999996`, -0.3999999999999999}], 
       InsetBox[
        GraphicsBox[{{{InsetBox[
             GraphicsBox[
              {RGBColor[1, 0, 0], DiskBox[{0, 0.5}, 0.05], 
               LineBox[{{0, 0}, {0, 1}}], LineBox[{{-0.5, 0.5}, {0.5, 0.5}}], 
               LineBox[{{-0.05, 1}, {0.05, 1}}], 
               LineBox[{{-0.05, 0}, {0.05, 0}}], 
               LineBox[{{-0.5, 0.46}, {-0.5, 0.54}}], 
               LineBox[{{0.5, 0.46}, {0.5, 0.54}}]}], {0.08, 0.08}, {
             Left, Bottom}, {1, 1}], InsetBox[
             StyleBox["\<\"   data\"\>",
              StripOnInput->False,
              FontSize->Large], {1.2100000000000002`, 0.58}, {-1, 0}, 
             Automatic, {1, 0}]}, {InsetBox[
             GraphicsBox[
              {GrayLevel[0], LineBox[{{0, 0}, {2, 0}}]}], {0.08, 1.24}, {
             Left, Bottom}, {1, 1}], InsetBox[
             StyleBox["\<\"   theory\"\>",
              StripOnInput->False,
              FontSize->Large], {1.2100000000000002`, 1.74}, {-1, 0}, 
             Automatic, {1, 0}]}}, {}},
         AspectRatio->0.7500000000000001,
         PlotRange->{{-0.1, 3.26}, {-0.1, 2.42}}], {-1, -1}, {
        Left, Bottom}, {0.8, 0.6000000000000001}]}]}}]]], "Output",
 CellChangeTimes->{
  3.669072634057972*^9, 3.669072688902102*^9, {3.669072775226894*^9, 
   3.6690728168447247`*^9}, 3.669072849246422*^9, 3.6690729134715014`*^9, 
   3.669073975240013*^9}]
}, Open  ]]
},
WindowSize->{805, 847},
WindowMargins->{{-1, Automatic}, {Automatic, 0}},
FrontEndVersion->"8.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (October 5, \
2011)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1235, 30, 229, 4, 32, "Text"],
Cell[1467, 36, 225, 3, 43, "Input"],
Cell[1695, 41, 222, 3, 32, "Text"],
Cell[1920, 46, 849, 18, 53, "Input"],
Cell[2772, 66, 177, 3, 32, "Text"],
Cell[2952, 71, 6113, 176, 208, "Input"],
Cell[9068, 249, 154, 2, 32, "Text"],
Cell[9225, 253, 2408, 56, 155, "Input"],
Cell[11636, 311, 172, 2, 30, "Text"],
Cell[11811, 315, 360, 8, 27, "Input"],
Cell[CellGroupData[{
Cell[12196, 327, 1068, 16, 27, "Input"],
Cell[13267, 345, 81631, 1450, 419, "Output"]
}, Open  ]],
Cell[94913, 1798, 178, 3, 30, "Text"],
Cell[CellGroupData[{
Cell[95116, 1805, 3203, 87, 88, "Input"],
Cell[98322, 1894, 1695, 35, 293, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature kupCBErV0xfCADgg#8mQ3vmz *)
