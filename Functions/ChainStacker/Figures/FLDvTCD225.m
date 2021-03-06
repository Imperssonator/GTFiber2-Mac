function f1 = FLDvTCD225()

f225='/Users/Imperssonator/Google Drive/Papers/Tie Chain Model/Data/res_225.csv';
f125='/Users/Imperssonator/Google Drive/Papers/Tie Chain Model/Data/res_125.csv';


% Results for PDI = 2.25
navy = [31; 119; 180];
green = [44; 160; 44];
red = [214; 39; 40];
EdgeAlpha = 175;
FaceAlpha = 150;
MarkSize = 60;

load('ChainStackTable')

% Create figure
f1=figure;
hax = gca;
hold(hax,'on')

% Mn = 10 kD
hs10 = scatter(hax,res225(:,2),res225(:,5));
drawnow;

hax.FontSize=16;
hax.Box = 'on';
hax.LineWidth = 0.75;
hax.PlotBoxAspectRatio = [1 1 1];
hax.YLim = [0 1.6];

set(hs10,'SizeData',MarkSize)
hMarks10 = hs10.MarkerHandle;
hMarks10.EdgeColorData = uint8([red./1.2; EdgeAlpha]);
hMarks10.FaceColorData = uint8([red; FaceAlpha]);


% Mn = 25 kD
hs25 = scatter(hax,res225(:,2),res225(:,6));
drawnow;

set(hs25,'SizeData',MarkSize)
hMarks25 = hs25.MarkerHandle;
hMarks25.EdgeColorData = uint8([green./1.2; EdgeAlpha]);
hMarks25.FaceColorData = uint8([green; FaceAlpha]);


% Mn = 40 kD
hs40 = scatter(hax,res225(:,2),res225(:,7));
drawnow;

set(hs40,'SizeData',MarkSize)
hMarks40 = hs40.MarkerHandle;
hMarks40.EdgeColorData = uint8([navy./1.2; EdgeAlpha]);
hMarks40.FaceColorData = uint8([navy; FaceAlpha]);


% Make Second x-axis for inter-fiber distance
hax2 = copyobj(hax,f1);
hax2.XAxisLocation='top';
hax2.XTickLabels= ...
    cellfun(...
    @(x) num2str(1000/str2num(x),3),...
    hax2.XTickLabels,...
    'UniformOutput',false);

f1.Children = flipud(f1.Children);

