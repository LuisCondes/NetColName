function [y1] = ColorNameNNlab(x1)
% [y1] = ColorNameNN(x1) takes these arguments:
%   x = 3xQ matrix, input #1
% and returns:
%   y = 11xQ matrix, output #1
% where Q is the number of samples.

% Input 1
x1_step1_xoffset = [28.6548121;-39.62021912;-35.03223284];
x1_step1_gain = [0.0288958129845045;0.020587195116699;0.0201308673646076];
x1_step1_ymin = -1;

% Layer 1
b1 = [-4.6751184077716417;-3.8038708787267406;-3.1787172352563946;3.3566652784177076;3.1572725853143848;-2.9420307710490512;-2.4421036991387597;-2.1739185585060556;-1.4309033232493626;-2.4620349600179301;-1.1214974222442833;1.1829815223433435;1.6498297129743484;1.5780080024118286;-0.38844496892403074;0.81419156259273551;-1.7720123658867784;-0.31044847896442018;0.37801790169375366;-0.25320369997007547;1.5012689849606669;-0.8343669348893874;0.59072647784489896;1.5328553166361887;-1.293383197492437;2.0315759274002869;2.5625880155069507;-2.0402996309691952;-2.8727204909381192;-4.0635993170302234;3.4180642192894068;4.595224297977774;-4.3289230477676668];
IW1_1 = [3.6570120236898456 2.3483756281299191 0.26885611375982443;3.2283351480266296 2.5703977503582283 -3.0038183767359912;4.6380554486315617 2.2805268316596532 -0.07927436318682321;-2.6169943034194416 1.6893779903354802 -3.5450635831615713;-2.1722298757665097 -3.9422043382004501 1.6891249643595834;3.3220107454082259 -0.75702615982077048 3.3050054436601193;0.86108013767003655 2.2162204755974853 3.9536975147283759;0.30302877047369575 -0.11792264988028819 4.5952515238272884;0.41060416174780179 -6.0840155682873496 -0.046635994781678139;2.1078223657573067 -2.9123993330971145 -3.261145047406703;-0.22709602759817465 2.3911586183909037 -5.6998045870089245;-3.1581698933368698 -4.4477930924444129 -2.01801777771488;-0.082801929530275487 5.1679132681072009 1.7008587242454591;-0.79788272645428493 -4.6469245818432601 2.5617725580989599;3.2464294168190455 1.5991585716516241 -2.912567814952133;1.5827584462821833 0.40534433020589711 4.3061012109247967;1.6023668054883295 -4.1443410783896484 0.33823340706179;2.7921330392020671 0.81141899881905744 -3.7669128052940835;-0.34052325707575554 -3.226442266205344 4.566032734818898;1.3311807642176428 4.6229766954689921 2.1171616739945307;2.5609867761264828 3.3182027657293811 -2.1914437669872018;-2.9425571562907682 -2.7308066681275101 2.9021185110249843;0.61368443615448032 -4.3144731236856932 2.467017100463222;3.0183566688380616 -3.5544005868685633 0.16340996771414704;0.7051731681607476 -4.2852428817667256 2.4021265182459128;5.0247288204856613 -0.4042744293796513 -0.029678253874021291;2.1509269400217574 4.0046340178289705 1.7276638620081934;-2.1306837248638701 3.0477263859215387 3.5860325626420497;-1.9495744958871293 0.4994944860593189 -4.3054928943020219;-1.1242487855894765 3.0089761792870644 -2.5851056093785001;2.5900976507700051 -4.1318955798428894 1.0019469823089384;1.5144319151651395 2.9896860195807404 2.5418200478650159;-0.72725337796711365 -4.4224433600670556 -1.2561983057968515];

% Layer 2
b2 = [-0.64599707435596954;-0.85412433786075448;0.21595469207798246;0.66120666299892938;-0.19430590029736064;0.18341278950004486;0.16703999371471934;0.82174654329305774;-0.64706782912127869;0.20895150469959761;0.21482659993216183];
LW2_1 = [-0.69919932995642453 -0.11983791790938345 -0.94190854673210922 -0.43523336336465662 0.97625345683095088 0.58185964635776211 1.3844775364091895 0.087044269893955875 -0.98567947474229534 -0.56497877551078168 0.98339644956836547 -0.74572973552773736 -0.19961208672899777 -2.2121827457069303 -1.0702006907433637 1.0566646435691842 -0.73748456526512329 -1.0182435835842027 -0.58627062867649915 0.98609415131365108 -0.20524996646169744 -1.3549008280418746 -0.71516758171484573 -0.62982103383741994 -0.34291749475164579 0.87223291180193541 0.92373823057566085 1.5281024914571024 -0.72588832262576786 -0.32456068176369346 -1.3902530122267054 0.7680189490703232 -0.05502714829817075;0.17780145451728799 -0.35137531747962553 -0.38973671012383548 0.32196577576931384 0.48984724633114862 0.63452665424039889 0.37723106322800998 0.34810420756968352 -1.9809514787494391 -0.070612994119682498 -1.6963601800887236 -2.2658924020521956 1.2499454270205665 0.65151700071680119 -0.22742663975198779 0.63521923859021001 -1.4132257431013369 -0.51778289442888337 2.2323810651020874 1.9094007052864745 0.6514053230163992 -0.17274750651902504 -0.18444184738367062 0.66851438207374858 -0.32364965442928173 0.99002876942342311 -0.11012583628454656 0.9356341278985989 -0.36878769941582457 0.88728090199731846 0.74975303408241645 -0.016931551693386188 0.17676566805045904;-0.5295201051386218 -0.69647459667805622 -0.92079598068778956 -0.13222958986539521 -0.60418911351420357 -0.33581266740368931 -0.97069265870583832 -1.0519079438706063 -1.0593057312791552 -0.10305904087168309 -2.871736701025128 0.98453068763622753 1.6581583755630529 0.20414773261339147 -1.4213691804266813 1.1966731072980776 0.19161209177923091 -0.32085045845793925 1.032272770764356 0.346797517856758 -1.1953206633895279 1.0150680955285079 0.005564570909199049 -0.73913668589624326 -0.77567217055401072 -0.98208692286733001 2.2181699474664951 -0.54685629993419471 -1.0413842443146266 0.25611565180813484 0.94749976182413331 -0.68513469080286804 -1.10587394286445;-0.33043663934482798 -0.47831493878654069 -0.71458455072533522 -1.4314919977958278 0.6585181194103783 1.9899271607814166 1.0852099991763526 -0.15468781779576707 1.2728489985349019 -1.5576635634695322 -1.2522511471663811 -0.56381975237647108 0.9485721897712075 0.071357375304444998 0.20791487697339867 1.1150757808311285 1.4952254224518062 0.82712206983984193 1.3863927000150669 1.2329124668249918 0.86616858382014539 -0.2174088794861051 0.21062954660091784 0.78386954194047442 1.851736649020278 1.0957380470656115 -0.43858598354258338 0.28834200506527885 0.53927914996976523 -0.25042745696747837 0.2865205255002598 -0.74365545067638039 -1.0707975546417385;0.49842637568832648 -1.0793418317793702 -1.0718550886682336 -0.085139587762614627 0.79420108145979251 -0.56480880147216428 -1.0619049042328148 -0.42850427829785964 3.3905962266389693 0.57320160092901495 -2.7748408942891736 2.7865128152455094 -2.5184219500578711 1.1247986554899057 -0.51953612724972231 1.7039589736950005 1.1454153016762016 -0.38744904496071814 1.5760003044274691 -2.3893602262386406 -1.7233914009550344 2.016578698566764 0.18506260483908865 0.71308530544684134 2.1757450328385186 0.38417223584242211 -0.82254726719238991 -0.94576506337402433 -0.49427883295535252 0.44324350713911981 0.28727250382129393 -0.19404303099612702 -0.98419821513541461;-0.50104845993856384 -0.52608340747366711 -0.97019137607944095 -0.47390487451300195 0.84298196140809567 0.33097240106908765 -0.69996530530107526 0.51464993430958483 2.4033123538457706 2.0381922663275542 2.0607486362583094 2.544704988408435 -3.9676915326988258 -0.84094892037128499 0.83966662466740338 -2.683747717867091 1.8917906121646153 1.4172276082186481 -0.65789130899047032 -0.97145341398568497 -0.2433338376349061 -1.327614412029559 -0.60030277108998142 1.1089195389618318 -0.42464830340719895 -0.087267463902083203 -1.7696070320020874 -0.33282340608810695 2.0182749871726768 0.54218250777541699 -0.0068175779079587655 -0.80951763597967208 0.34212215647616928;-0.14076205051025142 0.59954625222366287 -0.82171819089286346 -0.21765853364650908 0.16190878623492419 0.78283200101643313 -0.56111519191675141 0.95482463194678713 -1.5059843252572362 -0.36000646803496217 2.5144408038945145 0.71432282442942263 1.3877660399044411 -2.4916542630593268 1.8607261530938435 -1.6244413107737992 -0.98627806598722589 1.0129932474427616 -0.0089950957390611177 -0.68170681326413052 -0.12503647287823216 -0.30139703422594988 -0.37847052362908773 0.09236942919256845 -0.66117050919319997 -0.99417668249251212 0.93485476960023817 -1.2084238809105017 0.8691416364506831 0.4445692195953439 -0.84583031308655288 -0.72107883072524714 -0.43776558859854459;-0.25886696934213488 -0.40972309087020609 -0.77732066203937544 -0.60323298514614043 -2.1722573368688289 -0.0059210150634140674 -0.78394126256507024 0.44518583490294916 -1.5399211403385979 -2.4330131043732424 0.10025546079145438 -2.8452467859023733 1.0482182412863978 -1.5305216037196179 2.2601113948407914 0.28599063354815346 -1.1538429704634849 1.6857227136738788 -0.44580724630872337 2.9118585415269616 0.10148781096305018 0.23103306441425162 0.63741317752927518 -0.9160241160286694 -0.12641400022597191 1.6467667543609792 0.17983742110472303 -0.66263786158622218 -0.88692272153464735 0.1538547782307684 -0.99231793595171958 -0.94610237771302541 0.6868822765577447;-0.50016534561123449 1.8614708432734342 1.3322981038837514 -0.84794679991774691 -0.30220349279862924 -0.36487733802246303 -0.38992877866862269 0.29346339609349592 0.21513799400186454 0.73957371077703205 0.46190075112994611 -1.0504112359640385 0.45066429726186807 -0.65226383098586593 1.1194259685164207 0.73758692630330902 0.65368995660749296 -0.37539035710055041 -1.3555565271783006 -0.692028771516629 0.92124916397269929 0.60543389154176652 -0.4138476883119615 0.47159100538979137 -0.12699228685542571 0.24226325258136575 0.83726814421833295 0.082607539129680871 -0.21706521710893784 0.13665161985078431 -0.64791948689292933 0.48408628023894479 0.68428477766862217;-0.35667936797298272 -1.051684467907424 0.64145653578654571 0.84312744091419556 0.049253928803947723 0.43624070368371548 0.12787456186347429 -0.62922933495827038 -0.44639887538177253 0.26460160952875827 1.6131245022185263 1.3460618668462561 -0.34535113426898928 2.2482450708241468 -1.1833240632619024 -0.69456584626515938 -0.63196735353291567 -0.84242813015596196 -2.058296219394129 -1.4433142233523646 0.31136650107740466 -0.63282471559547371 1.6799432401712839 1.0993151250633653 0.63270478851899925 0.58645172710662041 0.38770838501866484 -0.53244378941668058 -0.23444288401614197 0.84964417729063779 -0.1315355146482205 -0.22490867382456478 1.0190042476474339;-0.89384967286175576 -0.29539795275623026 0.79030772107912006 -0.02137785430079819 -0.086079177289947059 -0.25430958580995988 -1.0810546224367217 -0.49576962939222025 -0.51081447285420789 -0.55407482013878373 0.96420796061257552 -0.073431730785352312 -0.31900193437540958 0.038325621767419479 -1.1099306744672708 -0.4306147020033283 -0.56958327160545574 -1.3300366583861931 0.67494381521766134 -0.56577827832556837 -1.9819598250400015 1.0211168428334549 -0.34202956380240013 -0.893177370782399 0.19780379840352141 -0.54784243172092417 -1.5053364353552898 -0.7462439096132506 0.5240077037814177 0.22203162947760435 -0.69723573492740376 0.59039518185798778 -0.15665343469342691];

% ===== SIMULATION ========

% Dimensions
Q = size(x1,2); % samples

% Input 1
xp1 = mapminmax_apply(x1,x1_step1_gain,x1_step1_xoffset,x1_step1_ymin);

% Layer 1
a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*xp1);

% Layer 2
a2 = softmax_apply(repmat(b2,1,Q) + LW2_1*a1);

% Output 1
y1 = a2;
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings_gain,settings_xoffset,settings_ymin)
y = bsxfun(@minus,x,settings_xoffset);
y = bsxfun(@times,y,settings_gain);
y = bsxfun(@plus,y,settings_ymin);
end

% Competitive Soft Transfer Function
function a = softmax_apply(n)
nmax = max(n,[],1);
n = bsxfun(@minus,n,nmax);
numer = exp(n);
denom = sum(numer,1);
denom(denom == 0) = 1;
a = bsxfun(@rdivide,numer,denom);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n)
a = 2 ./ (1 + exp(-2*n)) - 1;
end