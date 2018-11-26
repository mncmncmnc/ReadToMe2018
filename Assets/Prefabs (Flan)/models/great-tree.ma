//Maya ASCII 2016 scene
//Name: great-tree.ma
//Last modified: Fri, Mar 31, 2017 09:00:25 PM
//Codeset: UTF-8
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Mac OS X 10.9";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "CB5638A5-7144-4580-8BC2-F186A3796A64";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.4946831538667129 -0.8853154810565087 5.710365195803405 ;
	setAttr ".r" -type "double3" 21.261647274137388 28.999999999982141 1.818250066572107e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D6F6ECAD-4144-86AD-2A5E-359C86D6642F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 7.1658144770359353;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.25709184123368312 1.7132058538482282 -0.13040414425256908 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "7BD8E1C0-CE4A-C1B4-6545-5CA53EFF309F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3796EB5D-AE40-36A3-D851-EE8DD555647C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "3A2DAE8A-C24C-DEB2-DA16-A3822D782CC0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "40917E0A-BD4A-DDAC-C6AD-689167EBCF2E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "48EAFE7A-864D-6D32-C3ED-27A163BF3054";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "813E41F1-1F47-7807-588F-24B851BA32CF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	rename -uid "F82377BD-2D4C-CACA-1E3D-9D9993E4E5CD";
	setAttr ".t" -type "double3" 0 1.0857671084634166 0 ;
	setAttr ".r" -type "double3" -1.5966834872459362e-15 -8.0523320426700838e-16 2.1656657730961291e-15 ;
	setAttr ".s" -type "double3" 0.20646990252636316 1.505802763005019 0.25077146157992369 ;
createNode transform -n "transform17" -p "pCylinder1";
	rename -uid "A5607E8A-6C45-4F02-AF64-F995A230D6BC";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform17";
	rename -uid "0D76310C-D047-11FF-9EB2-75B71CE2727B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.22937339544296265 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.57823527 0.017586468 -1.3398556 
		-0.57823485 0.010124901 -1.0156133 -1.1564702 0.010124901 -0.014081225 -0.57823521 
		0.017586468 0.98745131 0.57823503 0.017586468 0.98745131 1.1564702 0.017586468 -0.014081053 
		-0.03995724 -0.23665917 -0.26244658 0.03995721 -0.23665917 0.055126857 -0.20491445 
		-0.23665917 -0.014081078 0.039957233 -0.23665917 -0.083289027 -0.039957222 -0.23665917 
		-0.083289027 -0.079914451 -0.23665917 -0.01408109 -0.1759879 1.110223e-16 0.30481982 
		0.17598772 1.110223e-16 0.30481985 0.35197565 1.110223e-16 4.1958767e-08 0.17598785 
		1.110223e-16 -0.30481985 -0.17598782 1.110223e-16 -0.30481985 -0.35197565 1.110223e-16 
		-1.0489692e-08 -0.23938897 -8.8817842e-16 0.41463286 0.23938859 -8.8817842e-16 0.41463304 
		0.47877747 -8.8817842e-16 5.7074722e-08 0.23938885 -8.8817842e-16 -0.41463298 -0.2393887 
		-8.8817842e-16 -0.41463304 -0.47877747 -8.8817842e-16 -1.426868e-08 0 0.017586468 
		-0.014081053 0 -8.8817842e-16 -1.426868e-08;
createNode transform -n "pCylinder2";
	rename -uid "60E2DC0A-3D46-0C5E-70FF-8591411A8670";
	setAttr ".t" -type "double3" 0.0046504860344087628 1.9040640959321347 -0.53663541534367054 ;
	setAttr ".r" -type "double3" -71.289900285820423 0 0 ;
	setAttr ".s" -type "double3" 0.061992501179292371 0.59713576003414637 0.07717652532844882 ;
createNode transform -n "transform16" -p "pCylinder2";
	rename -uid "DBE8B747-5441-B825-2C73-818506D89AAA";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform16";
	rename -uid "ECDB6287-C14F-521F-E90B-F59F982F008F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[6:11]" -type "float3"  0 -0.078447498 -1.3234701 
		0 -0.078447498 -1.3234701 0 -0.078447498 -1.3234701 0 -0.078447498 -1.3234701 0 -0.078447498 
		-1.3234701 0 -0.078447498 -1.3234701;
createNode transform -n "group";
	rename -uid "C402F94B-254F-AD5C-3F76-279E9F92710B";
	setAttr ".t" -type "double3" -0.2640976831136953 0.47082520019787477 0.39014450574810577 ;
	setAttr ".r" -type "double3" 0 92.827267775798973 0 ;
	setAttr ".rp" -type "double3" 0.0046504860344087594 1.8556925633908157 -0.44275043775949363 ;
	setAttr ".sp" -type "double3" 0.0046504860344087594 1.8556925633908157 -0.44275043775949363 ;
createNode transform -n "pasted__pCylinder2" -p "group";
	rename -uid "D38C71D3-514E-1C31-0BDF-30B5E6131579";
	setAttr ".t" -type "double3" -0.019563520449478691 1.9040640959321347 -0.57337554736760332 ;
	setAttr ".r" -type "double3" -57.395760638249499 0 0 ;
	setAttr ".s" -type "double3" 0.058797892572978572 0.41824388701904708 0.073199450886709511 ;
createNode transform -n "transform15" -p "|group|pasted__pCylinder2";
	rename -uid "11F90F9B-DE43-2C66-261B-FCABFC8AF2FA";
	setAttr ".v" no;
createNode mesh -n "pasted__pCylinderShape2" -p "transform15";
	rename -uid "65AC0925-7C49-2B68-2FB8-C7B55E8C2FFA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[6:11]" -type "float3"  0 -0.078447498 -1.3234701 
		0 -0.078447498 -1.3234701 0 -0.078447498 -1.3234701 0 -0.078447498 -1.3234701 0 -0.078447498 
		-1.3234701 0 -0.078447498 -1.3234701;
createNode transform -n "group1";
	rename -uid "D871BFED-3645-FEB2-E029-B78DAAAE2300";
	setAttr ".t" -type "double3" 0.3567777831395772 0.16105565708566782 0.4355757435400831 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr ".s" -type "double3" 1 0.67686124336695963 0.76965037842072337 ;
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".rp" -type "double3" -0.41478752313931644 2.3340839764142709 -0.020690899340930772 ;
	setAttr ".sp" -type "double3" -0.41478752313931644 2.3340839764142709 -0.020690899340930772 ;
createNode transform -n "pasted__group" -p "group1";
	rename -uid "E317EAB7-C740-A773-F724-C68C024A4EE0";
	setAttr ".t" -type "double3" -0.2640976831136953 0.47082520019787477 0.39014450574810577 ;
	setAttr ".r" -type "double3" 0 92.827267775798973 0 ;
	setAttr ".rp" -type "double3" 0.0046504860344087594 1.8556925633908157 -0.44275043775949363 ;
	setAttr ".sp" -type "double3" 0.0046504860344087594 1.8556925633908157 -0.44275043775949363 ;
createNode transform -n "pasted__pasted__pCylinder2" -p "pasted__group";
	rename -uid "BDC92E35-3245-CE7B-E7E4-75AE3D70274C";
	setAttr ".t" -type "double3" 0.0027804698196730042 1.8690721092716567 -0.44446142000241051 ;
	setAttr ".r" -type "double3" -39.769501506964907 0 0 ;
	setAttr ".s" -type "double3" 0.058797892572978572 0.41824388701904708 0.073199450886709511 ;
createNode transform -n "transform14" -p "|group1|pasted__group|pasted__pasted__pCylinder2";
	rename -uid "506806E6-4248-EF11-22CA-0B80D45711A4";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCylinderShape2" -p "transform14";
	rename -uid "7F35C558-9F4D-DEE7-A14E-19B64C42D549";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[6:11]" -type "float3"  0 -0.078447498 -1.3234701 
		0 -0.078447498 -1.3234701 0 -0.078447498 -1.3234701 0 -0.078447498 -1.3234701 0 -0.078447498 
		-1.3234701 0 -0.078447498 -1.3234701;
createNode transform -n "group2";
	rename -uid "319406AC-F14F-632F-4B13-6E8558F79358";
	setAttr ".t" -type "double3" 0 -0.85395911525071444 0.67407547881100638 ;
	setAttr ".r" -type "double3" 0 0 0.73870818684166561 ;
	setAttr ".s" -type "double3" 1.2131916451697842 1.1072010682469224 0.090347668098105155 ;
	setAttr ".rp" -type "double3" 0.0046504860344087594 1.8556925633908157 -0.55301777987265266 ;
	setAttr ".sp" -type "double3" 0.0046504860344087594 1.8556925633908157 -0.55301777987265266 ;
createNode transform -n "group3";
	rename -uid "0AF6952B-1749-1AE5-F664-4FA9B6E26F49";
	setAttr ".t" -type "double3" 0 0 0.030201325969757442 ;
	setAttr ".s" -type "double3" 0.89856747238610724 0.89856747238610724 0.89856747238610724 ;
	setAttr ".rp" -type "double3" 0 1.0503019308458299 0.02336092089180665 ;
	setAttr ".sp" -type "double3" 0 1.0503019308458299 0.02336092089180665 ;
createNode transform -n "group4";
	rename -uid "CC7CE782-1A4E-69EC-A1CD-598D9A6CCBB8";
	setAttr ".t" -type "double3" 0 0 0.01947347077973155 ;
	setAttr ".s" -type "double3" 0.62730697555605341 0.16577468941094878 1.2094770612632251 ;
	setAttr ".rp" -type "double3" 0 1.0503019299923748 0.053562246904609062 ;
	setAttr ".sp" -type "double3" 0 1.0503019299923748 0.053562246904609062 ;
createNode transform -n "pasted__group3" -p "group4";
	rename -uid "226866D2-7240-B21F-5F4B-879E5A38F42F";
	setAttr ".t" -type "double3" 0 0 0.030201325969757442 ;
	setAttr ".s" -type "double3" 0.89856747238610724 0.89856747238610724 0.89856747238610724 ;
	setAttr ".rp" -type "double3" 0 1.0503019308458299 0.02336092089180665 ;
	setAttr ".sp" -type "double3" 0 1.0503019308458299 0.02336092089180665 ;
createNode transform -n "pSphere1";
	rename -uid "435E4DBE-1F42-966A-011B-CBA5360CA18D";
	setAttr ".t" -type "double3" 0.42788200007387123 3.1548050526635891 0.60932499139379481 ;
	setAttr ".r" -type "double3" -3.3466143823423646 -0.70326427373097988 -0.20188244944734821 ;
	setAttr ".s" -type "double3" 0.66109097827164531 0.49848694852217224 0.89187074419208423 ;
createNode transform -n "transform13" -p "pSphere1";
	rename -uid "D00E0E4A-0F44-D5FB-75DB-799BC1943780";
	setAttr ".v" no;
createNode mesh -n "pSphereShape1" -p "transform13";
	rename -uid "3A718109-3A49-DA43-42B6-609414D39D14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group5";
	rename -uid "F54EE2D0-3241-8C66-5646-7882A1BAF5BA";
	setAttr ".t" -type "double3" -0.78822989976380042 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.7802494207684163 ;
	setAttr ".rp" -type "double3" 0.45979298957795872 3.154692613397716 0.40558834603938476 ;
	setAttr ".sp" -type "double3" 0.45979298957795872 3.154692613397716 0.40558834603938476 ;
createNode transform -n "pasted__pSphere1" -p "group5";
	rename -uid "AB373D3F-2844-E164-36C8-518A33011485";
	setAttr ".t" -type "double3" 0.19068918219673137 2.6434819860794088 -0.33788969469928282 ;
	setAttr ".r" -type "double3" -3.3466143823423646 -0.70326427373097988 -0.20188244944734821 ;
	setAttr ".s" -type "double3" 0.66109097827164531 0.31731396624018487 0.89187074419208423 ;
createNode transform -n "transform12" -p "|group5|pasted__pSphere1";
	rename -uid "97CF1ECE-734A-577B-A6C0-DA90B03D2A9A";
	setAttr ".v" no;
createNode mesh -n "pasted__pSphereShape1" -p "transform12";
	rename -uid "60AA740F-E04B-8C40-E2BA-C2BE971AFF76";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group6";
	rename -uid "B594FC4E-8445-644C-9B5E-8C87AF3B8209";
	setAttr ".t" -type "double3" 0.53161931365163584 -0.30424668929896281 0 ;
	setAttr ".s" -type "double3" 0.75474903844940133 0.75474903844940133 0.75474903844940133 ;
	setAttr ".rp" -type "double3" -0.56562972806298162 2.9399028810187793 0.40558834603938465 ;
	setAttr ".sp" -type "double3" -0.56562972806298162 2.9399028810187793 0.40558834603938465 ;
createNode transform -n "pasted__group5" -p "group6";
	rename -uid "0382144C-7347-A936-3B4E-D7ABEC2DF3A4";
	setAttr ".t" -type "double3" -0.78822989976380042 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.7802494207684163 ;
	setAttr ".rp" -type "double3" 0.45979298957795872 3.154692613397716 0.40558834603938476 ;
	setAttr ".sp" -type "double3" 0.45979298957795872 3.154692613397716 0.40558834603938476 ;
createNode transform -n "pasted__pasted__pSphere1" -p "pasted__group5";
	rename -uid "2AB1FA49-4546-0673-B1D8-F7AB2BDC8E12";
	setAttr ".t" -type "double3" 0.19068918219673137 2.9400153202846524 0.40519663960921193 ;
	setAttr ".r" -type "double3" -3.3466143823423646 -0.70326427373097988 -0.20188244944734821 ;
	setAttr ".s" -type "double3" 0.66109097827164531 0.46008854220273498 0.89187074419208423 ;
createNode transform -n "transform11" -p "|group6|pasted__group5|pasted__pasted__pSphere1";
	rename -uid "C83ACFF0-6C4E-9AD0-888B-7AA362765F7D";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pSphereShape1" -p "transform11";
	rename -uid "A8A8FE96-DE41-E037-8D8A-E69077E61063";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group7";
	rename -uid "7638DB3D-F64E-A68F-522A-848BF2886301";
	setAttr ".t" -type "double3" 0.37482697728761494 0.94682374967709659 0 ;
	setAttr ".rp" -type "double3" -0.058095202813843227 2.6357410539756683 0.40535765743563851 ;
	setAttr ".sp" -type "double3" -0.058095202813843227 2.6357410539756683 0.40535765743563851 ;
createNode transform -n "pasted__group6" -p "group7";
	rename -uid "86444AA3-6241-C416-DDC0-B5AB4D9118AD";
	setAttr ".t" -type "double3" 0.53161931365163584 -0.30424668929896281 0 ;
	setAttr ".s" -type "double3" 0.75474903844940133 0.75474903844940133 0.75474903844940133 ;
	setAttr ".rp" -type "double3" -0.56562972806298162 2.9399028810187793 0.40558834603938465 ;
	setAttr ".sp" -type "double3" -0.56562972806298162 2.9399028810187793 0.40558834603938465 ;
createNode transform -n "pasted__pasted__group5" -p "|group7|pasted__group6";
	rename -uid "E449B57D-924D-4407-B08C-F88CF4576AF0";
	setAttr ".t" -type "double3" -0.78822989976380042 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.7802494207684163 ;
	setAttr ".rp" -type "double3" 0.45979298957795872 3.154692613397716 0.40558834603938476 ;
	setAttr ".sp" -type "double3" 0.45979298957795872 3.154692613397716 0.40558834603938476 ;
createNode transform -n "pasted__pasted__pasted__pSphere1" -p "|group7|pasted__group6|pasted__pasted__group5";
	rename -uid "F643120B-3844-8C27-C3C4-60986F3EB531";
	setAttr ".t" -type "double3" -0.45775795625070115 2.4795284152578261 1.5069417906035549 ;
	setAttr ".r" -type "double3" 1.0178030495895747 -0.70326427373097933 -0.20188244944734859 ;
	setAttr ".s" -type "double3" 0.66109097827164531 0.46008854220273498 1.1695865313939915 ;
createNode transform -n "transform10" -p "|group7|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1";
	rename -uid "FC16DB58-0D4A-1691-01F0-C694D214F69E";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pSphereShape1" -p "transform10";
	rename -uid "E19D55EE-0D4C-DA52-2745-FC91A9AC19B6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group8";
	rename -uid "390BF80E-B54E-0179-F0A6-BDB1C4A7DAA5";
	setAttr ".t" -type "double3" -0.33282376925537149 -1.0884079326467408 -1.7758070089743976 ;
	setAttr ".rp" -type "double3" 0.45979298957795872 3.154692613397716 0.60971669782396742 ;
	setAttr ".sp" -type "double3" 0.45979298957795872 3.154692613397716 0.60971669782396742 ;
createNode transform -n "pasted__pSphere1" -p "group8";
	rename -uid "1F9521BE-2647-B007-A011-BEB51DAA0F70";
	setAttr ".t" -type "double3" 0.42788200007387123 3.5054956268623187 0.60932499139379481 ;
	setAttr ".r" -type "double3" 0.5059040889684614 -0.70326427373097966 -0.20188244944734854 ;
	setAttr ".s" -type "double3" 0.66109097827164531 0.51337941490110706 0.7815535740256494 ;
createNode transform -n "transform9" -p "|group8|pasted__pSphere1";
	rename -uid "B6EA71D3-144B-AAC8-08D8-199A3B0E4C68";
	setAttr ".v" no;
createNode mesh -n "pasted__pSphereShape1" -p "transform9";
	rename -uid "64E7F523-C74D-1CB4-F0B3-00935A0E7337";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group9";
	rename -uid "4940B3CE-F443-6050-E9CA-F49C8390D3F4";
	setAttr ".t" -type "double3" 1.113170109111417 -0.3723120024527824 -0.29250693490665114 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".rp" -type "double3" -0.058095202813843227 2.6357410539756683 0.40535765743563851 ;
	setAttr ".sp" -type "double3" -0.058095202813843227 2.6357410539756683 0.40535765743563851 ;
createNode transform -n "pasted__group6" -p "group9";
	rename -uid "B16BF06D-BE49-33A1-5B43-498C7A9D030B";
	setAttr ".t" -type "double3" 0.53161931365163584 -0.30424668929896281 0 ;
	setAttr ".s" -type "double3" 0.75474903844940133 0.75474903844940133 0.75474903844940133 ;
	setAttr ".rp" -type "double3" -0.56562972806298162 2.9399028810187793 0.40558834603938465 ;
	setAttr ".sp" -type "double3" -0.56562972806298162 2.9399028810187793 0.40558834603938465 ;
createNode transform -n "pasted__pasted__group5" -p "|group9|pasted__group6";
	rename -uid "F05D5659-654B-81D8-E1E2-9EB2DAECF2EE";
	setAttr ".t" -type "double3" -0.78822989976380042 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.7802494207684163 ;
	setAttr ".rp" -type "double3" 0.45979298957795872 3.154692613397716 0.40558834603938476 ;
	setAttr ".sp" -type "double3" 0.45979298957795872 3.154692613397716 0.40558834603938476 ;
createNode transform -n "pasted__pasted__pasted__pSphere1" -p "|group9|pasted__group6|pasted__pasted__group5";
	rename -uid "4E9059AF-6046-56C5-024B-9EA33484FABB";
	setAttr ".t" -type "double3" 0.19068918219673137 2.8598026758297892 1.0141082021468002 ;
	setAttr ".r" -type "double3" 0.48360461063639032 -0.70326427373098044 -0.20188244944734915 ;
	setAttr ".s" -type "double3" 0.66109097827164531 0.3728355513329244 0.89187074419208423 ;
createNode transform -n "transform8" -p "|group9|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1";
	rename -uid "0D7631B4-7F4A-0C2D-EA3D-62AAE2005CC2";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pSphereShape1" -p "transform8";
	rename -uid "8AABB48C-7643-EB62-7133-13B7D07EB66F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group10";
	rename -uid "513CA9A9-2646-4515-57F3-C5AB2599662A";
	setAttr ".t" -type "double3" 0.55833090753660275 0 0.45154603183481634 ;
	setAttr ".r" -type "double3" 0 -71.606023498805683 0 ;
	setAttr ".rp" -type "double3" 0.0046504860344087594 1.8556925633908157 -0.55301777987265266 ;
	setAttr ".sp" -type "double3" 0.0046504860344087594 1.8556925633908157 -0.55301777987265266 ;
createNode transform -n "pasted__pCylinder2" -p "group10";
	rename -uid "0134F3FF-D742-888A-A487-9DBD9EB4EC02";
	setAttr ".t" -type "double3" 0.0046504860344087889 1.5813491340442591 -0.53663541534367054 ;
	setAttr ".r" -type "double3" -71.289900285820423 0 0 ;
	setAttr ".s" -type "double3" 0.061992501179292371 0.59713576003414637 0.07717652532844882 ;
createNode transform -n "transform7" -p "|group10|pasted__pCylinder2";
	rename -uid "EB5D3CC5-6942-FD37-D0F7-74AEE1FE7BCC";
	setAttr ".v" no;
createNode mesh -n "pasted__pCylinderShape2" -p "transform7";
	rename -uid "AE5D0D5D-244B-687A-AA9C-3587E7F5731B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[6:11]" -type "float3"  0 -0.078447498 -1.3234701 
		0 -0.078447498 -1.3234701 0 -0.078447498 -1.3234701 0 -0.078447498 -1.3234701 0 -0.078447498 
		-1.3234701 0 -0.078447498 -1.3234701;
createNode transform -n "group11";
	rename -uid "3E5FAD52-8942-05ED-5334-F58BA09F6461";
	setAttr ".t" -type "double3" 1.4499365982080814 -0.23161369428087752 0 ;
	setAttr ".rp" -type "double3" 0.12696922032258728 2.4169752549497048 -1.1660903111504302 ;
	setAttr ".sp" -type "double3" 0.12696922032258728 2.4169752549497048 -1.1660903111504302 ;
createNode transform -n "pasted__group8" -p "group11";
	rename -uid "3F7FD95A-E349-275E-1E7A-77A691A62416";
	setAttr ".t" -type "double3" -0.33282376925537149 -1.0884079326467408 -1.7758070089743976 ;
	setAttr ".rp" -type "double3" 0.45979298957795872 3.154692613397716 0.60971669782396742 ;
	setAttr ".sp" -type "double3" 0.45979298957795872 3.154692613397716 0.60971669782396742 ;
createNode transform -n "pasted__pasted__pSphere1" -p "pasted__group8";
	rename -uid "EC199626-D24E-BC99-A0AA-B0B00755CBCC";
	setAttr ".t" -type "double3" -0.067737115489120869 3.3981066540340583 1.4737052420437544 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 0.66109097827164531 0.45295379454643592 0.7815535740256494 ;
	setAttr -av ".sy";
createNode transform -n "transform6" -p "|group11|pasted__group8|pasted__pasted__pSphere1";
	rename -uid "65DDFCB9-9147-8369-B747-2ABA12967A71";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pSphereShape1" -p "transform6";
	rename -uid "2570F939-1F40-CD42-E930-82B3BE7BD2F6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group12";
	rename -uid "D3129B32-BD41-E103-1A8F-9BAF3216FDF1";
	setAttr ".t" -type "double3" -1.6926959003370408 0 0 ;
	setAttr ".r" -type "double3" 0 -173.69948833241986 0 ;
	setAttr ".s" -type "double3" 0.82647998234336417 0.82647998234336417 0.82647998234336417 ;
	setAttr ".rp" -type "double3" 0.83768641973517632 1.8846717434244677 -0.061566101735438306 ;
	setAttr ".sp" -type "double3" 0.83768641973517632 1.8846717434244677 -0.061566101735438306 ;
createNode transform -n "pasted__group9" -p "group12";
	rename -uid "D73FE672-A34F-1DD4-1646-78822759F505";
	setAttr ".t" -type "double3" 1.113170109111417 -0.3723120024527824 -0.29250693490665114 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".rp" -type "double3" -0.058095202813843227 2.6357410539756683 0.40535765743563851 ;
	setAttr ".sp" -type "double3" -0.058095202813843227 2.6357410539756683 0.40535765743563851 ;
createNode transform -n "pasted__pasted__group6" -p "pasted__group9";
	rename -uid "06C88498-6E44-CD01-C093-7A8F036C84C1";
	setAttr ".t" -type "double3" 0.53161931365163584 -0.30424668929896281 0 ;
	setAttr ".s" -type "double3" 0.75474903844940133 0.75474903844940133 0.75474903844940133 ;
	setAttr ".rp" -type "double3" -0.56562972806298162 2.9399028810187793 0.40558834603938465 ;
	setAttr ".sp" -type "double3" -0.56562972806298162 2.9399028810187793 0.40558834603938465 ;
createNode transform -n "pasted__pasted__pasted__group5" -p "pasted__pasted__group6";
	rename -uid "F349B0EE-104B-5718-6D86-41837E6C25D3";
	setAttr ".t" -type "double3" -0.78822989976380042 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.7802494207684163 ;
	setAttr ".rp" -type "double3" 0.45979298957795872 3.154692613397716 0.40558834603938476 ;
	setAttr ".sp" -type "double3" 0.45979298957795872 3.154692613397716 0.40558834603938476 ;
createNode transform -n "pasted__pasted__pasted__pasted__pSphere1" -p "pasted__pasted__pasted__group5";
	rename -uid "D38448A6-8C4A-48FA-02AF-BF9E84EEC763";
	setAttr ".t" -type "double3" -0.20338451657118373 3.0036159901153892 0.47362642182154024 ;
	setAttr ".r" -type "double3" 0.48360461063639032 -0.70326427373098044 -0.20188244944734915 ;
	setAttr ".s" -type "double3" 0.66109097827164531 0.3728355513329244 0.89187074419208423 ;
createNode transform -n "transform5" -p "pasted__pasted__pasted__pasted__pSphere1";
	rename -uid "99A6B2D3-C74C-6EE3-D929-91AF591AC63B";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pSphereShape1" -p "transform5";
	rename -uid "70AB7511-3949-B802-32C3-6B8B32543A3A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group10" -p "group12";
	rename -uid "3C7C48F6-0C42-CBED-D5B8-A4AAAD2B7923";
	setAttr ".t" -type "double3" 0.55833090753660275 0 0.45154603183481634 ;
	setAttr ".r" -type "double3" 0 -71.606023498805683 0 ;
	setAttr ".rp" -type "double3" 0.0046504860344087594 1.8556925633908157 -0.55301777987265266 ;
	setAttr ".sp" -type "double3" 0.0046504860344087594 1.8556925633908157 -0.55301777987265266 ;
createNode transform -n "pasted__pasted__pCylinder2" -p "pasted__group10";
	rename -uid "68E05343-D64A-DB30-BA92-0A90EAC9A891";
	setAttr ".t" -type "double3" -0.39122650377050527 1.6898920947175369 -0.35483925629094637 ;
	setAttr ".r" -type "double3" -71.289900285820423 0 0 ;
	setAttr ".s" -type "double3" 0.061992501179292371 0.59713576003414637 0.07717652532844882 ;
createNode transform -n "transform4" -p "|group12|pasted__group10|pasted__pasted__pCylinder2";
	rename -uid "BA18250B-6B46-FAE0-0641-59A1BEC73260";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCylinderShape2" -p "transform4";
	rename -uid "4620F494-C346-84C1-908E-B2876F1171EE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[6:11]" -type "float3"  0 -0.078447498 -1.3234701 
		0 -0.078447498 -1.3234701 0 -0.078447498 -1.3234701 0 -0.078447498 -1.3234701 0 -0.078447498 
		-1.3234701 0 -0.078447498 -1.3234701;
createNode transform -n "pasted__group11" -p "group12";
	rename -uid "7039B333-584C-F911-103B-F490CD9A6307";
	setAttr ".t" -type "double3" 1.4499365982080814 -0.23161369428087752 0 ;
	setAttr ".rp" -type "double3" 0.12696922032258728 2.4169752549497048 -1.1660903111504302 ;
	setAttr ".sp" -type "double3" 0.12696922032258728 2.4169752549497048 -1.1660903111504302 ;
createNode transform -n "pasted__pasted__group8" -p "pasted__group11";
	rename -uid "0FE8FB6D-F641-D8B4-F8DA-C1B437B94AE7";
	setAttr ".t" -type "double3" -0.33282376925537149 -1.0884079326467408 -1.7758070089743976 ;
	setAttr ".rp" -type "double3" 0.45979298957795872 3.154692613397716 0.60971669782396742 ;
	setAttr ".sp" -type "double3" 0.45979298957795872 3.154692613397716 0.60971669782396742 ;
createNode transform -n "pasted__pasted__pasted__pSphere1" -p "pasted__pasted__group8";
	rename -uid "915F0805-C549-0A71-EEC5-6DA6BEACF4BF";
	setAttr ".t" -type "double3" -0.36516386071240403 3.5066496147073369 1.1554195751826652 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0.5059040889684614 -0.70326427373097966 -0.20188244944734854 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.66109097827164531 0.45295379454643592 0.7815535740256494 ;
	setAttr -av ".sy";
createNode transform -n "transform3" -p "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1";
	rename -uid "2B248B25-9B47-BA46-4E2A-17AB633236A8";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pSphereShape1" -p "transform3";
	rename -uid "DDCA9FE4-1242-42CE-AFA7-2FBDDDCA3154";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group13";
	rename -uid "E05A2E43-AB41-2FC1-131D-12A3DC4B2699";
	setAttr ".t" -type "double3" 0.054438037533627526 -0.74289043794670295 1.0879505436262602 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 -173.11655295068928 0 ;
	setAttr -av ".ry";
	setAttr ".s" -type "double3" 1 1 0.72455644370447181 ;
	setAttr -av ".sz";
	setAttr ".rp" -type "double3" 0.0046504860344087594 1.8556925633908157 -0.55301777987265266 ;
	setAttr ".sp" -type "double3" 0.0046504860344087594 1.8556925633908157 -0.55301777987265266 ;
createNode transform -n "pasted__pCylinder2" -p "group13";
	rename -uid "641144F5-0B4C-B49F-70E2-71BBA01AD950";
	setAttr ".t" -type "double3" 0.010194710922490455 2.646282376943109 -0.26883228651133761 ;
	setAttr ".r" -type "double3" -71.289900285820423 0 0 ;
	setAttr ".s" -type "double3" 0.077268362892951734 0.43214319022485626 0.082607096351545145 ;
createNode transform -n "transform2" -p "|group13|pasted__pCylinder2";
	rename -uid "A693E933-D143-0B5B-9C01-549875A22482";
	setAttr ".v" no;
createNode mesh -n "pasted__pCylinderShape2" -p "transform2";
	rename -uid "FE03B1CD-3F49-86ED-0893-8C8110FEF2C5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.83375316858291626 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[6]" -type "float3" 0 -0.078447498 -1.3234699 ;
	setAttr ".pt[7]" -type "float3" 0 -0.078447498 -1.3234701 ;
	setAttr ".pt[8]" -type "float3" 0 -0.078447498 -1.3234701 ;
	setAttr ".pt[9]" -type "float3" 0 -0.078447498 -1.3234701 ;
	setAttr ".pt[10]" -type "float3" 0 -0.078447498 -1.3234701 ;
	setAttr ".pt[11]" -type "float3" 0 -0.078447498 -1.3234699 ;
	setAttr ".pt[12]" -type "float3" 0 -0.12854621 -1.6946831 ;
	setAttr ".pt[13]" -type "float3" 0 -0.12854621 -1.6946831 ;
	setAttr ".pt[14]" -type "float3" 0 -0.12854621 -1.6946831 ;
	setAttr ".pt[15]" -type "float3" 0 -0.12854621 -1.6946831 ;
	setAttr ".pt[16]" -type "float3" 0 -0.12854621 -1.6946831 ;
	setAttr ".pt[17]" -type "float3" 0 -0.12854621 -1.6946831 ;
	setAttr ".pt[19]" -type "float3" -6.4414209e-18 -0.12854621 -1.6946831 ;
createNode transform -n "group14";
	rename -uid "839E96D1-6842-6294-B48A-4CA1A7100D8F";
	setAttr ".t" -type "double3" 0.22417381459752903 -0.81834476863678862 -0.70193044330840504 ;
	setAttr ".r" -type "double3" 0 125.90380880066826 0 ;
	setAttr ".rp" -type "double3" 0.028571463671326923 1.8281848392905995 0.32840073540703929 ;
	setAttr ".sp" -type "double3" 0.028571463671326923 1.8281848392905995 0.32840073540703929 ;
createNode transform -n "pasted__group13" -p "group14";
	rename -uid "9EE924B8-5C4A-9C51-82D2-F995D42E91A5";
	setAttr ".t" -type "double3" 0.054438037533627526 -0.74289043794670295 1.0879505436262602 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 -173.11655295068928 0 ;
	setAttr -av ".ry";
	setAttr ".s" -type "double3" 1 1 0.72455644370447181 ;
	setAttr -av ".sz";
	setAttr ".rp" -type "double3" 0.0046504860344087594 1.8556925633908157 -0.55301777987265266 ;
	setAttr ".sp" -type "double3" 0.0046504860344087594 1.8556925633908157 -0.55301777987265266 ;
createNode transform -n "pasted__pasted__pCylinder2" -p "pasted__group13";
	rename -uid "B51065BC-3F44-58A8-13A7-4A8F5EC52D3F";
	setAttr ".t" -type "double3" 0.010194710922490455 2.646282376943109 -0.26883228651133761 ;
	setAttr ".r" -type "double3" -71.289900285820423 0 0 ;
	setAttr ".s" -type "double3" 0.077268362892951734 0.43214319022485626 0.082607096351545145 ;
createNode transform -n "transform1" -p "|group14|pasted__group13|pasted__pasted__pCylinder2";
	rename -uid "E4AC0E46-7243-9E15-16F5-659697BF16FB";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCylinderShape2" -p "transform1";
	rename -uid "C79054A4-6443-3923-5ED0-D7B42286A15D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.83375316858291626 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[6]" -type "float3" 0 -0.078447498 -1.3234699 ;
	setAttr ".pt[7]" -type "float3" 0 -0.078447498 -1.3234701 ;
	setAttr ".pt[8]" -type "float3" 0 -0.078447498 -1.3234701 ;
	setAttr ".pt[9]" -type "float3" 0 -0.078447498 -1.3234701 ;
	setAttr ".pt[10]" -type "float3" 0 -0.078447498 -1.3234701 ;
	setAttr ".pt[11]" -type "float3" 0 -0.078447498 -1.3234699 ;
	setAttr ".pt[12]" -type "float3" 0 -0.12854621 -1.6946831 ;
	setAttr ".pt[13]" -type "float3" 0 -0.12854621 -1.6946831 ;
	setAttr ".pt[14]" -type "float3" 0 -0.12854621 -1.6946831 ;
	setAttr ".pt[15]" -type "float3" 0 -0.12854621 -1.6946831 ;
	setAttr ".pt[16]" -type "float3" 0 -0.12854621 -1.6946831 ;
	setAttr ".pt[17]" -type "float3" 0 -0.12854621 -1.6946831 ;
	setAttr ".pt[19]" -type "float3" -6.4414209e-18 -0.12854621 -1.6946831 ;
createNode transform -n "pCylinder3";
	rename -uid "C7F44CC4-794A-27F2-1D13-7A9847773ACC";
createNode mesh -n "pCylinder3Shape" -p "pCylinder3";
	rename -uid "078AC505-5444-6060-EDA2-ECB62AC49A5D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "AC3592D0-D24A-7628-B296-DFBD2D4A3067";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "D6FEA097-9B42-15DD-1D0F-2187AB916547";
createNode displayLayer -n "defaultLayer";
	rename -uid "2B580F95-DB4B-AAAB-2DC6-929D6D9E5ACE";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5D5D4285-7C4D-0B94-6B0E-F38AA9A7E59B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A1ED7B20-FB40-C410-101A-5DA105BD63CD";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "B21F74C9-194F-DD5C-6CBD-0FB193106EA5";
	setAttr ".sa" 6;
	setAttr ".sh" 3;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "1BCD8B7B-6541-644A-1039-ACB81AA5051C";
	setAttr ".sa" 6;
	setAttr ".sh" 2;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "pasted__polyCylinder2";
	rename -uid "E023DC2D-DF46-55E0-06F3-2EB7946AFDDD";
	setAttr ".sa" 6;
	setAttr ".sh" 2;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "pasted__pasted__polyCylinder2";
	rename -uid "F78C8BC6-E24A-8AA8-69AA-E68F12DD669A";
	setAttr ".sa" 6;
	setAttr ".sh" 2;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode animCurveTA -n "group1_rotateX";
	rename -uid "CF376339-9A4D-3B69-886C-0EAEFAA72359";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "group1_rotateY";
	rename -uid "5A89D3EC-0249-8689-42F4-E19B63F977E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 80.191177522556174;
createNode animCurveTA -n "group1_rotateZ";
	rename -uid "30FC8B6F-9047-9E5E-F34C-BCB954DDE07A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "group1_visibility";
	rename -uid "F2E36503-114B-3BF1-435B-6882F7BE7887";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "group1_translateX";
	rename -uid "26ED8375-4648-4432-0AB7-DE870A472FCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.23301633909463304;
createNode animCurveTL -n "group1_translateY";
	rename -uid "BD4E5BFA-5741-A49C-D68C-27B8BFBC9C0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "group1_translateZ";
	rename -uid "71E9F09D-0C4D-7459-0478-9ABDD353816D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.4355757435400831;
createNode animCurveTU -n "group1_scaleX";
	rename -uid "751698AA-4246-DE51-43D7-47A1A0D27DCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "group1_scaleY";
	rename -uid "74C61ED5-884A-BA61-9600-FCA2F18F8A81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "group1_scaleZ";
	rename -uid "6C30F97F-7540-8650-619F-9C8F3CC2462D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode polySphere -n "polySphere1";
	rename -uid "961CDC82-6344-2FF9-EBC2-95ADA7F095FA";
	setAttr ".sa" 5;
	setAttr ".sh" 4;
createNode polySphere -n "pasted__polySphere1";
	rename -uid "323CB319-4548-89F4-BCE1-9F96061A54C6";
	setAttr ".sa" 7;
	setAttr ".sh" 4;
createNode polySphere -n "pasted__pasted__polySphere1";
	rename -uid "C737D358-9F4A-6A72-197E-009705B43695";
	setAttr ".sa" 6;
	setAttr ".sh" 4;
createNode polySphere -n "pasted__pasted__pasted__polySphere1";
	rename -uid "D6B4860F-834D-95EC-8562-1DBB80911B6F";
	setAttr ".sa" 6;
	setAttr ".sh" 4;
createNode polySphere -n "pasted__polySphere2";
	rename -uid "BB3E6753-2A43-0CC0-7FFF-769FD8D7FD2E";
	setAttr ".sa" 7;
	setAttr ".sh" 4;
createNode polySphere -n "pasted__pasted__pasted__polySphere2";
	rename -uid "7823F225-0443-7F46-D37B-218F7376B6BE";
	setAttr ".sa" 6;
	setAttr ".sh" 4;
createNode animCurveTA -n "group9_rotateX";
	rename -uid "B231332A-BE4A-85B0-B211-3A8F33CF80E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "group9_rotateY";
	rename -uid "6DB45C7E-D24B-1EB2-190F-53AB166420D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "group9_rotateZ";
	rename -uid "3B2C683A-B54B-A952-FC98-E3AE30A9F529";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "group9_visibility";
	rename -uid "4D298D01-3B4E-29FD-40B3-B996E887BE4D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "group9_translateX";
	rename -uid "0C7492D0-5D45-E19E-CCBC-9DB45120B48F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "group9_translateY";
	rename -uid "F7C50B4A-ED4F-35E6-2361-D59802415D86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "group9_translateZ";
	rename -uid "577AB021-DB47-17DB-5694-92AC14907ABC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "group9_scaleX";
	rename -uid "CE308716-3547-22B5-253A-AF81F38567E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "group9_scaleY";
	rename -uid "0CF0706B-824D-19F4-1AEC-05A8EB4C755F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "group9_scaleZ";
	rename -uid "08C19CCA-5B49-218A-FD52-479BBACF8AB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode polyCylinder -n "pasted__polyCylinder3";
	rename -uid "952A2DD6-A845-FE5D-2769-D283F40177E9";
	setAttr ".sa" 6;
	setAttr ".sh" 2;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySphere -n "pasted__pasted__polySphere2";
	rename -uid "754EFACA-104C-F1C0-D822-BCB6C0E4680C";
	setAttr ".sa" 7;
	setAttr ".sh" 4;
createNode animCurveTU -n "pasted__pasted__pSphere1_scaleX";
	rename -uid "724C353E-B544-6A79-8248-A8B8F5483429";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.66109097827164531;
createNode animCurveTU -n "pasted__pasted__pSphere1_scaleY";
	rename -uid "63015920-2740-C090-3A21-C19B4F76F324";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.51337941490110706;
createNode animCurveTU -n "pasted__pasted__pSphere1_scaleZ";
	rename -uid "4F6B08BF-5947-AF3F-B987-C1A8C634FC75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.7815535740256494;
createNode animCurveTU -n "pasted__pasted__pSphere1_visibility";
	rename -uid "BD90CB6F-8A44-68C7-6FC8-18904F837AE7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pasted__pasted__pSphere1_translateX";
	rename -uid "F3FCE4EC-3743-C536-A2BA-D5BF87F2E1B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.067737115489121091;
createNode animCurveTL -n "pasted__pasted__pSphere1_translateY";
	rename -uid "A56EECE2-A443-5818-D2D1-9EBDAAD33BCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.505495626862317;
createNode animCurveTL -n "pasted__pasted__pSphere1_translateZ";
	rename -uid "DFA311F5-4642-17A4-A24D-A29846AA34C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.4737052420437549;
createNode animCurveTA -n "pasted__pasted__pSphere1_rotateX";
	rename -uid "35794127-4C40-1405-2531-D38AB95F0848";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.5059040889684614;
createNode animCurveTA -n "pasted__pasted__pSphere1_rotateY";
	rename -uid "ADDD9820-8C46-48FA-134D-54BAED9409C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.70326427373097966;
createNode animCurveTA -n "pasted__pasted__pSphere1_rotateZ";
	rename -uid "AF79F322-794C-8E1E-897B-41B97E249224";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.20188244944734854;
createNode polyCylinder -n "pasted__pasted__polyCylinder3";
	rename -uid "866DE0FF-2F49-B0DB-6FF7-FDB66F70526D";
	setAttr ".sa" 6;
	setAttr ".sh" 2;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode animCurveTU -n "pasted__pasted__pasted__pSphere1_scaleX";
	rename -uid "8B38A488-8F43-1CE2-132E-119DAD2E28F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.66109097827164531;
createNode animCurveTU -n "pasted__pasted__pasted__pSphere1_scaleY";
	rename -uid "0378D5B0-6C4B-9629-8B34-9CB4A346FDE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.45295379454643592;
createNode animCurveTU -n "pasted__pasted__pasted__pSphere1_scaleZ";
	rename -uid "DAF171CE-A842-380E-A552-ABABF4983171";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.7815535740256494;
createNode animCurveTU -n "pasted__pasted__pasted__pSphere1_visibility";
	rename -uid "A03EDC4A-CE4E-52A3-46F7-D1AD840F86FD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pasted__pasted__pasted__pSphere1_translateX";
	rename -uid "23767A79-9147-0DF0-ABAE-68A00FA0BFD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.36516386071240403;
createNode animCurveTL -n "pasted__pasted__pasted__pSphere1_translateY";
	rename -uid "F0A70658-8B4F-7F78-2094-C29D73E12BDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.5066496147073369;
createNode animCurveTL -n "pasted__pasted__pasted__pSphere1_translateZ";
	rename -uid "C12074DE-A648-859E-F384-ABA8660AA86A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.1554195751826652;
createNode animCurveTA -n "pasted__pasted__pasted__pSphere1_rotateX";
	rename -uid "CA0BAA9F-F946-1413-8ED6-61BDD7F5B1EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.5059040889684614;
createNode animCurveTA -n "pasted__pasted__pasted__pSphere1_rotateY";
	rename -uid "92E95273-1546-147E-C98E-49A80AC1278E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.70326427373097966;
createNode animCurveTA -n "pasted__pasted__pasted__pSphere1_rotateZ";
	rename -uid "919E04AD-4A40-A65F-C464-4FA326D59CC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.20188244944734854;
createNode polySphere -n "pasted__pasted__pasted__polySphere3";
	rename -uid "B9A7875F-7D4D-1C04-8652-5D89EBB9AA9B";
	setAttr ".sa" 5;
	setAttr ".sh" 4;
createNode animCurveTA -n "pasted__group9_rotateX";
	rename -uid "52F20531-5542-D86D-F147-0AB2F1CF1FF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pasted__group9_rotateY";
	rename -uid "F25DF466-B148-E3D6-B5EF-CC97CB99A9FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pasted__group9_rotateZ";
	rename -uid "204BF9DD-7C42-8462-6B11-D9BFA7730E49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "pasted__group9_visibility";
	rename -uid "3304A0E6-2743-C095-9753-AB98FEE58294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pasted__group9_translateX";
	rename -uid "A6FC72DD-5D44-DA68-4C11-E3910BCA20DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pasted__group9_translateY";
	rename -uid "35A616BE-B54D-779F-BFEB-D1ACE7AE8B9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pasted__group9_translateZ";
	rename -uid "121ED982-4F43-C86E-1E9D-D7970694ED74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "pasted__group9_scaleX";
	rename -uid "49683048-724F-3DAF-D97E-9B837F998BF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pasted__group9_scaleY";
	rename -uid "A02E8AFD-AF43-33A4-EAC0-03B5ADB420AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pasted__group9_scaleZ";
	rename -uid "69273E39-9748-27CE-CA38-D886F2D921CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode polySphere -n "pasted__pasted__pasted__pasted__polySphere2";
	rename -uid "7E04F96B-494B-FCAC-EFF0-FCA1E39EFC24";
	setAttr ".sa" 6;
	setAttr ".sh" 4;
createNode polyCylinder -n "pasted__polyCylinder4";
	rename -uid "67A64D47-6146-BB10-2189-E4ABE2D0D2FF";
	setAttr ".sa" 6;
	setAttr ".sh" 2;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode animCurveTU -n "group13_scaleX";
	rename -uid "A2986339-3B49-119A-0E13-5596EDC3030B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "group13_scaleY";
	rename -uid "2B718B72-7C43-1FD5-7B08-85A2B46CFD52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "group13_scaleZ";
	rename -uid "2513469C-5644-EE06-2CEA-7DB92F93BB9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "group13_visibility";
	rename -uid "47B917A1-CB48-A5BA-7F20-B7B20FF4AA5D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "group13_translateX";
	rename -uid "BBBA7587-3742-C953-03E8-BF976AEA50D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.15083818664915571;
createNode animCurveTL -n "group13_translateY";
	rename -uid "9776228C-8B44-F620-8EF0-199C23A79C63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.53868894160575609;
createNode animCurveTL -n "group13_translateZ";
	rename -uid "DD1BD968-054B-6E8E-F258-4AB63EC789A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.0879505436262602;
createNode animCurveTA -n "group13_rotateX";
	rename -uid "736749B3-D54C-AB19-FA11-A0876BB0983B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "group13_rotateY";
	rename -uid "ECA25FF9-3540-B22C-BF1C-A9B7C03A2D86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -173.11655295068928;
createNode animCurveTA -n "group13_rotateZ";
	rename -uid "8690D5EA-534C-537D-D54F-8EBC05DD6EB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "pasted__group13_scaleX";
	rename -uid "05B56C15-984B-3837-D9CF-96BADD22C424";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pasted__group13_scaleY";
	rename -uid "1003F28F-1946-97A3-97E6-B8AAF0493437";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pasted__group13_scaleZ";
	rename -uid "3B80AAB1-2847-621B-2BBD-09899B80C612";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pasted__group13_visibility";
	rename -uid "F78604FD-344E-F15D-5B79-CEB6BF15E765";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pasted__group13_translateX";
	rename -uid "DCA8AD42-3045-41C4-0F82-2D87EA5BF9D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.15083818664915571;
createNode animCurveTL -n "pasted__group13_translateY";
	rename -uid "3758A05E-1643-F23A-CC2D-A09193FFBCD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.53868894160575609;
createNode animCurveTL -n "pasted__group13_translateZ";
	rename -uid "6EE741FA-6543-1C04-CD16-85B194761124";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.0879505436262602;
createNode animCurveTA -n "pasted__group13_rotateX";
	rename -uid "7E27FBA9-2045-A2D7-DD03-D8B26F0EEFBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pasted__group13_rotateY";
	rename -uid "26F93A4A-4C47-836E-18E2-85BCADFD746F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -173.11655295068928;
createNode animCurveTA -n "pasted__group13_rotateZ";
	rename -uid "F730D7F7-4040-B270-C870-2D966AE67512";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode polyCylinder -n "pasted__pasted__polyCylinder4";
	rename -uid "DDD96DE6-F040-9544-B7C6-A286C33CFC8F";
	setAttr ".sa" 6;
	setAttr ".sh" 2;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C8D34DF8-D446-35E4-F676-98A5DF3CF2D3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 758\n                -height 508\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 758\n            -height 508\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 758\\n    -height 508\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 758\\n    -height 508\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9BA9F043-7548-B669-7A91-8EA602A3FCAA";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyUnite -n "polyUnite1";
	rename -uid "87D4DBB2-D649-3133-5DFB-F9A32B52B598";
	setAttr -s 17 ".ip";
	setAttr -s 17 ".im";
createNode groupId -n "groupId1";
	rename -uid "FE9F6029-5943-F5F8-DBDB-FFAF281235B8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "38A387C6-BE4C-6A29-5537-72A0A8200B89";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId2";
	rename -uid "0C28F292-B943-26D5-A979-ED932BEBB735";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "5AE07855-8748-6062-C6B1-5FBCE23BC12E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "C2A78CB6-D34C-5E38-29EC-3BBE51B8E756";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode groupId -n "groupId4";
	rename -uid "2D355AE0-E946-3654-D99F-3A8B79A67784";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "09422598-1744-1890-75BF-AF994C6BA3C1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "0BA5EDD5-E044-F788-BFD8-9BBC8B90CA2E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode groupId -n "groupId6";
	rename -uid "0F57E366-4141-A12C-7279-F59D4805057D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "E1B84DC8-1541-1DFA-4867-0298D8EA2319";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "3EBD7EF0-F042-65AA-411F-6DBE40102953";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode groupId -n "groupId8";
	rename -uid "908A5EC4-854A-AA35-F721-5AB10E7A3AA1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "4E076201-A44B-495B-AAAB-C4B638E681FD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "C0846E0B-3E4F-187A-2847-CCA08F67196D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:48]";
createNode groupId -n "groupId10";
	rename -uid "C87738EE-1A41-2777-F7F1-F88FD50B7694";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "C4BB3493-B74E-5A51-50E3-2496EAA703AE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "08CCD30D-1243-4E1B-FD21-479CDEEDF96F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:48]";
createNode groupId -n "groupId12";
	rename -uid "794CD3C7-6243-2CF6-F155-568DBEF52DFD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "F75D075B-9F4E-49AA-D677-D98CAEB74257";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "DF215F37-2347-9F48-22AE-6BBCDAF79AE7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:35]";
createNode groupId -n "groupId14";
	rename -uid "F68B30F5-9A40-102B-34C5-25A02A9F2470";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "9B9553EF-6E46-58F4-7B92-BFBBFC61F6EB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "8558F8B2-7E4C-0D8E-39DB-D8897F43243E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:35]";
createNode groupId -n "groupId16";
	rename -uid "CC5CBAA9-8146-C629-DC1F-D2AA9CF563D4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "92E2F0A0-EB4D-775D-4816-53A69272E349";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "B90E5FEC-2145-3CD2-EAE8-D2AB8ACB477C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:48]";
createNode groupId -n "groupId18";
	rename -uid "F3BCC037-6E4A-FE9E-37C6-09BCEAC30D30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "6A8FAE19-204A-629A-D90B-C3954D9C75F2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "0AA3BF6F-1549-F331-01DB-89ADA5EFB63D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:35]";
createNode groupId -n "groupId20";
	rename -uid "49644C7A-F444-4E38-EE43-9CA76B25A7C6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	rename -uid "BABA2B45-DC4C-393B-C066-DBB8B94A0E68";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "912DE012-634E-BEF9-BCC8-F5AB7C7E803F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode groupId -n "groupId22";
	rename -uid "18887277-5342-5349-49F3-AEA873E418E5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	rename -uid "D5338B2A-1644-869A-F423-4EAC8F069B60";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "E453F74F-6D44-ED82-2D46-3690CA9DC95B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:48]";
createNode groupId -n "groupId24";
	rename -uid "4C394622-724F-DACD-C620-CE83F85753FB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	rename -uid "1BF82C3E-D44D-29FE-115D-D18261008984";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "08F97679-CF49-5532-170C-8788E9AFA802";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:35]";
createNode groupId -n "groupId26";
	rename -uid "D34A34CC-C143-13EA-D0CF-7485CECF507A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "BB485B22-8E45-8714-82A3-65AC8D8A4C9E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "89B7C7AF-E342-67BF-7E02-ECA3323D4388";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode groupId -n "groupId28";
	rename -uid "E9B41322-4A4A-BB8E-3DCC-35AF09279434";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	rename -uid "BA6DD118-294E-4F15-D983-1C9CF83EC8AB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "3D7E0D15-BA41-500D-E022-0089CB82D7B1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:48]";
createNode groupId -n "groupId30";
	rename -uid "1B3D8ED1-3246-3A23-22BB-1788FE5E2751";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	rename -uid "D36BF973-524A-6924-1951-D6A7FD0AC254";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "71E5D9FE-194B-FBBF-FE0E-30BE8B23DF6C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode groupId -n "groupId32";
	rename -uid "6CA5431D-384A-1BB6-FBA5-1C815A227BBB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId33";
	rename -uid "A65BC066-3C49-A249-B6A4-1897F16937E4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "1E5722AB-1C48-7EE7-F967-1E99BDE5869C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode groupId -n "groupId34";
	rename -uid "15C90D66-4A4F-B167-E701-CC9418293B03";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	rename -uid "CBB256C6-074E-A047-00EA-BEA5C3FBA7FA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "60EB078D-C243-6558-C27E-8FBF56772CFC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:586]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 35 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 35 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId1.id" "pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCylinderShape1.i";
connectAttr "groupId2.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCylinderShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape2.iog.og[0].gco";
connectAttr "groupParts2.og" "pCylinderShape2.i";
connectAttr "groupId4.id" "pCylinderShape2.ciog.cog[0].cgid";
connectAttr "groupParts3.og" "|group|pasted__pCylinder2|transform15|pasted__pCylinderShape2.i"
		;
connectAttr "groupId5.id" "|group|pasted__pCylinder2|transform15|pasted__pCylinderShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group|pasted__pCylinder2|transform15|pasted__pCylinderShape2.iog.og[0].gco"
		;
connectAttr "groupId6.id" "|group|pasted__pCylinder2|transform15|pasted__pCylinderShape2.ciog.cog[0].cgid"
		;
connectAttr "group1_translateX.o" "group1.tx";
connectAttr "group1_translateY.o" "group1.ty";
connectAttr "group1_translateZ.o" "group1.tz";
connectAttr "group1_scaleY.o" "group1.sy";
connectAttr "group1_scaleZ.o" "group1.sz";
connectAttr "group1_scaleX.o" "group1.sx";
connectAttr "group1_rotateX.o" "group1.rx";
connectAttr "group1_rotateY.o" "group1.ry";
connectAttr "group1_rotateZ.o" "group1.rz";
connectAttr "group1_visibility.o" "group1.v";
connectAttr "groupParts4.og" "|group1|pasted__group|pasted__pasted__pCylinder2|transform14|pasted__pasted__pCylinderShape2.i"
		;
connectAttr "groupId7.id" "|group1|pasted__group|pasted__pasted__pCylinder2|transform14|pasted__pasted__pCylinderShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pasted__group|pasted__pasted__pCylinder2|transform14|pasted__pasted__pCylinderShape2.iog.og[0].gco"
		;
connectAttr "groupId8.id" "|group1|pasted__group|pasted__pasted__pCylinder2|transform14|pasted__pasted__pCylinderShape2.ciog.cog[0].cgid"
		;
connectAttr "groupId9.id" "pSphereShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape1.iog.og[0].gco";
connectAttr "groupParts5.og" "pSphereShape1.i";
connectAttr "groupId10.id" "pSphereShape1.ciog.cog[0].cgid";
connectAttr "groupParts6.og" "|group5|pasted__pSphere1|transform12|pasted__pSphereShape1.i"
		;
connectAttr "groupId11.id" "|group5|pasted__pSphere1|transform12|pasted__pSphereShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__pSphere1|transform12|pasted__pSphereShape1.iog.og[0].gco"
		;
connectAttr "groupId12.id" "|group5|pasted__pSphere1|transform12|pasted__pSphereShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts7.og" "|group6|pasted__group5|pasted__pasted__pSphere1|transform11|pasted__pasted__pSphereShape1.i"
		;
connectAttr "groupId13.id" "|group6|pasted__group5|pasted__pasted__pSphere1|transform11|pasted__pasted__pSphereShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__group5|pasted__pasted__pSphere1|transform11|pasted__pasted__pSphereShape1.iog.og[0].gco"
		;
connectAttr "groupId14.id" "|group6|pasted__group5|pasted__pasted__pSphere1|transform11|pasted__pasted__pSphereShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts8.og" "|group7|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1|transform10|pasted__pasted__pasted__pSphereShape1.i"
		;
connectAttr "groupId15.id" "|group7|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1|transform10|pasted__pasted__pasted__pSphereShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group7|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1|transform10|pasted__pasted__pasted__pSphereShape1.iog.og[0].gco"
		;
connectAttr "groupId16.id" "|group7|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1|transform10|pasted__pasted__pasted__pSphereShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts9.og" "|group8|pasted__pSphere1|transform9|pasted__pSphereShape1.i"
		;
connectAttr "groupId17.id" "|group8|pasted__pSphere1|transform9|pasted__pSphereShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group8|pasted__pSphere1|transform9|pasted__pSphereShape1.iog.og[0].gco"
		;
connectAttr "groupId18.id" "|group8|pasted__pSphere1|transform9|pasted__pSphereShape1.ciog.cog[0].cgid"
		;
connectAttr "group9_translateX.o" "group9.tx";
connectAttr "group9_translateY.o" "group9.ty";
connectAttr "group9_translateZ.o" "group9.tz";
connectAttr "group9_rotateX.o" "group9.rx";
connectAttr "group9_rotateY.o" "group9.ry";
connectAttr "group9_rotateZ.o" "group9.rz";
connectAttr "group9_visibility.o" "group9.v";
connectAttr "group9_scaleX.o" "group9.sx";
connectAttr "group9_scaleY.o" "group9.sy";
connectAttr "group9_scaleZ.o" "group9.sz";
connectAttr "groupParts10.og" "|group9|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1|transform8|pasted__pasted__pasted__pSphereShape1.i"
		;
connectAttr "groupId19.id" "|group9|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1|transform8|pasted__pasted__pasted__pSphereShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group9|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1|transform8|pasted__pasted__pasted__pSphereShape1.iog.og[0].gco"
		;
connectAttr "groupId20.id" "|group9|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1|transform8|pasted__pasted__pasted__pSphereShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts11.og" "|group10|pasted__pCylinder2|transform7|pasted__pCylinderShape2.i"
		;
connectAttr "groupId21.id" "|group10|pasted__pCylinder2|transform7|pasted__pCylinderShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group10|pasted__pCylinder2|transform7|pasted__pCylinderShape2.iog.og[0].gco"
		;
connectAttr "groupId22.id" "|group10|pasted__pCylinder2|transform7|pasted__pCylinderShape2.ciog.cog[0].cgid"
		;
connectAttr "pasted__pasted__pSphere1_translateX.o" "|group11|pasted__group8|pasted__pasted__pSphere1.tx"
		;
connectAttr "pasted__pasted__pSphere1_translateY.o" "|group11|pasted__group8|pasted__pasted__pSphere1.ty"
		;
connectAttr "pasted__pasted__pSphere1_translateZ.o" "|group11|pasted__group8|pasted__pasted__pSphere1.tz"
		;
connectAttr "pasted__pasted__pSphere1_scaleY.o" "|group11|pasted__group8|pasted__pasted__pSphere1.sy"
		;
connectAttr "pasted__pasted__pSphere1_scaleX.o" "|group11|pasted__group8|pasted__pasted__pSphere1.sx"
		;
connectAttr "pasted__pasted__pSphere1_scaleZ.o" "|group11|pasted__group8|pasted__pasted__pSphere1.sz"
		;
connectAttr "pasted__pasted__pSphere1_visibility.o" "|group11|pasted__group8|pasted__pasted__pSphere1.v"
		;
connectAttr "pasted__pasted__pSphere1_rotateX.o" "|group11|pasted__group8|pasted__pasted__pSphere1.rx"
		;
connectAttr "pasted__pasted__pSphere1_rotateY.o" "|group11|pasted__group8|pasted__pasted__pSphere1.ry"
		;
connectAttr "pasted__pasted__pSphere1_rotateZ.o" "|group11|pasted__group8|pasted__pasted__pSphere1.rz"
		;
connectAttr "groupParts12.og" "|group11|pasted__group8|pasted__pasted__pSphere1|transform6|pasted__pasted__pSphereShape1.i"
		;
connectAttr "groupId23.id" "|group11|pasted__group8|pasted__pasted__pSphere1|transform6|pasted__pasted__pSphereShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group11|pasted__group8|pasted__pasted__pSphere1|transform6|pasted__pasted__pSphereShape1.iog.og[0].gco"
		;
connectAttr "groupId24.id" "|group11|pasted__group8|pasted__pasted__pSphere1|transform6|pasted__pasted__pSphereShape1.ciog.cog[0].cgid"
		;
connectAttr "pasted__group9_translateX.o" "pasted__group9.tx";
connectAttr "pasted__group9_translateY.o" "pasted__group9.ty";
connectAttr "pasted__group9_translateZ.o" "pasted__group9.tz";
connectAttr "pasted__group9_rotateX.o" "pasted__group9.rx";
connectAttr "pasted__group9_rotateY.o" "pasted__group9.ry";
connectAttr "pasted__group9_rotateZ.o" "pasted__group9.rz";
connectAttr "pasted__group9_visibility.o" "pasted__group9.v";
connectAttr "pasted__group9_scaleX.o" "pasted__group9.sx";
connectAttr "pasted__group9_scaleY.o" "pasted__group9.sy";
connectAttr "pasted__group9_scaleZ.o" "pasted__group9.sz";
connectAttr "groupParts13.og" "pasted__pasted__pasted__pasted__pSphereShape1.i";
connectAttr "groupId25.id" "pasted__pasted__pasted__pasted__pSphereShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "pasted__pasted__pasted__pasted__pSphereShape1.iog.og[0].gco"
		;
connectAttr "groupId26.id" "pasted__pasted__pasted__pasted__pSphereShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts14.og" "|group12|pasted__group10|pasted__pasted__pCylinder2|transform4|pasted__pasted__pCylinderShape2.i"
		;
connectAttr "groupId27.id" "|group12|pasted__group10|pasted__pasted__pCylinder2|transform4|pasted__pasted__pCylinderShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group12|pasted__group10|pasted__pasted__pCylinder2|transform4|pasted__pasted__pCylinderShape2.iog.og[0].gco"
		;
connectAttr "groupId28.id" "|group12|pasted__group10|pasted__pasted__pCylinder2|transform4|pasted__pasted__pCylinderShape2.ciog.cog[0].cgid"
		;
connectAttr "pasted__pasted__pasted__pSphere1_translateX.o" "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1.tx"
		;
connectAttr "pasted__pasted__pasted__pSphere1_translateY.o" "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1.ty"
		;
connectAttr "pasted__pasted__pasted__pSphere1_translateZ.o" "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1.tz"
		;
connectAttr "pasted__pasted__pasted__pSphere1_rotateX.o" "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1.rx"
		;
connectAttr "pasted__pasted__pasted__pSphere1_rotateY.o" "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1.ry"
		;
connectAttr "pasted__pasted__pasted__pSphere1_rotateZ.o" "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1.rz"
		;
connectAttr "pasted__pasted__pasted__pSphere1_scaleY.o" "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1.sy"
		;
connectAttr "pasted__pasted__pasted__pSphere1_scaleX.o" "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1.sx"
		;
connectAttr "pasted__pasted__pasted__pSphere1_scaleZ.o" "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1.sz"
		;
connectAttr "pasted__pasted__pasted__pSphere1_visibility.o" "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1.v"
		;
connectAttr "groupParts15.og" "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1|transform3|pasted__pasted__pasted__pSphereShape1.i"
		;
connectAttr "groupId29.id" "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1|transform3|pasted__pasted__pasted__pSphereShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1|transform3|pasted__pasted__pasted__pSphereShape1.iog.og[0].gco"
		;
connectAttr "groupId30.id" "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1|transform3|pasted__pasted__pasted__pSphereShape1.ciog.cog[0].cgid"
		;
connectAttr "group13_translateX.o" "group13.tx";
connectAttr "group13_translateY.o" "group13.ty";
connectAttr "group13_translateZ.o" "group13.tz";
connectAttr "group13_rotateY.o" "group13.ry";
connectAttr "group13_rotateX.o" "group13.rx";
connectAttr "group13_rotateZ.o" "group13.rz";
connectAttr "group13_scaleZ.o" "group13.sz";
connectAttr "group13_scaleX.o" "group13.sx";
connectAttr "group13_scaleY.o" "group13.sy";
connectAttr "group13_visibility.o" "group13.v";
connectAttr "groupParts16.og" "|group13|pasted__pCylinder2|transform2|pasted__pCylinderShape2.i"
		;
connectAttr "groupId31.id" "|group13|pasted__pCylinder2|transform2|pasted__pCylinderShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group13|pasted__pCylinder2|transform2|pasted__pCylinderShape2.iog.og[0].gco"
		;
connectAttr "groupId32.id" "|group13|pasted__pCylinder2|transform2|pasted__pCylinderShape2.ciog.cog[0].cgid"
		;
connectAttr "pasted__group13_translateX.o" "pasted__group13.tx";
connectAttr "pasted__group13_translateY.o" "pasted__group13.ty";
connectAttr "pasted__group13_translateZ.o" "pasted__group13.tz";
connectAttr "pasted__group13_rotateY.o" "pasted__group13.ry";
connectAttr "pasted__group13_rotateX.o" "pasted__group13.rx";
connectAttr "pasted__group13_rotateZ.o" "pasted__group13.rz";
connectAttr "pasted__group13_scaleZ.o" "pasted__group13.sz";
connectAttr "pasted__group13_scaleX.o" "pasted__group13.sx";
connectAttr "pasted__group13_scaleY.o" "pasted__group13.sy";
connectAttr "pasted__group13_visibility.o" "pasted__group13.v";
connectAttr "groupParts17.og" "|group14|pasted__group13|pasted__pasted__pCylinder2|transform1|pasted__pasted__pCylinderShape2.i"
		;
connectAttr "groupId33.id" "|group14|pasted__group13|pasted__pasted__pCylinder2|transform1|pasted__pasted__pCylinderShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group14|pasted__group13|pasted__pasted__pCylinder2|transform1|pasted__pasted__pCylinderShape2.iog.og[0].gco"
		;
connectAttr "groupId34.id" "|group14|pasted__group13|pasted__pasted__pCylinder2|transform1|pasted__pasted__pCylinderShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts18.og" "pCylinder3Shape.i";
connectAttr "groupId35.id" "pCylinder3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder3Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pCylinderShape1.o" "polyUnite1.ip[0]";
connectAttr "pCylinderShape2.o" "polyUnite1.ip[1]";
connectAttr "|group|pasted__pCylinder2|transform15|pasted__pCylinderShape2.o" "polyUnite1.ip[2]"
		;
connectAttr "|group1|pasted__group|pasted__pasted__pCylinder2|transform14|pasted__pasted__pCylinderShape2.o" "polyUnite1.ip[3]"
		;
connectAttr "pSphereShape1.o" "polyUnite1.ip[4]";
connectAttr "|group5|pasted__pSphere1|transform12|pasted__pSphereShape1.o" "polyUnite1.ip[5]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__pSphere1|transform11|pasted__pasted__pSphereShape1.o" "polyUnite1.ip[6]"
		;
connectAttr "|group7|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1|transform10|pasted__pasted__pasted__pSphereShape1.o" "polyUnite1.ip[7]"
		;
connectAttr "|group8|pasted__pSphere1|transform9|pasted__pSphereShape1.o" "polyUnite1.ip[8]"
		;
connectAttr "|group9|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1|transform8|pasted__pasted__pasted__pSphereShape1.o" "polyUnite1.ip[9]"
		;
connectAttr "|group10|pasted__pCylinder2|transform7|pasted__pCylinderShape2.o" "polyUnite1.ip[10]"
		;
connectAttr "|group11|pasted__group8|pasted__pasted__pSphere1|transform6|pasted__pasted__pSphereShape1.o" "polyUnite1.ip[11]"
		;
connectAttr "pasted__pasted__pasted__pasted__pSphereShape1.o" "polyUnite1.ip[12]"
		;
connectAttr "|group12|pasted__group10|pasted__pasted__pCylinder2|transform4|pasted__pasted__pCylinderShape2.o" "polyUnite1.ip[13]"
		;
connectAttr "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1|transform3|pasted__pasted__pasted__pSphereShape1.o" "polyUnite1.ip[14]"
		;
connectAttr "|group13|pasted__pCylinder2|transform2|pasted__pCylinderShape2.o" "polyUnite1.ip[15]"
		;
connectAttr "|group14|pasted__group13|pasted__pasted__pCylinder2|transform1|pasted__pasted__pCylinderShape2.o" "polyUnite1.ip[16]"
		;
connectAttr "pCylinderShape1.wm" "polyUnite1.im[0]";
connectAttr "pCylinderShape2.wm" "polyUnite1.im[1]";
connectAttr "|group|pasted__pCylinder2|transform15|pasted__pCylinderShape2.wm" "polyUnite1.im[2]"
		;
connectAttr "|group1|pasted__group|pasted__pasted__pCylinder2|transform14|pasted__pasted__pCylinderShape2.wm" "polyUnite1.im[3]"
		;
connectAttr "pSphereShape1.wm" "polyUnite1.im[4]";
connectAttr "|group5|pasted__pSphere1|transform12|pasted__pSphereShape1.wm" "polyUnite1.im[5]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__pSphere1|transform11|pasted__pasted__pSphereShape1.wm" "polyUnite1.im[6]"
		;
connectAttr "|group7|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1|transform10|pasted__pasted__pasted__pSphereShape1.wm" "polyUnite1.im[7]"
		;
connectAttr "|group8|pasted__pSphere1|transform9|pasted__pSphereShape1.wm" "polyUnite1.im[8]"
		;
connectAttr "|group9|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1|transform8|pasted__pasted__pasted__pSphereShape1.wm" "polyUnite1.im[9]"
		;
connectAttr "|group10|pasted__pCylinder2|transform7|pasted__pCylinderShape2.wm" "polyUnite1.im[10]"
		;
connectAttr "|group11|pasted__group8|pasted__pasted__pSphere1|transform6|pasted__pasted__pSphereShape1.wm" "polyUnite1.im[11]"
		;
connectAttr "pasted__pasted__pasted__pasted__pSphereShape1.wm" "polyUnite1.im[12]"
		;
connectAttr "|group12|pasted__group10|pasted__pasted__pCylinder2|transform4|pasted__pasted__pCylinderShape2.wm" "polyUnite1.im[13]"
		;
connectAttr "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1|transform3|pasted__pasted__pasted__pSphereShape1.wm" "polyUnite1.im[14]"
		;
connectAttr "|group13|pasted__pCylinder2|transform2|pasted__pCylinderShape2.wm" "polyUnite1.im[15]"
		;
connectAttr "|group14|pasted__group13|pasted__pasted__pCylinder2|transform1|pasted__pasted__pCylinderShape2.wm" "polyUnite1.im[16]"
		;
connectAttr "polyCylinder1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyCylinder2.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "pasted__polyCylinder2.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "pasted__pasted__polyCylinder2.out" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "polySphere1.out" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "pasted__polySphere1.out" "groupParts6.ig";
connectAttr "groupId11.id" "groupParts6.gi";
connectAttr "pasted__pasted__polySphere1.out" "groupParts7.ig";
connectAttr "groupId13.id" "groupParts7.gi";
connectAttr "pasted__pasted__pasted__polySphere1.out" "groupParts8.ig";
connectAttr "groupId15.id" "groupParts8.gi";
connectAttr "pasted__polySphere2.out" "groupParts9.ig";
connectAttr "groupId17.id" "groupParts9.gi";
connectAttr "pasted__pasted__pasted__polySphere2.out" "groupParts10.ig";
connectAttr "groupId19.id" "groupParts10.gi";
connectAttr "pasted__polyCylinder3.out" "groupParts11.ig";
connectAttr "groupId21.id" "groupParts11.gi";
connectAttr "pasted__pasted__polySphere2.out" "groupParts12.ig";
connectAttr "groupId23.id" "groupParts12.gi";
connectAttr "pasted__pasted__pasted__pasted__polySphere2.out" "groupParts13.ig";
connectAttr "groupId25.id" "groupParts13.gi";
connectAttr "pasted__pasted__polyCylinder3.out" "groupParts14.ig";
connectAttr "groupId27.id" "groupParts14.gi";
connectAttr "pasted__pasted__pasted__polySphere3.out" "groupParts15.ig";
connectAttr "groupId29.id" "groupParts15.gi";
connectAttr "pasted__polyCylinder4.out" "groupParts16.ig";
connectAttr "groupId31.id" "groupParts16.gi";
connectAttr "pasted__pasted__polyCylinder4.out" "groupParts17.ig";
connectAttr "groupId33.id" "groupParts17.gi";
connectAttr "polyUnite1.out" "groupParts18.ig";
connectAttr "groupId35.id" "groupParts18.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group|pasted__pCylinder2|transform15|pasted__pCylinderShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group|pasted__pCylinder2|transform15|pasted__pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pasted__group|pasted__pasted__pCylinder2|transform14|pasted__pasted__pCylinderShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pasted__group|pasted__pasted__pCylinder2|transform14|pasted__pasted__pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group5|pasted__pSphere1|transform12|pasted__pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__pSphere1|transform12|pasted__pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__pSphere1|transform11|pasted__pasted__pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__pSphere1|transform11|pasted__pasted__pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group7|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1|transform10|pasted__pasted__pasted__pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group7|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1|transform10|pasted__pasted__pasted__pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__pSphere1|transform9|pasted__pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__pSphere1|transform9|pasted__pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group9|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1|transform8|pasted__pasted__pasted__pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group9|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__pSphere1|transform8|pasted__pasted__pasted__pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group10|pasted__pCylinder2|transform7|pasted__pCylinderShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group10|pasted__pCylinder2|transform7|pasted__pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group11|pasted__group8|pasted__pasted__pSphere1|transform6|pasted__pasted__pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group11|pasted__group8|pasted__pasted__pSphere1|transform6|pasted__pasted__pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pasted__pasted__pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pasted__pasted__pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group12|pasted__group10|pasted__pasted__pCylinder2|transform4|pasted__pasted__pCylinderShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group12|pasted__group10|pasted__pasted__pCylinder2|transform4|pasted__pasted__pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1|transform3|pasted__pasted__pasted__pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group12|pasted__group11|pasted__pasted__group8|pasted__pasted__pasted__pSphere1|transform3|pasted__pasted__pasted__pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group13|pasted__pCylinder2|transform2|pasted__pCylinderShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group13|pasted__pCylinder2|transform2|pasted__pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group14|pasted__group13|pasted__pasted__pCylinder2|transform1|pasted__pasted__pCylinderShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group14|pasted__group13|pasted__pasted__pCylinder2|transform1|pasted__pasted__pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCylinder3Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
// End of great-tree.ma
