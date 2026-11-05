-- CarStopMarkers.lua
-- Station-based car markers for SCR Autopilot.
-- Per station: markers = {...} apply to any follow-up station (fallback).
-- to = { ["Next Station"] = { markers } } are used only when that station follows on the train's schedule.
-- Entry label format: "P<num|letter> <CarSpec>". Optional per-station/per-entry: route, dest.
-- Next-station sets win over fallback markers. Turnarounds resolve the reverse leg's first stop.
return {
    stations = {
        {
            name = "Benton",

            to = {
                ["Coxly"] = {
                    { label = "P13 2",           pos = Vector3.new( -2622.4382,    8.0481,  -5408.8687), look = Vector3.new( -0.0286,   0.0000,  -0.9996) },
                    { label = "P13 3-4",         pos = Vector3.new( -2621.5391,    8.0481,  -5345.9253), look = Vector3.new(  0.0976,   0.0000,  -0.9952) },
                    { label = "P13 Metro 3",     pos = Vector3.new( -2621.5391,    8.0481,  -5345.9253), look = Vector3.new(  0.0976,   0.0000,  -0.9952) },
                    { label = "P13 Metro 555/777 4-5", pos = Vector3.new( -2621.5391,    8.0481,  -5345.9253), look = Vector3.new(  0.0976,   0.0000,  -0.9952) },
                    { label = "P13 5-6",         pos = Vector3.new( -2623.8782,    8.0481,  -5183.9570), look = Vector3.new(  0.0434,  -0.0000,  -0.9991) },
                    { label = "P13 HST 2+4",     pos = Vector3.new( -2623.8782,    8.0481,  -5183.9570), look = Vector3.new(  0.0434,   0.0000,  -0.9991) },
                    { label = "P13 Metro 6",     pos = Vector3.new( -2623.8782,    8.0481,  -5183.9570), look = Vector3.new(  0.0434,   0.0000,  -0.9991) },
                    { label = "P13 Class 80x 5", pos = Vector3.new( -2623.8782,    8.0481,  -5183.9570), look = Vector3.new(  0.0434,   0.0000,  -0.9991) },
                    { label = "P13 Metro 555/777 8-10", pos = Vector3.new( -2623.8782,    8.0481,  -5183.9570), look = Vector3.new(  0.0434,   0.0000,  -0.9991) },
                    { label = "P13 HST 2+5",     pos = Vector3.new( -2628.6372,    8.0481,  -5082.7915), look = Vector3.new(  0.0617,   0.0000,  -0.9981) },
                    { label = "P13 S",           pos = Vector3.new( -2652.7849,    8.0481,  -4908.8496), look = Vector3.new(  0.2375,   0.0000,  -0.9714) },
                    { label = "P13 Class 80x 9-10", pos = Vector3.new( -2652.7849,    8.0481,  -4908.8496), look = Vector3.new(  0.2375,   0.0000,  -0.9714) },
                    { label = "P12 3-4",         pos = Vector3.new( -2660.2141,    8.0481,  -5345.7803), look = Vector3.new( -0.0366,   0.0000,  -0.9993) },
                    { label = "P12 Metro 555/777 4-5", pos = Vector3.new( -2660.2141,    8.0481,  -5345.7803), look = Vector3.new( -0.0366,   0.0000,  -0.9993) },
                    { label = "P12 Metro 3",     pos = Vector3.new( -2660.2141,    8.0481,  -5345.7803), look = Vector3.new( -0.0366,   0.0000,  -0.9993) },
                    { label = "P12 Metro 6",     pos = Vector3.new( -2658.5120,    8.0481,  -5184.2339), look = Vector3.new( -0.0049,  -0.0000,  -1.0000) },
                    { label = "P12 Metro 555/777 8-10", pos = Vector3.new( -2658.5120,    8.0481,  -5184.2339), look = Vector3.new( -0.0049,  -0.0000,  -1.0000) },
                    { label = "P12 HST 2+4",     pos = Vector3.new( -2658.5120,    8.0481,  -5184.2339), look = Vector3.new( -0.0049,   0.0000,  -1.0000) },
                    { label = "P12 Class 80x 5", pos = Vector3.new( -2658.5120,    8.0481,  -5184.2339), look = Vector3.new( -0.0049,   0.0000,  -1.0000) },
                    { label = "P12 5-6",         pos = Vector3.new( -2658.5120,    8.0481,  -5184.2339), look = Vector3.new( -0.0049,  -0.0000,  -1.0000) },
                    { label = "P12 HST 2+5",     pos = Vector3.new( -2660.5962,    8.0481,  -5089.3315), look = Vector3.new(  0.0657,   0.0000,  -0.9978) },
                    { label = "P12 S",           pos = Vector3.new( -2683.2844,    8.0481,  -4911.1699), look = Vector3.new(  0.3345,   0.0000,  -0.9424) },
                    { label = "P12 Class 80x 9-10", pos = Vector3.new( -2683.2844,    8.0481,  -4911.1699), look = Vector3.new(  0.3345,   0.0000,  -0.9424) },
                    { label = "P11 2",           pos = Vector3.new( -2680.0930,    8.0481,  -5408.7495), look = Vector3.new(  0.1004,  -0.0000,  -0.9949) },
                    { label = "P11 Metro 3",     pos = Vector3.new( -2679.3044,    8.0481,  -5345.9204), look = Vector3.new(  0.0917,   0.0000,  -0.9958) },
                    { label = "P11 Metro 555/777 4-5", pos = Vector3.new( -2679.3044,    8.0481,  -5345.9204), look = Vector3.new(  0.0917,   0.0000,  -0.9958) },
                    { label = "P11 3-4",         pos = Vector3.new( -2679.3044,    8.0481,  -5345.9204), look = Vector3.new(  0.0917,   0.0000,  -0.9958) },
                    { label = "P11 5-6",         pos = Vector3.new( -2680.9353,    8.0481,  -5183.6494), look = Vector3.new(  0.0958,  -0.0000,  -0.9954) },
                    { label = "P11 Class 80x 5", pos = Vector3.new( -2680.9353,    8.0481,  -5183.6494), look = Vector3.new(  0.0958,   0.0000,  -0.9954) },
                    { label = "P11 Metro 555/777 8-10", pos = Vector3.new( -2680.9353,    8.0481,  -5183.6494), look = Vector3.new(  0.0958,  -0.0000,  -0.9954) },
                    { label = "P11 Metro 6",     pos = Vector3.new( -2680.9353,    8.0481,  -5183.6494), look = Vector3.new(  0.0958,  -0.0000,  -0.9954) },
                    { label = "P11 HST 2+5",     pos = Vector3.new( -2683.9373,    8.0481,  -5094.2812), look = Vector3.new(  0.0521,  -0.0000,  -0.9986) },
                    { label = "P11 S",           pos = Vector3.new( -2695.9221,    8.0481,  -4912.8413), look = Vector3.new(  0.0812,   0.0000,  -0.9967) },
                    { label = "P11 Class 80x 9-10", pos = Vector3.new( -2695.9221,    8.0481,  -4912.8413), look = Vector3.new(  0.0812,   0.0000,  -0.9967) },
                    { label = "P10 Metro 3",     pos = Vector3.new( -2716.4263,    8.0481,  -5303.8174), look = Vector3.new( -0.0217,   0.0000,  -0.9998) },
                    { label = "P10 Metro 555/777 4-5", pos = Vector3.new( -2716.4263,    8.0481,  -5303.8174), look = Vector3.new( -0.0217,   0.0000,  -0.9998) },
                    { label = "P10 3-4",         pos = Vector3.new( -2716.4263,    8.0481,  -5303.8174), look = Vector3.new( -0.0217,   0.0000,  -0.9998) },
                    { label = "P10 Metro 6",     pos = Vector3.new( -2715.3240,    8.0481,  -5210.9854), look = Vector3.new( -0.0077,  -0.0000,  -1.0000) },
                    { label = "P10 HST 2+4",     pos = Vector3.new( -2715.3240,    8.0481,  -5210.9854), look = Vector3.new( -0.0077,  -0.0000,  -1.0000) },
                    { label = "P10 Metro 555/777 8-10", pos = Vector3.new( -2715.3240,    8.0481,  -5210.9854), look = Vector3.new( -0.0077,  -0.0000,  -1.0000) },
                    { label = "P10 Class 80x 5", pos = Vector3.new( -2715.3240,    8.0481,  -5210.9854), look = Vector3.new( -0.0077,   0.0000,  -1.0000) },
                    { label = "P10 5-6",         pos = Vector3.new( -2715.3240,    8.0481,  -5210.9854), look = Vector3.new( -0.0077,   0.0000,  -1.0000) },
                    { label = "P10 HST 2+5",     pos = Vector3.new( -2717.2456,    8.0481,  -5094.0762), look = Vector3.new( -0.0309,  -0.0000,  -0.9995) },
                    { label = "P10 S",           pos = Vector3.new( -2721.5625,    8.0481,  -4919.7520), look = Vector3.new(  0.0898,   0.0000,  -0.9960) },
                    { label = "P10 Class 80x 9-10", pos = Vector3.new( -2721.5625,    8.0481,  -4919.7520), look = Vector3.new(  0.0898,   0.0000,  -0.9960) },
                    { label = "P8 Metro 3",      pos = Vector3.new( -2738.3462,    8.0481,  -5347.4263), look = Vector3.new( -0.0481,  -0.0000,  -0.9988) },
                    { label = "P8 Metro 6",      pos = Vector3.new( -2740.7495,    8.0481,  -5278.7500), look = Vector3.new(  0.0478,  -0.0000,  -0.9989) },
                    { label = "P8 Metro 555/777 ALL", pos = Vector3.new( -2740.7495,    8.0481,  -5278.7500), look = Vector3.new(  0.0478,   0.0000,  -0.9989) },
                    { label = "P8 Class 80x 5",  pos = Vector3.new( -2740.7495,    8.0481,  -5278.7500), look = Vector3.new(  0.0478,  -0.0000,  -0.9989) },
                    { label = "P8 HST 2+4",      pos = Vector3.new( -2740.7495,    8.0481,  -5278.7500), look = Vector3.new(  0.0478,  -0.0000,  -0.9989) },
                    { label = "P8 5-6",          pos = Vector3.new( -2740.7495,    8.0481,  -5278.7500), look = Vector3.new(  0.0478,  -0.0000,  -0.9989) },
                    { label = "P8 HST 2+5",      pos = Vector3.new( -2743.0520,    8.0481,  -5093.9707), look = Vector3.new( -0.0251,  -0.0000,  -0.9997) },
                    { label = "P8 S",            pos = Vector3.new( -2745.4956,    8.0481,  -4902.8379), look = Vector3.new(  0.1294,   0.0000,  -0.9916) },
                    { label = "P8 Class 80x 9-10", pos = Vector3.new( -2745.4956,    8.0481,  -4902.8379), look = Vector3.new(  0.1294,  -0.0000,  -0.9916) },
                    { label = "P6 2-3",          pos = Vector3.new( -2795.1665,    8.0481,  -5345.0615), look = Vector3.new(  0.0025,  -0.0000,  -1.0000) },
                    { label = "P6 4-6",          pos = Vector3.new( -2796.3125,    8.0481,  -5256.5757), look = Vector3.new(  0.0261,   0.0000,  -0.9997) },
                    { label = "P6 S",            pos = Vector3.new( -2796.8445,    8.0481,  -5161.1411), look = Vector3.new( -0.0290,  -0.0000,  -0.9996) },
                    { label = "P3 2-3",          pos = Vector3.new( -2903.5864,    8.0481,  -5368.2788), look = Vector3.new( -0.1316,  -0.0000,  -0.9913) },
                    { label = "P3 4",            pos = Vector3.new( -2904.7568,    8.0481,  -5313.8267), look = Vector3.new( -0.0734,  -0.0000,  -0.9973) },
                    { label = "P3 5",            pos = Vector3.new( -2904.1665,    8.0481,  -5256.6982), look = Vector3.new(  0.0309,  -0.0000,  -0.9995) },
                    { label = "P3 Class 80x 5",  pos = Vector3.new( -2901.1497,    8.0481,  -5218.1377), look = Vector3.new( -0.1042,  -0.0000,  -0.9946) },
                    { label = "P3 8",            pos = Vector3.new( -2904.1294,    8.0481,  -5181.2158), look = Vector3.new( -0.0506,   0.0000,  -0.9987) },
                    { label = "P3 9-10",         pos = Vector3.new( -2892.5271,    8.0481,  -5058.2280), look = Vector3.new( -0.0997,  -0.0000,  -0.9950) },
                    { label = "P3 S",            pos = Vector3.new( -2875.8582,    8.0481,  -4943.2842), look = Vector3.new( -0.1367,   0.0000,  -0.9906) },
                    { label = "P3 Class 80x 9-10", pos = Vector3.new( -2875.8582,    8.0481,  -4943.2842), look = Vector3.new( -0.1367,   0.0000,  -0.9906) },
                    { label = "P2 S",            pos = Vector3.new( -2904.2424,    8.0481,  -5047.5757), look = Vector3.new( -0.2385,  -0.0000,  -0.9712) },
                    { label = "P2 Class 80x 9",  pos = Vector3.new( -2904.2424,    8.0481,  -5047.5757), look = Vector3.new( -0.2385,  -0.0000,  -0.9712) },
                    { label = "P2 8",            pos = Vector3.new( -2918.9487,    8.0481,  -5182.2500), look = Vector3.new( -0.0630,   0.0000,  -0.9980) },
                    { label = "P2 Class 80x 5",  pos = Vector3.new( -2924.3547,    8.0481,  -5217.9272), look = Vector3.new( -0.0533,  -0.0000,  -0.9986) },
                    { label = "P2 5",            pos = Vector3.new( -2920.2576,    8.0481,  -5256.3213), look = Vector3.new( -0.0552,  -0.0000,  -0.9985) },
                    { label = "P2 4",            pos = Vector3.new( -2920.1323,    8.0481,  -5313.8335), look = Vector3.new( -0.0139,  -0.0000,  -0.9999) },
                    { label = "P2 2-3",          pos = Vector3.new( -2922.2717,    8.0481,  -5368.4062), look = Vector3.new( -0.1091,   0.0000,  -0.9940) },
                },
                ["Benton Bridge|Port Benton"] = {
                    { label = "P8 4-8",          pos = Vector3.new( -2736.7627,    8.0481,  -5552.4531), look = Vector3.new(  0.0140,   0.0000,   0.9999) },
                        { label = "P8 Class 80x 5",  pos = Vector3.new( -2736.7627,    8.0481,  -5552.4531), look = Vector3.new(  0.0140,   0.0000,   0.9999) },
                        { label = "P8 HST 2+4/5",    pos = Vector3.new( -2736.7627,    8.0481,  -5552.4531), look = Vector3.new(  0.0140,   0.0000,   0.9999) },
                        { label = "P8 S",            pos = Vector3.new( -2741.9758,    8.0481,  -5772.3501), look = Vector3.new(  0.0363,   0.0000,   0.9993) },
                        { label = "P8 Class 80x 9-10", pos = Vector3.new( -2741.9758,    8.0481,  -5772.3501), look = Vector3.new(  0.0363,   0.0000,   0.9993) },
                        { label = "P7 Metro 3",      pos = Vector3.new( -2778.5479,    8.0481,  -5512.2559), look = Vector3.new(  0.0784,  -0.0000,   0.9969) },
                        { label = "P7 Metro 555/777 4-5", pos = Vector3.new( -2778.5479,    8.0481,  -5512.2559), look = Vector3.new(  0.0784,   0.0000,   0.9969) },
                        { label = "P7 3-4",          pos = Vector3.new( -2775.6455,    8.0481,  -5551.4556), look = Vector3.new(  0.0414,  -0.0000,   0.9991) },
                        { label = "P7 Metro 6",      pos = Vector3.new( -2775.0129,    8.0481,  -5598.3984), look = Vector3.new( -0.0534,   0.0000,   0.9986) },
                        { label = "P7 HST 2+4",      pos = Vector3.new( -2775.0129,    8.0481,  -5598.3984), look = Vector3.new( -0.0534,   0.0000,   0.9986) },
                        { label = "P7 Class 80x 5",  pos = Vector3.new( -2775.0129,    8.0481,  -5598.3984), look = Vector3.new( -0.0534,   0.0000,   0.9986) },
                        { label = "P7 Metro 555/777 8-10", pos = Vector3.new( -2775.4414,    8.0481,  -5628.7480), look = Vector3.new( -0.0034,   0.0000,   1.0000) },
                        { label = "P7 HST 2+5",      pos = Vector3.new( -2775.4414,    8.0481,  -5628.7480), look = Vector3.new( -0.0034,   0.0000,   1.0000) },
                        { label = "P7 5-6",          pos = Vector3.new( -2775.8042,    8.0481,  -5663.7012), look = Vector3.new(  0.0686,   0.0000,   0.9976) },
                        { label = "P7 S",            pos = Vector3.new( -2778.6335,    8.0481,  -5873.9990), look = Vector3.new(  0.0464,   0.0000,   0.9989) },
                        { label = "P7 Class 80x 9-10", pos = Vector3.new( -2778.6335,    8.0481,  -5873.9990), look = Vector3.new(  0.0464,   0.0000,   0.9989) },
                        { label = "P6 S",            pos = Vector3.new( -2800.0549,    8.0481,  -5873.7500), look = Vector3.new( -0.0054,   0.0000,   1.0000) },
                        { label = "P6 Class 80x 9-10", pos = Vector3.new( -2800.0549,    8.0481,  -5873.7500), look = Vector3.new( -0.0054,   0.0000,   1.0000) },
                        { label = "P6 5-6",          pos = Vector3.new( -2797.0613,    8.0481,  -5663.4414), look = Vector3.new(  0.0177,   0.0000,   0.9998) },
                        { label = "P6 HST 2+5",      pos = Vector3.new( -2795.9512,    8.0481,  -5628.4136), look = Vector3.new(  0.0413,   0.0000,   0.9991) },
                        { label = "P6 Metro 555/777 8-10", pos = Vector3.new( -2795.9512,    8.0481,  -5628.4136), look = Vector3.new(  0.0413,   0.0000,   0.9991) },
                        { label = "P6 Metro 6",      pos = Vector3.new( -2797.1877,    8.0481,  -5598.6606), look = Vector3.new( -0.0052,   0.0000,   1.0000) },
                        { label = "P6 Class 80x 5",  pos = Vector3.new( -2797.1877,    8.0481,  -5598.6606), look = Vector3.new( -0.0050,   0.0000,   1.0000) },
                        { label = "P6 HST 2+4",      pos = Vector3.new( -2797.1877,    8.0481,  -5598.6606), look = Vector3.new( -0.0049,   0.0000,   1.0000) },
                        { label = "P6 2-4",          pos = Vector3.new( -2798.8267,    8.0481,  -5551.4868), look = Vector3.new(  0.0589,  -0.0000,   0.9983) },
                        { label = "P6 Metro 3",      pos = Vector3.new( -2798.8101,    8.0481,  -5511.7100), look = Vector3.new(  0.0351,   0.0000,   0.9994) },
                        { label = "P6 Metro 555/777 4-5", pos = Vector3.new( -2798.8101,    8.0481,  -5511.7100), look = Vector3.new(  0.0351,  -0.0000,   0.9994) },
                        { label = "P5 Metro 3",      pos = Vector3.new( -2833.9143,    8.0481,  -5511.5771), look = Vector3.new(  0.0126,  -0.0000,   0.9999) },
                        { label = "P5 Metro 555/777 4-5", pos = Vector3.new( -2833.9143,    8.0481,  -5511.5771), look = Vector3.new(  0.0126,  -0.0000,   0.9999) },
                        { label = "P5 2-4",          pos = Vector3.new( -2833.7212,    8.0481,  -5551.4365), look = Vector3.new(  0.0081,  -0.0000,   1.0000) },
                        { label = "P5 Metro 6",      pos = Vector3.new( -2833.1606,    8.0481,  -5598.4473), look = Vector3.new(  0.0079,   0.0000,   1.0000) },
                        { label = "P5 Class 80x 5",  pos = Vector3.new( -2833.1606,    8.0481,  -5598.4473), look = Vector3.new(  0.0079,   0.0000,   1.0000) },
                        { label = "P5 HST 2+4",      pos = Vector3.new( -2833.1606,    8.0481,  -5598.4473), look = Vector3.new(  0.0079,   0.0000,   1.0000) },
                        { label = "P5 HST 2+5",      pos = Vector3.new( -2833.1726,    8.0481,  -5628.7612), look = Vector3.new(  0.0263,  -0.0000,   0.9997) },
                        { label = "P5 Metro 555/777 8-10", pos = Vector3.new( -2833.1726,    8.0481,  -5628.7612), look = Vector3.new(  0.0263,   0.0000,   0.9997) },
                        { label = "P5 5-6",          pos = Vector3.new( -2833.6626,    8.0481,  -5663.4609), look = Vector3.new( -0.0409,  -0.0000,   0.9992) },
                        { label = "P5 S",            pos = Vector3.new( -2830.8901,    8.0481,  -5873.9893), look = Vector3.new( -0.0143,   0.0000,   0.9999) },
                        { label = "P5 Class 80x 9-10", pos = Vector3.new( -2830.8901,    8.0481,  -5873.9893), look = Vector3.new( -0.0143,   0.0000,   0.9999) },
                        { label = "P4 S",            pos = Vector3.new( -2843.9165,    8.0481,  -5873.7720), look = Vector3.new( -0.1157,   0.0000,   0.9933) },
                        { label = "P4 Class 80x 9-10", pos = Vector3.new( -2843.9165,    8.0481,  -5873.7720), look = Vector3.new( -0.1157,   0.0000,   0.9933) },
                        { label = "P4 5-6",          pos = Vector3.new( -2856.8298,    8.0481,  -5663.7515), look = Vector3.new(  0.0743,   0.0000,   0.9972) },
                        { label = "P4 HST 2+5",      pos = Vector3.new( -2854.6289,    8.0481,  -5628.4731), look = Vector3.new(  0.1651,  -0.0000,   0.9863) },
                        { label = "P4 Metro 555/777 8-10", pos = Vector3.new( -2854.6289,    8.0481,  -5628.4731), look = Vector3.new(  0.1651,   0.0000,   0.9863) },
                        { label = "P4 Metro 6",      pos = Vector3.new( -2855.6443,    8.0481,  -5598.4224), look = Vector3.new(  0.0155,   0.0000,   0.9999) },
                        { label = "P4 Class 80x 5",  pos = Vector3.new( -2855.6443,    8.0481,  -5598.4224), look = Vector3.new(  0.0155,   0.0000,   0.9999) },
                        { label = "P4 HST 2+4",      pos = Vector3.new( -2855.6443,    8.0481,  -5598.4224), look = Vector3.new(  0.0155,   0.0000,   0.9999) },
                        { label = "P4 2-4",          pos = Vector3.new( -2856.4954,    8.0481,  -5551.1724), look = Vector3.new( -0.0127,   0.0000,   0.9999) },
                        { label = "P4 Metro 3",      pos = Vector3.new( -2856.5771,    8.0481,  -5511.7559), look = Vector3.new( -0.0362,  -0.0000,   0.9993) },
                        { label = "P4 Metro 555/777 4-5", pos = Vector3.new( -2856.5771,    8.0481,  -5511.7559), look = Vector3.new( -0.0362,  -0.0000,   0.9993) },
                        { label = "P2 2-3",          pos = Vector3.new( -2927.3416,    8.0481,  -5510.8984), look = Vector3.new(  0.0692,   0.0000,   0.9976) },
                        { label = "P2 4",            pos = Vector3.new( -2927.7966,    8.0481,  -5583.5459), look = Vector3.new( -0.0134,  -0.0000,   0.9999) },
                        { label = "P2 Class 80x 5",  pos = Vector3.new( -2925.8254,    8.0481,  -5666.2744), look = Vector3.new( -0.0480,  -0.0000,   0.9988) },
                        { label = "P2 S",            pos = Vector3.new( -2912.4697,    8.0481,  -5781.7427), look = Vector3.new( -0.1339,   0.0000,   0.9910) },
                        { label = "P2 Class 80x 9",  pos = Vector3.new( -2912.4697,    8.0481,  -5781.7427), look = Vector3.new( -0.1339,   0.0000,   0.9910) },
                        { label = "P1 2",            pos = Vector3.new( -2960.6909,    8.0481,  -5512.3833), look = Vector3.new(  0.0255,   0.0000,   0.9997) },
                        { label = "P1 3-4",          pos = Vector3.new( -2960.6772,    8.0481,  -5603.2993), look = Vector3.new( -0.0112,  -0.0000,   0.9999) },
                        { label = "P1 S",            pos = Vector3.new( -2951.9841,    8.0481,  -5728.6982), look = Vector3.new( -0.0767,   0.0000,   0.9971) },
                        { label = "P1 Class 80x 5",  pos = Vector3.new( -2951.9841,    8.0481,  -5728.6982), look = Vector3.new( -0.0767,   0.0000,   0.9971) },
                        { label = "P1 Class 80x 9-10", pos = Vector3.new( -2947.1978,    8.0481,  -5750.2119), look = Vector3.new( -0.1052,   0.0000,   0.9944) },
                },
            },
        },

                {
            name = "Newry",

            to = {
                ["Newry Harbour"] = {
                    { label = "P3 2-4",          pos = Vector3.new(-15350.4287,    7.8486,    -99.2847), look = Vector3.new(  0.9985,   0.0000,   0.0540) },
                    { label = "P3 5-8",          pos = Vector3.new(-15427.4619,    7.8486,   -102.6649), look = Vector3.new(  0.9959,   0.0000,   0.0902) },
                    { label = "P3 HST 2+4/5",    pos = Vector3.new(-15427.4619,    7.8486,   -102.6649), look = Vector3.new(  0.9959,   0.0000,   0.0902) },
                    { label = "P3 Class 80x 5",  pos = Vector3.new(-15427.4619,    7.8486,   -102.6649), look = Vector3.new(  0.9959,   0.0000,   0.0902) },
                    { label = "P3 S",            pos = Vector3.new(-15530.8174,    7.8486,   -103.9427), look = Vector3.new(  0.9992,   0.0000,   0.0404) },
                    { label = "P3 Class 80x 9-10", pos = Vector3.new(-15530.8174,    7.8486,   -103.9427), look = Vector3.new(  0.9992,   0.0000,   0.0404) },
                    { label = "P3 HST S",        pos = Vector3.new(-15530.8174,    7.8486,   -103.9427), look = Vector3.new(  0.9992,   0.0000,   0.0404) },
                    { label = "P2 4",            pos = Vector3.new(-15350.5459,    7.8486,   -177.3217), look = Vector3.new(  0.9999,   0.0000,   0.0144) },
                    { label = "P2 5-8",          pos = Vector3.new(-15427.7002,    7.8486,   -173.6328), look = Vector3.new(  0.9995,   0.0000,   0.0329) },
                    { label = "P2 HST 2+4/5",    pos = Vector3.new(-15427.7002,    7.8486,   -173.6328), look = Vector3.new(  0.9995,   0.0000,   0.0329) },
                    { label = "P2 Class 80x 5",  pos = Vector3.new(-15427.7002,    7.8486,   -173.6328), look = Vector3.new(  0.9995,   0.0000,   0.0329) },
                    { label = "P2 S",            pos = Vector3.new(-15530.6914,    7.8486,   -171.5867), look = Vector3.new(  0.9999,  -0.0000,   0.0104) },
                    { label = "P2 HST S",        pos = Vector3.new(-15530.6914,    7.8486,   -171.5867), look = Vector3.new(  0.9999,  -0.0000,   0.0104) },
                    { label = "P2 Class 80x 9-10", pos = Vector3.new(-15530.6914,    7.8486,   -171.5867), look = Vector3.new(  0.9999,  -0.0000,   0.0104) },
                },
                ["Eden Quay"] = {
                    { label = "P2 2-3",          pos = Vector3.new(-15120.4062,    7.8486,   -174.4448), look = Vector3.new( -0.9999,   0.0000,  -0.0147) },
                    { label = "P2 4",            pos = Vector3.new(-15048.8018,    7.8486,   -174.3816), look = Vector3.new( -0.9993,   0.0000,  -0.0384) },
                    { label = "P2 5-6",          pos = Vector3.new(-14959.2754,    7.8486,   -174.5063), look = Vector3.new( -0.9988,   0.0000,  -0.0480) },
                    { label = "P2 HST 2+4",      pos = Vector3.new(-14959.2754,    7.8486,   -174.5063), look = Vector3.new( -0.9988,   0.0000,  -0.0480) },
                    { label = "P2 HST 2+5",      pos = Vector3.new(-14882.8066,    7.8486,   -175.3336), look = Vector3.new( -0.9999,   0.0000,  -0.0135) },
                    { label = "P2 8",            pos = Vector3.new(-14882.8066,    7.8486,   -175.3336), look = Vector3.new( -0.9999,   0.0000,  -0.0135) },
                    { label = "P2 S",            pos = Vector3.new(-14714.5244,    7.8486,   -173.1231), look = Vector3.new( -0.9986,   0.0000,  -0.0526) },
                    { label = "P2 Class 80x 9-10", pos = Vector3.new(-14714.5244,    7.8486,   -173.1231), look = Vector3.new( -0.9986,   0.0000,  -0.0526) },
                    { label = "P2 HST S",        pos = Vector3.new(-14714.5244,    7.8486,   -173.1231), look = Vector3.new( -0.9986,   0.0000,  -0.0526) },
                },
            },
        },

                {
            name = "Eden Quay",

            to = {
                ["Newry"] = {
                    { label = "P2 S",            pos = Vector3.new(-10088.3867,   53.4480,   -123.3219), look = Vector3.new(  1.0000,   0.0000,   0.0014) },
                    { label = "P2 Class 80x ALL", pos = Vector3.new(-10109.9619,   51.0187,   -126.7322), look = Vector3.new(  0.9990,  -0.0000,   0.0439) },
                },
                ["Faraday Road"] = {
                    { label = "P1 Class 80x ALL", pos = Vector3.new( -9769.9014,   53.4480,   -151.8159), look = Vector3.new( -0.9997,   0.0000,  -0.0257) },
                    { label = "P1 S",            pos = Vector3.new( -9769.9014,   53.4480,   -151.8159), look = Vector3.new( -0.9997,   0.0000,  -0.0257) },
                },
            },
        },

                {
            name = "St Helens Bridge",

            to = {
                ["Angel Pass"] = {
                    { label = "P1 Class 80x 5",  pos = Vector3.new(   -95.8999,   28.8480,  12317.8223), look = Vector3.new(  0.0463,  -0.0000,   0.9989) },
                    { label = "P1 4-5",          pos = Vector3.new(   -95.8999,   28.8480,  12317.8223), look = Vector3.new(  0.0463,  -0.0000,   0.9989) },
                    { label = "P1 HST 2+4",      pos = Vector3.new(   -95.8999,   28.8480,  12317.8223), look = Vector3.new(  0.0463,  -0.0000,   0.9989) },
                    { label = "P1 HST 2+5",      pos = Vector3.new(  -100.6894,   28.8480,  12258.1221), look = Vector3.new(  0.0009,   0.0000,   1.0000) },
                    { label = "P1 HST S",        pos = Vector3.new(  -106.4977,   28.8477,  12186.2168), look = Vector3.new(  0.0910,  -0.0002,   0.9959) },
                    { label = "P1 Class 80x 9-10", pos = Vector3.new(  -106.4977,   28.8477,  12186.2168), look = Vector3.new(  0.0910,  -0.0002,   0.9959) },
                    { label = "P3 Class 158 2-3", pos = Vector3.new(   -18.5546,   28.8481,  12387.3594), look = Vector3.new(  0.0968,  -0.0000,   0.9953) },
                    { label = "P3 4-6",          pos = Vector3.new(   -28.2066,   28.8481,  12303.1895), look = Vector3.new(  0.1060,   0.0000,   0.9944) },
                    { label = "P3 Metro 555/777 ALL", pos = Vector3.new(   -28.2066,   28.8481,  12303.1895), look = Vector3.new(  0.1060,   0.0000,   0.9944) },
                    { label = "P3 Metro ALL",    pos = Vector3.new(   -28.2066,   28.8481,  12303.1895), look = Vector3.new(  0.1060,   0.0000,   0.9944) },
                    { label = "P3 S",            pos = Vector3.new(   -34.3747,   28.8481,  12248.2002), look = Vector3.new(  0.0912,   0.0000,   0.9958) },
                    { label = "P4 4-6",          pos = Vector3.new(    -1.9235,   28.8481,  12298.8799), look = Vector3.new(  0.1211,   0.0000,   0.9926) },
                    { label = "P4 Metro 555/777 ALL", pos = Vector3.new(    -1.9235,   28.8481,  12298.8799), look = Vector3.new(  0.1211,   0.0000,   0.9926) },
                    { label = "P4 Metro ALL",    pos = Vector3.new(    -1.9235,   28.8481,  12298.8799), look = Vector3.new(  0.1211,   0.0000,   0.9926) },
                    { label = "P4 S",            pos = Vector3.new(    -7.4854,   28.8481,  12247.5762), look = Vector3.new(  0.1123,   0.0000,   0.9937) },
                    { label = "P6 3-4",          pos = Vector3.new(    85.6695,   28.8480,  12447.7256), look = Vector3.new(  0.1540,  -0.0000,   0.9881) },
                    { label = "P6 5",            pos = Vector3.new(    79.8222,   28.8480,  12384.6016), look = Vector3.new(  0.1674,   0.0000,   0.9859) },
                    { label = "P6 6",            pos = Vector3.new(    79.8222,   28.8480,  12384.6016), look = Vector3.new(  0.1674,   0.0000,   0.9859) },
                    { label = "P6 Class 80x 5",  pos = Vector3.new(    75.5484,   28.8480,  12353.2754), look = Vector3.new(  0.1086,   0.0000,   0.9941) },
                    { label = "P6 8",            pos = Vector3.new(    57.5380,   28.8480,  12208.4131), look = Vector3.new(  0.1450,   0.0000,   0.9894) },
                    { label = "P6 S",            pos = Vector3.new(    44.4785,   28.8465,  12041.4990), look = Vector3.new(  0.0644,  -0.0008,   0.9979) },
                    { label = "P6 Class 80x 9-10", pos = Vector3.new(    44.4785,   28.8465,  12041.4990), look = Vector3.new(  0.0644,  -0.0009,   0.9979) },
                    { label = "P6 Class 745 12", pos = Vector3.new(    44.4785,   28.8465,  12041.4990), look = Vector3.new(  0.0644,  -0.0009,   0.9979) },
                },
                ["Stepford High Street"] = {
                    { label = "P2 4",            pos = Vector3.new(   -47.2444,   28.8480,  12640.8232), look = Vector3.new( -0.0357,  -0.0000,  -0.9994) },
                    { label = "P2 5",            pos = Vector3.new(   -27.6297,   28.8480,  12789.3301), look = Vector3.new( -0.0708,   0.0000,  -0.9975) },
                    { label = "P2 HST 2+4",      pos = Vector3.new(   -27.6297,   28.8480,  12789.3301), look = Vector3.new( -0.0708,   0.0000,  -0.9975) },
                    { label = "P2 Class 80x 5",  pos = Vector3.new(   -27.6297,   28.8480,  12789.3301), look = Vector3.new( -0.0708,   0.0000,  -0.9975) },
                    { label = "P2 HST 2+5",      pos = Vector3.new(   -29.1623,   28.8480,  12848.9717), look = Vector3.new( -0.0096,   0.0000,  -1.0000) },
                    { label = "P2 8",            pos = Vector3.new(   -29.1623,   28.8480,  12848.9717), look = Vector3.new( -0.0096,  -0.0000,  -1.0000) },
                    { label = "P2 S",            pos = Vector3.new(   -18.5037,   28.8469,  13034.5674), look = Vector3.new( -0.0654,  -0.0006,  -0.9979) },
                    { label = "P2 Class 80x 9-10", pos = Vector3.new(   -18.5038,   28.8470,  13034.5674), look = Vector3.new( -0.0648,  -0.0006,  -0.9979) },
                    { label = "P4 S",            pos = Vector3.new(    37.9988,   28.8481,  12834.4307), look = Vector3.new(  0.0006,   0.0000,  -1.0000) },
                    { label = "P4 3-6",          pos = Vector3.new(    35.9013,   28.8481,  12724.9170), look = Vector3.new( -0.0232,   0.0000,  -0.9997) },
                    { label = "P4 Metro 555/777 8-10", pos = Vector3.new(    35.9013,   28.8481,  12724.9170), look = Vector3.new( -0.0232,  -0.0000,  -0.9997) },
                    { label = "P4 T",            pos = Vector3.new(    39.8726,   28.8481,  12701.5273), look = Vector3.new( -0.0005,  -0.0000,  -1.0000) },
                    { label = "P4 Metro ALL",    pos = Vector3.new(    33.5773,   28.8481,  12610.6777), look = Vector3.new( -0.0413,  -0.0000,  -0.9991) },
                    { label = "P4 Class 158 2-3", pos = Vector3.new(    33.5773,   28.8481,  12610.6777), look = Vector3.new( -0.0413,  -0.0000,  -0.9991) },
                    { label = "P4 Metro 555/777 4-5", pos = Vector3.new(    33.5773,   28.8481,  12610.6777), look = Vector3.new( -0.0413,  -0.0000,  -0.9991) },
                    { label = "P5 Class 158 2-3", pos = Vector3.new(    63.3851,   28.8480,  12604.9395), look = Vector3.new( -0.1138,   0.0000,  -0.9935) },
                    { label = "P5 Metro 555/777 4-5", pos = Vector3.new(    63.3851,   28.8480,  12604.9395), look = Vector3.new( -0.1138,   0.0000,  -0.9935) },
                    { label = "P5 Metro ALL",    pos = Vector3.new(    63.3851,   28.8480,  12604.9395), look = Vector3.new( -0.1138,  -0.0000,  -0.9935) },
                    { label = "P5 3-6",          pos = Vector3.new(    65.0728,   28.8480,  12717.1885), look = Vector3.new(  0.0131,   0.0000,  -0.9999) },
                    { label = "P5 Metro 555/777 8-10", pos = Vector3.new(    65.0728,   28.8480,  12717.1885), look = Vector3.new(  0.0131,   0.0000,  -0.9999) },
                    { label = "P5 S",            pos = Vector3.new(    60.8226,   28.8480,  12835.7109), look = Vector3.new(  0.0583,   0.0000,  -0.9983) },
                    { label = "P7 3-4",          pos = Vector3.new(   149.5984,   24.2451,  12662.2432), look = Vector3.new( -0.0122,  -0.0110,  -0.9999) },
                    { label = "P7 5",            pos = Vector3.new(   145.2188,   24.2480,  12753.1699), look = Vector3.new(  0.0619,   0.0000,  -0.9981) },
                    { label = "P7 6",            pos = Vector3.new(   145.2188,   24.2480,  12753.1699), look = Vector3.new(  0.0619,   0.0000,  -0.9981) },
                    { label = "P7 Class 80x 5",  pos = Vector3.new(   142.8843,   24.2480,  12785.5547), look = Vector3.new(  0.1007,   0.0000,  -0.9949) },
                    { label = "P7 8",            pos = Vector3.new(   142.8843,   24.2480,  12785.5547), look = Vector3.new(  0.1007,   0.0000,  -0.9949) },
                    { label = "P7 S",            pos = Vector3.new(   132.5715,   24.2480,  12889.2412), look = Vector3.new(  0.1779,   0.0000,  -0.9841) },
                    { label = "P7 Class 745 12", pos = Vector3.new(   132.5715,   24.2480,  12889.2412), look = Vector3.new(  0.1779,   0.0000,  -0.9841) },
                    { label = "P7 Class 80x 9-10", pos = Vector3.new(   132.5715,   24.2480,  12889.2412), look = Vector3.new(  0.1779,   0.0000,  -0.9841) },
                },
            },
        },

                {
            name = "Elsemere Junction",

            to = {
                ["Berrily"] = {
                    { label = "P3 3-5",          pos = Vector3.new(    17.6963,    8.0477,   3574.7004), look = Vector3.new( -0.0215,   0.0000,   0.9998) },
                    { label = "P3 Class 80x 5",  pos = Vector3.new(    17.6963,    8.0477,   3574.7004), look = Vector3.new( -0.0215,   0.0000,   0.9998) },
                    { label = "P3 S",            pos = Vector3.new(    22.5749,    8.0477,   3359.9822), look = Vector3.new(  0.0039,   0.0000,   1.0000) },
                    { label = "P3 Class 80x 9-10", pos = Vector3.new(    22.5749,    8.0477,   3359.9822), look = Vector3.new(  0.0039,   0.0000,   1.0000) },
                    { label = "P1 Metro 555/777 ALL", pos = Vector3.new(   -18.0944,    8.0477,   3791.1301), look = Vector3.new(  0.0311,   0.0000,   0.9995) },
                    { label = "P1 S",            pos = Vector3.new(   -21.0807,    8.0477,   3807.3865), look = Vector3.new( -0.0867,  -0.0000,   0.9962) },
                    { label = "P1 Metro ALL",    pos = Vector3.new(   -21.0807,    8.0477,   3807.3865), look = Vector3.new( -0.0867,  -0.0000,   0.9962) },
                },
                ["Elsemere Pond"] = {
                    { label = "P4 3-5",          pos = Vector3.new(    62.7837,    8.0477,   4051.7490), look = Vector3.new(  0.0470,   0.0000,  -0.9989) },
                    { label = "P4 Class 80x 5",  pos = Vector3.new(    62.7837,    8.0477,   4051.7490), look = Vector3.new(  0.0470,   0.0000,  -0.9989) },
                    { label = "P4 S",            pos = Vector3.new(    61.5324,    8.0477,   4201.4282), look = Vector3.new(  0.0236,   0.0000,  -0.9997) },
                    { label = "P4 Class 80x 9-10", pos = Vector3.new(    61.5324,    8.0477,   4201.4282), look = Vector3.new(  0.0236,   0.0000,  -0.9997) },
                    { label = "P2 Metro ALL",    pos = Vector3.new(    10.0928,    8.0477,   4081.4048), look = Vector3.new(  0.0256,   0.0000,  -0.9997) },
                    { label = "P2 S",            pos = Vector3.new(     4.9757,    8.0477,   4195.6714), look = Vector3.new(  0.0360,  -0.0000,  -0.9994) },
                    { label = "P2 Metro 555/777 ALL", pos = Vector3.new(     4.9757,    8.0477,   4195.6714), look = Vector3.new(  0.0360,  -0.0000,  -0.9994) },
                },
            },
        },

                {
            name = "Morganstown",

            to = {
                ["Morganstown Docks"] = {
                    { label = "P5 HST 2+4/5",    pos = Vector3.new(    87.0709,    2.9481, -10289.9355), look = Vector3.new(  0.0359,   0.0000,  -0.9994) },
                    { label = "P5 Class 80x 5",  pos = Vector3.new(    87.0709,    2.9481, -10289.9355), look = Vector3.new(  0.0359,   0.0000,  -0.9994) },
                    { label = "P5 2-6",          pos = Vector3.new(    87.0709,    2.9481, -10289.9355), look = Vector3.new(  0.0360,   0.0000,  -0.9994) },
                    { label = "P5 Metro 555/777 4-5", pos = Vector3.new(    87.0709,    2.9481, -10289.9355), look = Vector3.new(  0.0360,   0.0000,  -0.9994) },
                    { label = "P5 HST 2+7",      pos = Vector3.new(    86.6058,    2.9481, -10168.9326), look = Vector3.new(  0.0076,   0.0000,  -1.0000) },
                    { label = "P5 7-9",          pos = Vector3.new(    86.6058,    2.9481, -10168.9326), look = Vector3.new(  0.0076,   0.0000,  -1.0000) },
                    { label = "P5 Metro 555/777 8-10", pos = Vector3.new(    86.6058,    2.9481, -10168.9326), look = Vector3.new(  0.0076,   0.0000,  -1.0000) },
                    { label = "P5 S",            pos = Vector3.new(    87.1760,    2.9481, -10008.2930), look = Vector3.new(  0.0485,  -0.0000,  -0.9988) },
                    { label = "P5 HST S",        pos = Vector3.new(    87.1760,    2.9481, -10008.2930), look = Vector3.new(  0.0485,   0.0000,  -0.9988) },
                    { label = "P5 Class 80x 9-10", pos = Vector3.new(    87.1760,    2.9481, -10008.2930), look = Vector3.new(  0.0485,   0.0000,  -0.9988) },
                    { label = "P3 2-3",          pos = Vector3.new(    43.6580,    8.0481, -10380.2119), look = Vector3.new(  0.0179,   0.0000,  -0.9998) },
                    { label = "P3 Metro 555/777 4-5", pos = Vector3.new(    43.6580,    8.0481, -10380.2119), look = Vector3.new(  0.0179,   0.0000,  -0.9998) },
                    { label = "P3 HST 2+4/5",    pos = Vector3.new(    41.5601,    8.0481, -10164.8730), look = Vector3.new(  0.0548,  -0.0000,  -0.9985) },
                    { label = "P3 Class 80x 5",  pos = Vector3.new(    41.5601,    8.0481, -10164.8730), look = Vector3.new(  0.0548,  -0.0000,  -0.9985) },
                    { label = "P3 4-6",          pos = Vector3.new(    41.5601,    8.0481, -10164.8730), look = Vector3.new(  0.0548,  -0.0000,  -0.9985) },
                    { label = "P3 Metro 555/777 4-5", pos = Vector3.new(    41.5601,    8.0481, -10164.8730), look = Vector3.new(  0.0548,   0.0000,  -0.9985) },
                    { label = "P3 HST 2+7",      pos = Vector3.new(    40.9727,    8.0481, -10038.0127), look = Vector3.new(  0.0302,   0.0000,  -0.9995) },
                    { label = "P3 7-9",          pos = Vector3.new(    40.9727,    8.0481, -10038.0127), look = Vector3.new(  0.0302,   0.0000,  -0.9995) },
                    { label = "P3 S",            pos = Vector3.new(    37.9148,    8.0220,  -9889.7051), look = Vector3.new(  0.0563,   0.0000,  -0.9984) },
                    { label = "P3 Class 80x 9-10", pos = Vector3.new(    37.9148,    8.0220,  -9889.7051), look = Vector3.new(  0.0563,   0.0000,  -0.9984) },
                    { label = "P3 HST S",        pos = Vector3.new(    37.9148,    8.0220,  -9889.7051), look = Vector3.new(  0.0563,   0.0000,  -0.9984) },
                },
                ["Hampton Hargate"] = {
                    { label = "P3 HST ALL",      pos = Vector3.new(    23.6160,    2.9481, -10714.4121), look = Vector3.new( -0.0183,   0.0000,   0.9998) },
                    { label = "P3 Class 80x ALL", pos = Vector3.new(    23.6160,    2.9481, -10714.4121), look = Vector3.new( -0.0183,   0.0000,   0.9998) },
                    { label = "P3 S",            pos = Vector3.new(    23.6160,    2.9481, -10714.4121), look = Vector3.new( -0.0183,   0.0000,   0.9998) },
                    { label = "P3 Metro 555/777 ALL", pos = Vector3.new(    23.6160,    2.9481, -10714.4121), look = Vector3.new( -0.0183,   0.0000,   0.9998) },
                    { label = "P2 S",            pos = Vector3.new(   -12.2341,    8.0481, -10700.8145), look = Vector3.new(  0.0067,   0.0000,   1.0000) },
                    { label = "P2 Class 80x ALL", pos = Vector3.new(   -12.2341,    8.0481, -10700.8145), look = Vector3.new(  0.0067,   0.0000,   1.0000) },
                    { label = "P2 HST ALL",      pos = Vector3.new(   -12.2341,    8.0481, -10700.8145), look = Vector3.new(  0.0067,   0.0000,   1.0000) },
                    { label = "P2 2-5",          pos = Vector3.new(   -17.2259,    8.0481, -10619.4658), look = Vector3.new( -0.0070,   0.0000,   1.0000) },
                },
            },
        },

                {
            name = "Hampton Hargate",

            to = {
                ["Upper Staploe"] = {
                    { label = "P1 2-4",          pos = Vector3.new(   -33.1951,    8.0483, -14790.3457), look = Vector3.new(  0.0180,   0.0000,   0.9998) },
                    { label = "P1 HST 2+4/5",    pos = Vector3.new(   -33.4858,    8.0483, -14866.2773), look = Vector3.new( -0.0031,  -0.0000,   1.0000) },
                    { label = "P1 Class 80x 5",  pos = Vector3.new(   -33.4858,    8.0483, -14866.2773), look = Vector3.new( -0.0031,  -0.0000,   1.0000) },
                    { label = "P1 5-8",          pos = Vector3.new(   -38.0472,    8.0483, -14952.8828), look = Vector3.new(  0.0162,   0.0000,   0.9999) },
                    { label = "P1 S",            pos = Vector3.new(   -35.7946,    8.0483, -15022.7354), look = Vector3.new( -0.0068,   0.0000,   1.0000) },
                    { label = "P1 HST S",        pos = Vector3.new(   -35.7946,    8.0483, -15022.7354), look = Vector3.new( -0.0068,   0.0000,   1.0000) },
                    { label = "P1 Class 80x 9-10", pos = Vector3.new(   -35.7946,    8.0483, -15022.7354), look = Vector3.new( -0.0068,   0.0000,   1.0000) },
                    { label = "P2 2-4",          pos = Vector3.new(    -6.2624,    8.0483, -14790.0225), look = Vector3.new(  0.0585,   0.0000,   0.9983) },
                    { label = "P2 HST 2+4/5",    pos = Vector3.new(    -6.9016,    8.0483, -14867.6543), look = Vector3.new(  0.0315,  -0.0000,   0.9995) },
                    { label = "P2 Class 80x 5",  pos = Vector3.new(    -6.9016,    8.0483, -14867.6543), look = Vector3.new(  0.0315,   0.0000,   0.9995) },
                    { label = "P2 5-8",          pos = Vector3.new(    -4.1636,    8.0483, -14953.8359), look = Vector3.new(  0.0957,   0.0000,   0.9954) },
                    { label = "P2 S",            pos = Vector3.new(    -3.9334,    8.0483, -15022.7920), look = Vector3.new( -0.0303,   0.0000,   0.9995) },
                    { label = "P2 Class 80x 9-10", pos = Vector3.new(    -3.9334,    8.0483, -15022.7920), look = Vector3.new( -0.0303,   0.0000,   0.9995) },
                    { label = "P2 HST S",        pos = Vector3.new(    -3.9334,    8.0483, -15022.7920), look = Vector3.new( -0.0303,   0.0000,   0.9995) },
                    { label = "P3 HST S",        pos = Vector3.new(    16.6531,    8.0476, -15022.7119), look = Vector3.new( -0.0423,   0.0000,   0.9991) },
                    { label = "P3 Class 80x 9-10", pos = Vector3.new(    16.6531,    8.0476, -15022.7119), look = Vector3.new( -0.0423,   0.0000,   0.9991) },
                    { label = "P3 S",            pos = Vector3.new(    16.6531,    8.0476, -15022.7119), look = Vector3.new( -0.0423,   0.0000,   0.9991) },
                    { label = "P3 5-8",          pos = Vector3.new(    17.8006,    8.0476, -14953.8389), look = Vector3.new( -0.0213,   0.0000,   0.9998) },
                    { label = "P3 HST 2+4/5",    pos = Vector3.new(    21.1532,    8.0478, -14868.2422), look = Vector3.new(  0.0003,   0.0000,   1.0000) },
                    { label = "P3 Class 80x 5",  pos = Vector3.new(    21.1532,    8.0478, -14868.2422), look = Vector3.new(  0.0003,  -0.0000,   1.0000) },
                    { label = "P3 2-4",          pos = Vector3.new(    20.6415,    8.0478, -14790.4336), look = Vector3.new( -0.0667,   0.0000,   0.9978) },
                    { label = "P4 2-4",          pos = Vector3.new(    47.7302,    8.0477, -14790.1924), look = Vector3.new(  0.0199,  -0.0000,   0.9998) },
                    { label = "P4 HST 2+4/5",    pos = Vector3.new(    48.0152,    8.0477, -14871.1172), look = Vector3.new(  0.0427,  -0.0000,   0.9991) },
                    { label = "P4 Class 80x 5",  pos = Vector3.new(    48.0152,    8.0477, -14871.1172), look = Vector3.new(  0.0427,  -0.0000,   0.9991) },
                    { label = "P4 5-8",          pos = Vector3.new(    49.2321,    8.0477, -14953.9551), look = Vector3.new(  0.0199,   0.0000,   0.9998) },
                    { label = "P4 S",            pos = Vector3.new(    45.4004,    8.0477, -15022.6445), look = Vector3.new(  0.0154,   0.0000,   0.9999) },
                    { label = "P4 HST S",        pos = Vector3.new(    45.4004,    8.0477, -15022.6445), look = Vector3.new(  0.0154,   0.0000,   0.9999) },
                    { label = "P4 Class 80x 9-10", pos = Vector3.new(    45.4004,    8.0477, -15022.6445), look = Vector3.new(  0.0154,   0.0000,   0.9999) },
                },
                ["Morganstown"] = {
                    { label = "P2 2-4",          pos = Vector3.new(    -1.6095,    8.0483, -14497.7676), look = Vector3.new(  0.0181,   0.0000,  -0.9998) },
                    { label = "P2 HST 2+4",      pos = Vector3.new(    -1.5226,    8.0483, -14464.7627), look = Vector3.new(  0.0272,  -0.0000,  -0.9996) },
                    { label = "P2 Class 80x 5",  pos = Vector3.new(    -1.5226,    8.0483, -14464.7627), look = Vector3.new(  0.0272,  -0.0000,  -0.9996) },
                    { label = "P2 HST 2+5",      pos = Vector3.new(     5.8171,    8.0482, -14377.9736), look = Vector3.new(  0.1238,   0.0000,  -0.9923) },
                    { label = "P2 5-8",          pos = Vector3.new(     4.0389,    8.0483, -14360.6846), look = Vector3.new(  0.0135,   0.0000,  -0.9999) },
                    { label = "P2 S",            pos = Vector3.new(     3.2069,    8.0483, -14325.7402), look = Vector3.new( -0.0241,   0.0000,  -0.9997) },
                    { label = "P2 Class 80x 9-10", pos = Vector3.new(     3.2069,    8.0483, -14325.7402), look = Vector3.new( -0.0241,   0.0000,  -0.9997) },
                    { label = "P2 HST S",        pos = Vector3.new(     3.2069,    8.0483, -14325.7402), look = Vector3.new( -0.0241,   0.0000,  -0.9997) },
                    { label = "P4 2-4",          pos = Vector3.new(    48.2168,    8.0477, -14497.5918), look = Vector3.new(  0.0132,   0.0000,  -0.9999) },
                    { label = "P4 HST 2+4",      pos = Vector3.new(    47.8240,    8.0477, -14465.1201), look = Vector3.new( -0.0366,   0.0000,  -0.9993) },
                    { label = "P4 HST 2+5",      pos = Vector3.new(    50.2035,    8.0477, -14377.9619), look = Vector3.new(  0.0635,   0.0000,  -0.9980) },
                    { label = "P4 5+8",          pos = Vector3.new(    49.0489,    8.0477, -14360.6650), look = Vector3.new(  0.0743,   0.0000,  -0.9972) },
                    { label = "P4 S",            pos = Vector3.new(    48.6114,    8.0477, -14325.6758), look = Vector3.new( -0.0228,   0.0000,  -0.9997) },
                    { label = "P4 Class 80x 9-10", pos = Vector3.new(    48.6114,    8.0477, -14325.6758), look = Vector3.new( -0.0228,   0.0000,  -0.9997) },
                    { label = "P4 HST S",        pos = Vector3.new(    48.6114,    8.0477, -14325.6758), look = Vector3.new( -0.0228,   0.0000,  -0.9997) },
                },
            },
        },

                {
            name = "Leighton Stepford Road",

            to = {
                ["Leighton City"] = {
                    { label = "P2 2-4",          pos = Vector3.new(   235.9213,    8.0481, -36302.8320), look = Vector3.new(  0.0152,  -0.0000,   0.9999) },
                    { label = "P2 Class 80x 5",  pos = Vector3.new(   235.9213,    8.0481, -36302.8320), look = Vector3.new(  0.0152,  -0.0000,   0.9999) },
                    { label = "P2 S",            pos = Vector3.new(   237.9834,    8.0481, -36424.0430), look = Vector3.new(  0.0198,   0.0000,   0.9998) },
                    { label = "P2 Class 80x 9-10", pos = Vector3.new(   237.9834,    8.0481, -36424.0430), look = Vector3.new(  0.0198,   0.0000,   0.9998) },
                    { label = "P3 Class 80x 5",  pos = Vector3.new(   267.4877,    8.0481, -36302.9336), look = Vector3.new(  0.0154,   0.0000,   0.9999) },
                    { label = "P3 2-4",          pos = Vector3.new(   267.4877,    8.0481, -36302.9336), look = Vector3.new(  0.0154,   0.0000,   0.9999) },
                    { label = "P3 S",            pos = Vector3.new(   267.1925,    8.0481, -36423.8398), look = Vector3.new(  0.0469,  -0.0000,   0.9989) },
                    { label = "P3 Class 80x 9-10", pos = Vector3.new(   267.1925,    8.0481, -36423.8398), look = Vector3.new(  0.0469,  -0.0000,   0.9989) },
                },
                ["Rocked Parade"] = {
                    { label = "P4 2-4",          pos = Vector3.new(   287.1351,    8.0481, -35993.5508), look = Vector3.new( -0.0589,  -0.0000,  -0.9983) },
                    { label = "P4 5-6",          pos = Vector3.new(   287.7124,    8.0481, -35863.2539), look = Vector3.new(  0.0448,  -0.0000,  -0.9990) },
                    { label = "P4 Class 80x 5",  pos = Vector3.new(   287.7124,    8.0481, -35863.2539), look = Vector3.new(  0.0448,  -0.0000,  -0.9990) },
                    { label = "P4 S",            pos = Vector3.new(   275.9358,    7.9281, -35565.8320), look = Vector3.new(  0.1620,   0.0000,  -0.9868) },
                    { label = "P4 Class 80x 9-10", pos = Vector3.new(   275.9358,    7.9281, -35565.8320), look = Vector3.new(  0.1620,   0.0000,  -0.9868) },
                    { label = "P5 2-4",          pos = Vector3.new(   322.9741,    8.0481, -35992.9805), look = Vector3.new(  0.0223,  -0.0000,  -0.9998) },
                    { label = "P5 5-6",          pos = Vector3.new(   319.9297,    8.0481, -35862.9961), look = Vector3.new(  0.0450,  -0.0000,  -0.9990) },
                    { label = "P5 Class 80x 5",  pos = Vector3.new(   319.9297,    8.0481, -35862.9961), look = Vector3.new(  0.0450,  -0.0000,  -0.9990) },
                    { label = "P5 8",            pos = Vector3.new(   322.9579,    8.0481, -35795.1719), look = Vector3.new(  0.0179,   0.0000,  -0.9998) },
                    { label = "P5 S",            pos = Vector3.new(   302.7140,    8.0481, -35570.5508), look = Vector3.new(  0.1725,   0.0000,  -0.9850) },
                    { label = "P5 Class 80x 9-10", pos = Vector3.new(   302.7140,    8.0481, -35570.5508), look = Vector3.new(  0.1725,   0.0000,  -0.9850) },
                },
            },
        },

                {
            name = "Leighton City",

            to = {
                ["Leighton Stepford Road"] = {
                    { label = "P3 2-3",          pos = Vector3.new(  2157.2861,    8.0481, -37580.0508), look = Vector3.new(  0.9997,   0.0000,   0.0263) },
                    { label = "P3 4",            pos = Vector3.new(  2124.7173,    8.0481, -37580.4219), look = Vector3.new(  0.9980,   0.0000,   0.0626) },
                    { label = "P3 Class 80x 5",  pos = Vector3.new(  2022.7051,    8.0481, -37576.7227), look = Vector3.new(  0.9984,   0.0000,   0.0562) },
                    { label = "P3 5-8",          pos = Vector3.new(  2022.7051,    8.0481, -37576.7227), look = Vector3.new(  0.9984,   0.0000,   0.0562) },
                    { label = "P3 HST 2+4",      pos = Vector3.new(  2022.7051,    8.0481, -37576.7227), look = Vector3.new(  0.9984,  -0.0000,   0.0562) },
                    { label = "P3 HST 2+5",      pos = Vector3.new(  1925.0017,    8.0481, -37579.3438), look = Vector3.new(  0.9994,   0.0000,   0.0353) },
                    { label = "P3 HST S",        pos = Vector3.new(  1763.5530,    8.0481, -37582.7656), look = Vector3.new(  1.0000,  -0.0000,   0.0078) },
                    { label = "P3 S",            pos = Vector3.new(  1763.5530,    8.0481, -37582.7656), look = Vector3.new(  1.0000,  -0.0000,   0.0078) },
                    { label = "P3 Class 80x 9-10", pos = Vector3.new(  1763.5530,    8.0481, -37582.7656), look = Vector3.new(  1.0000,  -0.0000,   0.0078) },
                    { label = "P4 Class 80x 9-10", pos = Vector3.new(  1763.5536,    8.0481, -37569.5039), look = Vector3.new(  0.9987,   0.0000,   0.0507) },
                    { label = "P4 S",            pos = Vector3.new(  1763.5536,    8.0481, -37569.5039), look = Vector3.new(  0.9987,   0.0000,   0.0507) },
                    { label = "P4 HST S",        pos = Vector3.new(  1763.5536,    8.0481, -37569.5039), look = Vector3.new(  0.9987,   0.0000,   0.0507) },
                    { label = "P4 HST 2+5",      pos = Vector3.new(  1924.9745,    8.0481, -37565.3477), look = Vector3.new(  1.0000,  -0.0000,   0.0000) },
                    { label = "P4 HST 2+4",      pos = Vector3.new(  2022.6913,    8.0481, -37567.5352), look = Vector3.new(  1.0000,   0.0000,   0.0100) },
                    { label = "P4 5-8",          pos = Vector3.new(  2022.6913,    8.0481, -37567.5352), look = Vector3.new(  1.0000,   0.0000,   0.0100) },
                    { label = "P4 Class 80x 5",  pos = Vector3.new(  2022.6913,    8.0481, -37567.5352), look = Vector3.new(  1.0000,   0.0000,   0.0100) },
                    { label = "P4 4",            pos = Vector3.new(  2125.0613,    8.0481, -37564.1172), look = Vector3.new(  0.9987,   0.0000,  -0.0503) },
                    { label = "P4 2-3",          pos = Vector3.new(  2157.2666,    8.0481, -37564.2344), look = Vector3.new(  0.9997,   0.0000,  -0.0253) },
                    { label = "P5 2-3",          pos = Vector3.new(  2225.5820,    8.0481, -37510.6523), look = Vector3.new(  0.9999,  -0.0000,  -0.0126) },
                    { label = "P5 4",            pos = Vector3.new(  2124.7139,    8.0481, -37510.3281), look = Vector3.new(  0.9985,   0.0000,   0.0552) },
                    { label = "P5 5-8",          pos = Vector3.new(  2022.9091,    8.0481, -37506.9219), look = Vector3.new(  0.9979,   0.0000,  -0.0643) },
                    { label = "P5 Class 80x 5",  pos = Vector3.new(  2022.9091,    8.0481, -37506.9219), look = Vector3.new(  0.9979,   0.0000,  -0.0643) },
                    { label = "P5 HST 2+4",      pos = Vector3.new(  2022.9091,    8.0481, -37506.9219), look = Vector3.new(  0.9979,  -0.0000,  -0.0643) },
                    { label = "P5 HST 2+5",      pos = Vector3.new(  1925.0403,    8.0481, -37509.9648), look = Vector3.new(  0.9966,   0.0000,   0.0827) },
                    { label = "P5 HST S",        pos = Vector3.new(  1763.6182,    8.0481, -37518.9688), look = Vector3.new(  0.9947,   0.0000,   0.1030) },
                    { label = "P5 Class 80x 9-10", pos = Vector3.new(  1763.6182,    8.0481, -37518.9688), look = Vector3.new(  0.9947,   0.0000,   0.1030) },
                    { label = "P5 S",            pos = Vector3.new(  1763.6182,    8.0481, -37518.9688), look = Vector3.new(  0.9947,   0.0000,   0.1030) },
                    { label = "P6 S",            pos = Vector3.new(  1763.5881,    8.0481, -37505.5312), look = Vector3.new(  0.9945,  -0.0000,   0.1049) },
                    { label = "P6 Class 80x 9-10", pos = Vector3.new(  1763.5881,    8.0481, -37505.5312), look = Vector3.new(  0.9945,  -0.0000,   0.1049) },
                    { label = "P6 HST S",        pos = Vector3.new(  1763.5881,    8.0481, -37505.5312), look = Vector3.new(  0.9945,   0.0000,   0.1049) },
                    { label = "P6 HST 2+5",      pos = Vector3.new(  1925.3676,    8.0481, -37495.6484), look = Vector3.new(  1.0000,   0.0000,  -0.0087) },
                    { label = "P6 HST 2+4",      pos = Vector3.new(  2022.9435,    8.0481, -37496.9102), look = Vector3.new(  0.9996,  -0.0000,   0.0274) },
                    { label = "P6 5-8",          pos = Vector3.new(  2022.9435,    8.0481, -37496.9102), look = Vector3.new(  0.9996,  -0.0000,   0.0274) },
                    { label = "P6 Class 80x 5",  pos = Vector3.new(  2022.9435,    8.0481, -37496.9102), look = Vector3.new(  0.9996,   0.0000,   0.0274) },
                    { label = "P6 4",            pos = Vector3.new(  2124.9006,    8.0481, -37493.7969), look = Vector3.new(  1.0000,   0.0000,   0.0058) },
                    { label = "P6 2-3",          pos = Vector3.new(  2225.6438,    8.0481, -37494.9023), look = Vector3.new(  1.0000,   0.0000,   0.0063) },
                },
            },

            sets = {
                {
                    next = { "Leighton West", "Edgemead" },
                    markers = {
                        { label = "P1 2-4",          pos = Vector3.new(  2387.6655,    8.0481, -37629.1641), look = Vector3.new( -0.9998,  -0.0000,   0.0199) },
                        { label = "P1 5-6",          pos = Vector3.new(  2487.8538,    8.0478, -37629.6367), look = Vector3.new( -0.9995,  -0.0002,  -0.0313) },
                        { label = "P1 Class 80x 5",  pos = Vector3.new(  2487.8538,    8.0478, -37629.6367), look = Vector3.new( -0.9995,  -0.0002,  -0.0313) },
                        { label = "P1 HST 2+4/5",    pos = Vector3.new(  2487.8538,    8.0478, -37629.6367), look = Vector3.new( -0.9995,  -0.0002,  -0.0313) },
                        { label = "P1 S",            pos = Vector3.new(  2584.0708,    8.0481, -37624.2617), look = Vector3.new( -0.9974,   0.0000,  -0.0718) },
                        { label = "P1 Class 80x 9-10", pos = Vector3.new(  2584.0708,    8.0481, -37624.2617), look = Vector3.new( -0.9974,   0.0000,  -0.0718) },
                        { label = "P1 HST S",        pos = Vector3.new(  2584.0708,    8.0481, -37624.2617), look = Vector3.new( -0.9974,   0.0000,  -0.0718) },
                        { label = "P2 2-4",          pos = Vector3.new(  2387.7134,    8.0481, -37612.1719), look = Vector3.new( -1.0000,   0.0000,  -0.0082) },
                        { label = "P2 Class 80x 5",  pos = Vector3.new(  2487.8970,    8.0481, -37611.3438), look = Vector3.new( -0.9988,   0.0000,  -0.0492) },
                        { label = "P2 5-6",          pos = Vector3.new(  2487.8970,    8.0481, -37611.3438), look = Vector3.new( -0.9988,   0.0000,  -0.0492) },
                        { label = "P2 HST 2+4/5",    pos = Vector3.new(  2487.8970,    8.0481, -37611.3438), look = Vector3.new( -0.9988,   0.0000,  -0.0492) },
                        { label = "P2 S",            pos = Vector3.new(  2584.0908,    8.0481, -37611.1016), look = Vector3.new( -1.0000,  -0.0000,   0.0082) },
                        { label = "P2 Class 80x 9-10", pos = Vector3.new(  2584.0908,    8.0481, -37611.1016), look = Vector3.new( -1.0000,   0.0000,   0.0082) },
                        { label = "P2 HST S",        pos = Vector3.new(  2584.0908,    8.0481, -37611.1016), look = Vector3.new( -1.0000,   0.0000,   0.0082) },
                        { label = "P3 2-4",          pos = Vector3.new(  2387.6606,    8.0481, -37580.7148), look = Vector3.new( -0.9987,   0.0000,   0.0502) },
                        { label = "P3 Class 80x 5",  pos = Vector3.new(  2487.8784,    8.0461, -37581.1992), look = Vector3.new( -0.9997,  -0.0011,  -0.0239) },
                        { label = "P3 5-6",          pos = Vector3.new(  2487.8784,    8.0461, -37581.1992), look = Vector3.new( -0.9997,  -0.0011,  -0.0239) },
                        { label = "P3 HST 2+4/5",    pos = Vector3.new(  2487.8784,    8.0461, -37581.1992), look = Vector3.new( -0.9997,  -0.0011,  -0.0239) },
                        { label = "P3 S",            pos = Vector3.new(  2584.1611,    8.0481, -37581.0977), look = Vector3.new( -0.9997,   0.0000,  -0.0246) },
                        { label = "P3 Class 80x 9-10", pos = Vector3.new(  2584.1611,    8.0481, -37581.0977), look = Vector3.new( -0.9997,   0.0000,  -0.0246) },
                        { label = "P3 HST S",        pos = Vector3.new(  2584.1611,    8.0481, -37581.0977), look = Vector3.new( -0.9997,   0.0000,  -0.0246) },
                        { label = "P4 2-4",          pos = Vector3.new(  2387.7820,    8.0481, -37563.3633), look = Vector3.new( -0.9997,   0.0000,  -0.0243) },
                        { label = "P4 Class 80x 5",  pos = Vector3.new(  2487.9399,    8.0392, -37563.3320), look = Vector3.new( -0.9985,  -0.0051,   0.0542) },
                        { label = "P4 5-6",          pos = Vector3.new(  2487.9399,    8.0395, -37563.3320), look = Vector3.new( -0.9985,  -0.0051,   0.0544) },
                        { label = "P4 HST 2+4/5",    pos = Vector3.new(  2487.9399,    8.0398, -37563.3320), look = Vector3.new( -0.9985,  -0.0050,   0.0547) },
                        { label = "P4 S",            pos = Vector3.new(  2584.1133,    8.0481, -37568.0703), look = Vector3.new( -0.9997,   0.0000,   0.0239) },
                        { label = "P4 Class 80x 9-10", pos = Vector3.new(  2584.1133,    8.0481, -37568.0703), look = Vector3.new( -0.9997,   0.0000,   0.0239) },
                        { label = "P4 HST S",        pos = Vector3.new(  2584.1133,    8.0481, -37568.0703), look = Vector3.new( -0.9997,   0.0000,   0.0239) },
                    },
                },
            },
        },
                {
            name = "Edgemead",

            sets = {
                {
                    next = { "Leighton City", "Leighton West" },
                    markers = {
                        { label = "P3 2-6",          pos = Vector3.new( 11040.3887,    8.0481, -37582.8047), look = Vector3.new(  0.9972,   0.0000,   0.0742) },
                        { label = "P3 Class 80x 5",  pos = Vector3.new( 11040.3887,    8.0481, -37582.8047), look = Vector3.new(  0.9972,   0.0000,   0.0742) },
                        { label = "P3 HST 2+4",      pos = Vector3.new( 11040.3887,    8.0481, -37582.8047), look = Vector3.new(  0.9972,   0.0000,   0.0742) },
                        { label = "P3 S",            pos = Vector3.new( 10832.3750,    8.0481, -37582.4336), look = Vector3.new(  0.9974,  -0.0000,   0.0727) },
                        { label = "P3 HST S",        pos = Vector3.new( 10832.3750,    8.0481, -37582.4336), look = Vector3.new(  0.9974,  -0.0000,   0.0727) },
                        { label = "P3 Class 80x 9-10", pos = Vector3.new( 10832.3750,    8.0481, -37582.4336), look = Vector3.new(  0.9974,   0.0000,   0.0727) },
                        { label = "P1 2-6",          pos = Vector3.new( 11050.9346,    8.0481, -37621.3906), look = Vector3.new(  0.9995,   0.0000,   0.0326) },
                        { label = "P1 Class 80x 5",  pos = Vector3.new( 11050.9346,    8.0481, -37621.3906), look = Vector3.new(  0.9995,  -0.0000,   0.0326) },
                        { label = "P1 HST 2+5",      pos = Vector3.new( 11050.9346,    8.0481, -37621.3906), look = Vector3.new(  0.9995,   0.0000,   0.0326) },
                        { label = "P1 S",            pos = Vector3.new( 10814.1621,    8.0481, -37626.8516), look = Vector3.new(  0.9994,   0.0000,   0.0349) },
                        { label = "P1 Class 80x 9-10", pos = Vector3.new( 10814.1621,    8.0481, -37626.8516), look = Vector3.new(  0.9994,   0.0000,   0.0349) },
                        { label = "P1 HST S",        pos = Vector3.new( 10814.1621,    8.0481, -37626.8516), look = Vector3.new(  0.9994,   0.0000,   0.0349) },
                    },
                },
                {
                    next = { "Faymere", "Rayleigh Bay" },
                    markers = {
                        { label = "P2 2-3",          pos = Vector3.new( 11318.5869,    8.0481, -37611.3672), look = Vector3.new( -0.9989,   0.0000,  -0.0473) },
                        { label = "P2 4-6",          pos = Vector3.new( 11461.5430,    8.0481, -37611.2305), look = Vector3.new( -0.9992,   0.0000,  -0.0404) },
                        { label = "P2 Class 80x 5",  pos = Vector3.new( 11461.5430,    8.0481, -37611.2305), look = Vector3.new( -0.9992,   0.0000,  -0.0404) },
                        { label = "P2 HST 2+4",      pos = Vector3.new( 11461.5430,    8.0481, -37611.2305), look = Vector3.new( -0.9992,   0.0000,  -0.0404) },
                        { label = "P2 S",            pos = Vector3.new( 11690.1846,    8.0402, -37609.6914), look = Vector3.new( -0.9986,   0.0000,  -0.0538) },
                        { label = "P2 Class 80x 9-10", pos = Vector3.new( 11690.1846,    8.0402, -37609.6914), look = Vector3.new( -0.9986,   0.0000,  -0.0538) },
                        { label = "P2 HST S",        pos = Vector3.new( 11690.1846,    8.0402, -37609.6914), look = Vector3.new( -0.9986,   0.0000,  -0.0538) },
                        { label = "P1 2-3",          pos = Vector3.new( 11319.9980,    3.6481, -37642.1602), look = Vector3.new( -0.9994,   0.0000,  -0.0360) },
                        { label = "P1 4-6",          pos = Vector3.new( 11461.9258,    3.6481, -37641.7109), look = Vector3.new( -0.9985,  -0.0000,  -0.0543) },
                        { label = "P1 Class 80x 5",  pos = Vector3.new( 11461.9258,    3.6481, -37641.7109), look = Vector3.new( -0.9985,  -0.0000,  -0.0543) },
                        { label = "P1 HST 2+5",      pos = Vector3.new( 11461.9258,    3.6481, -37641.7109), look = Vector3.new( -0.9985,  -0.0000,  -0.0543) },
                        { label = "P1 S",            pos = Vector3.new( 11690.1094,    8.0423, -37627.6328), look = Vector3.new( -0.9998,   0.0000,   0.0192) },
                        { label = "P1 Class 80x 9-10", pos = Vector3.new( 11690.1094,    8.0423, -37627.6328), look = Vector3.new( -0.9998,   0.0000,   0.0192) },
                        { label = "P1 HST S",        pos = Vector3.new( 11690.1094,    8.0423, -37627.6328), look = Vector3.new( -0.9998,   0.0000,   0.0192) },
                    },
                },
            },
        },
        {
            name = "Westercoast",

            to = {
                ["Faymere"] = {
                    { label = "P2 S",            pos = Vector3.new( 22418.7188,    8.0481, -37745.7109), look = Vector3.new(  0.9918,   0.0000,   0.1276) },
                    { label = "P2 Class 80x ALL", pos = Vector3.new( 22418.7188,    8.0481, -37745.7109), look = Vector3.new(  0.9918,   0.0000,   0.1276) },
                },
                ["Millcastle Racecourse"] = {
                    { label = "P1 3",            pos = Vector3.new( 22768.9258,    8.0482, -37736.8359), look = Vector3.new( -0.9739,  -0.0000,  -0.2269) },
                    { label = "P1 4-5",          pos = Vector3.new( 22835.0605,    8.0482, -37718.6406), look = Vector3.new( -0.9641,   0.0000,  -0.2654) },
                    { label = "P1 6",            pos = Vector3.new( 22919.5859,    8.0482, -37697.8008), look = Vector3.new( -0.9806,   0.0000,  -0.1961) },
                    { label = "P1 Class 80x 5",  pos = Vector3.new( 22919.5859,    8.0482, -37697.8008), look = Vector3.new( -0.9806,   0.0000,  -0.1961) },
                    { label = "P1 HST 2+4",      pos = Vector3.new( 22952.5625,    8.0482, -37691.8164), look = Vector3.new( -0.9477,   0.0000,  -0.3191) },
                    { label = "P1 S",            pos = Vector3.new( 23067.6738,    8.0481, -37663.5117), look = Vector3.new( -0.9440,   0.0000,  -0.3298) },
                    { label = "P1 Class 80x 9-10", pos = Vector3.new( 23067.6738,    8.0481, -37663.5117), look = Vector3.new( -0.9440,   0.0000,  -0.3298) },
                    { label = "P1 HST 2+5",      pos = Vector3.new( 23067.6738,    8.0481, -37663.5117), look = Vector3.new( -0.9440,   0.0000,  -0.3298) },
                },
            },
        },

                {
            name = "Westwyvern",

            to = {
                ["Northshore"] = {
                    { label = "P1 2-6",          pos = Vector3.new( 41654.3047,    8.0479, -36806.6367), look = Vector3.new( -0.9986,   0.0000,  -0.0528) },
                    { label = "P1 HST 2+4",      pos = Vector3.new( 41654.3047,    8.0479, -36806.6367), look = Vector3.new( -0.9988,   0.0000,  -0.0496) },
                    { label = "P1 HST 2+5",      pos = Vector3.new( 41654.3047,    8.0479, -36806.6367), look = Vector3.new( -0.9988,   0.0000,  -0.0495) },
                    { label = "P1 Class 80x 5",  pos = Vector3.new( 41654.3047,    8.0479, -36806.6367), look = Vector3.new( -0.9988,   0.0000,  -0.0494) },
                    { label = "P1 S",            pos = Vector3.new( 41868.4805,    8.0479, -36803.8438), look = Vector3.new( -1.0000,   0.0000,   0.0000) },
                    { label = "P1 Class 80x 9-10", pos = Vector3.new( 41868.4805,    8.0479, -36803.8438), look = Vector3.new( -1.0000,   0.0000,   0.0000) },
                    { label = "P1 HST S",        pos = Vector3.new( 41868.4805,    8.0479, -36803.8438), look = Vector3.new( -1.0000,   0.0000,   0.0000) },
                    { label = "P4 2-4",          pos = Vector3.new( 41686.9375,    8.0479, -36732.9805), look = Vector3.new( -0.9998,   0.0000,   0.0176) },
                    { label = "P4 5-8",          pos = Vector3.new( 41881.0977,    8.0479, -36749.1133), look = Vector3.new( -0.9921,   0.0000,   0.1251) },
                    { label = "P4 HST 2+4",      pos = Vector3.new( 41881.0977,    8.0479, -36749.1133), look = Vector3.new( -0.9921,   0.0000,   0.1251) },
                    { label = "P4 Class 80x 5",  pos = Vector3.new( 41881.0977,    8.0479, -36749.1133), look = Vector3.new( -0.9921,   0.0000,   0.1251) },
                    { label = "P4 S",            pos = Vector3.new( 42094.4219,    8.0479, -36775.0703), look = Vector3.new( -0.9912,   0.0000,   0.1322) },
                    { label = "P4 HST S",        pos = Vector3.new( 42094.4219,    8.0479, -36775.0703), look = Vector3.new( -0.9912,   0.0000,   0.1322) },
                    { label = "P4 Class 80x 9-10", pos = Vector3.new( 42094.4219,    8.0479, -36775.0703), look = Vector3.new( -0.9912,   0.0000,   0.1322) },
                },
                ["Millcastle"] = {
                    { label = "P2 4-5",          pos = Vector3.new( 41361.6445,    8.0479, -36778.0352), look = Vector3.new(  0.9998,   0.0000,   0.0182) },
                    { label = "P2 Class 80x 5",  pos = Vector3.new( 41361.6445,    8.0479, -36778.0352), look = Vector3.new(  0.9998,  -0.0000,   0.0182) },
                    { label = "P2 6-8",          pos = Vector3.new( 41239.8359,    8.0479, -36777.7109), look = Vector3.new(  0.9973,   0.0000,   0.0735) },
                    { label = "P2 HST 2+5",      pos = Vector3.new( 41239.8359,    8.0479, -36777.7109), look = Vector3.new(  0.9973,   0.0000,   0.0735) },
                    { label = "P2 HST S",        pos = Vector3.new( 41014.9258,    8.0479, -36777.9297), look = Vector3.new(  0.9994,  -0.0000,   0.0333) },
                    { label = "P2 S",            pos = Vector3.new( 41014.9258,    8.0479, -36777.9297), look = Vector3.new(  0.9994,  -0.0000,   0.0333) },
                    { label = "P2 Class 80x 9-10", pos = Vector3.new( 41014.9258,    8.0479, -36777.9297), look = Vector3.new(  0.9994,  -0.0000,   0.0333) },
                    { label = "P4 S",            pos = Vector3.new( 41254.5703,    8.0479, -36727.8359), look = Vector3.new(  0.9993,   0.0000,  -0.0377) },
                    { label = "P4 HST S",        pos = Vector3.new( 41254.5703,    8.0479, -36727.8359), look = Vector3.new(  0.9993,   0.0000,  -0.0377) },
                    { label = "P4 Class 80x 9-10", pos = Vector3.new( 41254.5703,    8.0479, -36727.8359), look = Vector3.new(  0.9993,   0.0000,  -0.0377) },
                    { label = "P4 2-6",          pos = Vector3.new( 41452.8711,    8.0479, -36727.6914), look = Vector3.new(  0.9998,   0.0000,  -0.0185) },
                    { label = "P4 Class 80x 5",  pos = Vector3.new( 41452.8711,    8.0479, -36727.6914), look = Vector3.new(  0.9998,   0.0000,  -0.0185) },
                    { label = "P4 HST 2+4",      pos = Vector3.new( 41452.8711,    8.0479, -36727.6914), look = Vector3.new(  0.9998,   0.0000,  -0.0185) },
                },
            },
        },

                {
            name = "Northshore",

            to = {
                ["Llyn-by-the-Sea"] = {
                    { label = "P0 2-4",          pos = Vector3.new( 45489.9922,    8.0485, -25802.5918), look = Vector3.new( -0.0000,  -0.0000,  -1.0000) },
                    { label = "P0 S",            pos = Vector3.new( 45486.5156,    8.0485, -25668.5449), look = Vector3.new(  0.1744,   0.0000,  -0.9847) },
                    { label = "P1 2-6",          pos = Vector3.new( 45443.1211,    8.0245, -25781.8262), look = Vector3.new( -0.0092,  -0.0039,  -1.0000) },
                    { label = "P1 HST 2+5",      pos = Vector3.new( 45443.1211,    8.0258, -25781.8262), look = Vector3.new( -0.0092,  -0.0042,  -0.9999) },
                    { label = "P1 Class 80x 5",  pos = Vector3.new( 45443.1211,    8.0264, -25781.8262), look = Vector3.new( -0.0092,  -0.0042,  -0.9999) },
                    { label = "P1 Class 80x 9-10", pos = Vector3.new( 45440.6172,    2.9490, -25554.3691), look = Vector3.new(  0.2441,   0.0000,  -0.9697) },
                    { label = "P1 S",            pos = Vector3.new( 45440.6172,    2.9490, -25554.3691), look = Vector3.new(  0.2441,   0.0000,  -0.9697) },
                    { label = "P1 HST S",        pos = Vector3.new( 45440.6172,    2.9490, -25554.3691), look = Vector3.new(  0.2441,   0.0000,  -0.9697) },
                    { label = "P2 4-6",          pos = Vector3.new( 45415.6914,    8.0133, -25781.8125), look = Vector3.new(  0.0138,  -0.0141,  -0.9998) },
                    { label = "P2 HST 2+5",      pos = Vector3.new( 45415.6914,    8.0158, -25781.8125), look = Vector3.new(  0.0148,  -0.0146,  -0.9998) },
                    { label = "P2 Class 80x 5",  pos = Vector3.new( 45415.6914,    8.0178, -25781.8125), look = Vector3.new(  0.0149,  -0.0146,  -0.9998) },
                    { label = "P2 Class 80x 9-10", pos = Vector3.new( 45398.9609,    8.0485, -25554.3145), look = Vector3.new(  0.1100,  -0.0000,  -0.9939) },
                    { label = "P2 S",            pos = Vector3.new( 45398.9609,    8.0485, -25554.3145), look = Vector3.new(  0.1100,   0.0000,  -0.9939) },
                    { label = "P2 HST S",        pos = Vector3.new( 45398.9609,    8.0485, -25554.3145), look = Vector3.new(  0.1100,  -0.0000,  -0.9939) },
                },
                ["Westwyvern"] = {
                    { label = "P3 4-6",          pos = Vector3.new( 45351.6953,    8.0160, -26039.4707), look = Vector3.new( -0.0172,  -0.0179,   0.9997) },
                    { label = "P3 HST 2+5",      pos = Vector3.new( 45351.6953,    8.0172, -26039.4707), look = Vector3.new( -0.0167,  -0.0172,   0.9997) },
                    { label = "P3 Class 80x 5",  pos = Vector3.new( 45351.6953,    8.0187, -26039.4707), look = Vector3.new( -0.0161,  -0.0164,   0.9997) },
                    { label = "P3 Class 80x 9-10", pos = Vector3.new( 45352.0898,    8.0485, -26378.2480), look = Vector3.new(  0.0158,   0.0000,   0.9999) },
                    { label = "P3 S",            pos = Vector3.new( 45352.0898,    8.0485, -26378.2480), look = Vector3.new(  0.0158,   0.0000,   0.9999) },
                    { label = "P3 HST S",        pos = Vector3.new( 45352.0898,    8.0485, -26378.2480), look = Vector3.new(  0.0158,   0.0000,   0.9999) },
                    { label = "P4 Class 80x 9-10", pos = Vector3.new( 45309.1953,    8.0485, -26378.2617), look = Vector3.new(  0.0342,   0.0000,   0.9994) },
                    { label = "P4 S",            pos = Vector3.new( 45309.1953,    8.0485, -26378.2617), look = Vector3.new(  0.0342,   0.0000,   0.9994) },
                    { label = "P4 HST S",        pos = Vector3.new( 45309.1953,    8.0485, -26378.2617), look = Vector3.new(  0.0342,   0.0000,   0.9994) },
                    { label = "P4 2-6",          pos = Vector3.new( 45308.2773,    8.0229, -26039.4824), look = Vector3.new(  0.0289,  -0.0103,   0.9995) },
                    { label = "P4 HST 2+5",      pos = Vector3.new( 45308.2773,    8.0238, -26039.4824), look = Vector3.new(  0.0287,  -0.0101,   0.9995) },
                    { label = "P4 Class 80x 5",  pos = Vector3.new( 45308.2773,    8.0251, -26039.4824), look = Vector3.new(  0.0282,  -0.0096,   0.9996) },
                },
            },
        },

                {
            name = "Cadoxton",

            to = {
                ["Stepford Bay"] = {
                    { label = "P1 S",            pos = Vector3.new(  3237.8792,    8.0481,  29073.0469), look = Vector3.new( -1.0000,   0.0000,  -0.0080) },
                    { label = "P1 Metro ALL",    pos = Vector3.new(  3237.8792,    8.0481,  29073.0469), look = Vector3.new( -1.0000,   0.0000,  -0.0080) },
                },
                ["Beechley"] = {
                    { label = "P1 Metro ALL",    pos = Vector3.new(  2927.8542,    3.4481,  29089.2910), look = Vector3.new(  0.9989,   0.0000,   0.0477) },
                    { label = "P1 S",            pos = Vector3.new(  2927.8542,    3.4481,  29089.2910), look = Vector3.new(  0.9989,   0.0000,   0.0477) },
                },
            },
        },

                {
            name = "Hemdon Park",

            to = {
                ["Beechley"] = {
                    { label = "P1 S",            pos = Vector3.new(-10122.5791,    8.0484,  30842.1348), look = Vector3.new( -0.6882,  -0.0000,   0.7255) },
                    { label = "P1 Metro 555/777 8-10", pos = Vector3.new(-10122.5791,    8.0484,  30842.1348), look = Vector3.new( -0.6882,  -0.0000,   0.7255) },
                    { label = "P1 Metro 6",      pos = Vector3.new(-10122.5791,    8.0484,  30842.1348), look = Vector3.new( -0.6882,  -0.0000,   0.7255) },
                    { label = "P1 Metro 555/777 4-5", pos = Vector3.new(-10177.0029,    8.0484,  30890.9961), look = Vector3.new( -0.7044,  -0.0000,   0.7098) },
                    { label = "P1 Metro 3",      pos = Vector3.new(-10208.4971,    8.0484,  30924.1504), look = Vector3.new( -0.7145,   0.0000,   0.6996) },
                },
                ["Willowfield"] = {
                    { label = "P2 Metro 555/777 4-5", pos = Vector3.new(-10278.2871,    8.0484,  31039.8535), look = Vector3.new(  0.7126,   0.0000,  -0.7016) },
                    { label = "P2 Metro 3",      pos = Vector3.new(-10278.2871,    8.0484,  31039.8535), look = Vector3.new(  0.7126,   0.0000,  -0.7016) },
                    { label = "P2 Metro 6",      pos = Vector3.new(-10340.5674,    8.0484,  31103.2832), look = Vector3.new(  0.7270,  -0.0000,  -0.6866) },
                    { label = "P2 Metro 555/777 8-10", pos = Vector3.new(-10340.5674,    8.0484,  31103.2832), look = Vector3.new(  0.7270,  -0.0000,  -0.6866) },
                    { label = "P2 S",            pos = Vector3.new(-10340.5674,    8.0484,  31103.2832), look = Vector3.new(  0.7270,  -0.0000,  -0.6866) },
                },
            },
        },

                {
            name = "Beechley",

            sets = {
                {
                    next = { "City Hospital", "Cadoxton", "Financial Quarter" },
                    markers = {
                        { label = "P2 Metro 3",      pos = Vector3.new( -2093.9741,   28.8538,  28798.8086), look = Vector3.new( -0.9964,  -0.0000,  -0.0851) },
                        { label = "P2 Metro 6",      pos = Vector3.new( -2024.7180,   28.8506,  28811.0430), look = Vector3.new( -0.9898,   0.0000,  -0.1426) },
                        { label = "P2 Metro 555/777 4-5", pos = Vector3.new( -2024.7180,   28.8506,  28811.0430), look = Vector3.new( -0.9898,   0.0000,  -0.1426) },
                        { label = "P2 3-4",          pos = Vector3.new( -2024.7180,   28.8506,  28811.0430), look = Vector3.new( -0.9898,   0.0000,  -0.1426) },
                        { label = "P2 Metro 555/777 8-10", pos = Vector3.new( -1957.4818,   28.8474,  28821.0078), look = Vector3.new( -0.9883,   0.0000,  -0.1525) },
                        { label = "P2 S",            pos = Vector3.new( -1893.4772,   28.8482,  28831.6348), look = Vector3.new( -0.9893,   0.0000,  -0.1459) },
                        { label = "P3 S",            pos = Vector3.new( -1897.7119,   28.8508,  28861.4863), look = Vector3.new( -0.9954,   0.0000,  -0.0955) },
                        { label = "P3 Metro 555/777 8-10", pos = Vector3.new( -1962.0743,   28.8463,  28853.0938), look = Vector3.new( -0.9906,   0.0000,  -0.1369) },
                        { label = "P3 Metro 6",      pos = Vector3.new( -2029.7488,   28.8415,  28845.2793), look = Vector3.new( -0.9896,   0.0000,  -0.1437) },
                        { label = "P3 Metro 555/777 4-5", pos = Vector3.new( -2029.7488,   28.8415,  28845.2793), look = Vector3.new( -0.9896,   0.0000,  -0.1437) },
                        { label = "P3 3-4",          pos = Vector3.new( -2029.7488,   28.8415,  28845.2793), look = Vector3.new( -0.9896,   0.0000,  -0.1437) },
                        { label = "P3 Metro 3",      pos = Vector3.new( -2091.9463,   28.8481,  28840.2070), look = Vector3.new( -0.9988,   0.0000,  -0.0496) },
                    },
                },
                {
                    next = { "Hemdon Park", "Willowfield" },
                    markers = {
                        { label = "P3 Metro 3",      pos = Vector3.new( -2250.9934,   28.8482,  28837.5801), look = Vector3.new(  1.0000,   0.0000,   0.0029) },
                        { label = "P3 Metro 555/777 4-5", pos = Vector3.new( -2250.9934,   28.8482,  28837.5801), look = Vector3.new(  1.0000,   0.0000,   0.0029) },
                        { label = "P3 3",            pos = Vector3.new( -2250.9934,   28.8482,  28837.5801), look = Vector3.new(  1.0000,   0.0000,   0.0029) },
                        { label = "P3 4",            pos = Vector3.new( -2308.4409,   28.8556,  28841.1484), look = Vector3.new(  0.9903,  -0.0000,  -0.1392) },
                        { label = "P3 Metro 6",      pos = Vector3.new( -2308.4409,   28.8556,  28841.1484), look = Vector3.new(  0.9903,   0.0000,  -0.1392) },
                        { label = "P3 Metro 555/777 8-10", pos = Vector3.new( -2343.8679,   28.8522,  28847.2949), look = Vector3.new(  0.9949,   0.0000,  -0.1008) },
                        { label = "P3 S",            pos = Vector3.new( -2406.6255,   28.8461,  28860.3379), look = Vector3.new(  0.9955,   0.0000,  -0.0949) },
                        { label = "P4 S",            pos = Vector3.new( -2406.3577,   28.8455,  28867.6484), look = Vector3.new(  0.9994,   0.0000,  -0.0336) },
                        { label = "P4 Metro 555/777 8-10", pos = Vector3.new( -2343.2544,   28.8507,  28866.5684), look = Vector3.new(  0.9999,   0.0000,  -0.0133) },
                        { label = "P4 Metro 6",      pos = Vector3.new( -2308.0774,   28.8525,  28865.5332), look = Vector3.new(  0.9992,  -0.0000,  -0.0388) },
                        { label = "P4 4",            pos = Vector3.new( -2308.0774,   28.8525,  28865.5332), look = Vector3.new(  0.9992,   0.0000,  -0.0388) },
                        { label = "P4 Metro 3",      pos = Vector3.new( -2251.0710,   28.8481,  28865.1680), look = Vector3.new(  0.9999,   0.0000,   0.0152) },
                        { label = "P4 Metro 555/777 4-5", pos = Vector3.new( -2251.0710,   28.8481,  28865.1680), look = Vector3.new(  0.9999,   0.0000,   0.0152) },
                        { label = "P4 3",            pos = Vector3.new( -2251.0710,   28.8481,  28865.1680), look = Vector3.new(  0.9999,   0.0000,   0.0152) },
                        { label = "P5 Metro 3",      pos = Vector3.new( -2250.9917,   28.8482,  28906.0703), look = Vector3.new(  0.9999,   0.0000,  -0.0166) },
                        { label = "P5 Metro 555/777 4-5", pos = Vector3.new( -2250.9917,   28.8482,  28906.0703), look = Vector3.new(  0.9999,   0.0000,  -0.0166) },
                        { label = "P5 3",            pos = Vector3.new( -2250.9917,   28.8482,  28906.0703), look = Vector3.new(  0.9999,   0.0000,  -0.0166) },
                        { label = "P5 Metro 6",      pos = Vector3.new( -2308.0754,   28.8482,  28906.1406), look = Vector3.new(  1.0000,   0.0000,   0.0089) },
                        { label = "P5 4",            pos = Vector3.new( -2308.0754,   28.8482,  28906.1406), look = Vector3.new(  1.0000,   0.0000,   0.0089) },
                        { label = "P5 Metro 555/777 8-10", pos = Vector3.new( -2344.0637,   28.8482,  28906.0781), look = Vector3.new(  0.9998,   0.0000,  -0.0200) },
                        { label = "P5 S",            pos = Vector3.new( -2406.2415,   28.8482,  28905.8379), look = Vector3.new(  1.0000,   0.0000,  -0.0041) },
                    },
                },
            },

                    {
            name = "Financial Quarter",

            to = {
                ["Stepford Victoria"] = {
                    { label = "P2 Metro ALL",    pos = Vector3.new(  1868.3616,   28.8478,  28099.8398), look = Vector3.new( -0.0511,  -0.0001,   0.9987) },
                    { label = "P2 Metro 555/777 4-5", pos = Vector3.new(  1868.3616,   28.8478,  28099.8398), look = Vector3.new( -0.0511,  -0.0001,   0.9987) },
                    { label = "P2 2-3",          pos = Vector3.new(  1868.3616,   28.8478,  28099.8398), look = Vector3.new( -0.0511,  -0.0001,   0.9987) },
                    { label = "P2 S",            pos = Vector3.new(  1866.5925,   28.8480,  28003.0645), look = Vector3.new(  0.0312,  -0.0000,   0.9995) },
                    { label = "P2 Metro 555/777 8-10", pos = Vector3.new(  1866.5925,   28.8480,  28003.0645), look = Vector3.new(  0.0312,   0.0000,   0.9995) },
                },
            },
                {
                    next = { "City Hospital", "Beechley" },
                    markers = {
                        { label = "P1 2-3",          pos = Vector3.new(  1897.8154,   28.8479,  28350.2168), look = Vector3.new( -0.0415,  -0.0001,  -0.9991) },
                        { label = "P1 Metro 555/777 4-5", pos = Vector3.new(  1897.8154,   28.8479,  28350.2168), look = Vector3.new( -0.0415,  -0.0001,  -0.9991) },
                        { label = "P1 Metro ALL",    pos = Vector3.new(  1897.8154,   28.8479,  28350.2168), look = Vector3.new( -0.0415,  -0.0001,  -0.9991) },
                        { label = "P1 S",            pos = Vector3.new(  1900.1498,   28.8428,  28446.3379), look = Vector3.new(  0.0427,  -0.0082,  -0.9991) },
                        { label = "P1 Metro 555/777 8-10", pos = Vector3.new(  1900.1487,   28.8432,  28446.3496), look = Vector3.new(  0.0157,  -0.0078,  -0.9998) },
                    },
                },
            },

                    {
            name = "City Hospital",

            to = {
                ["Stepford Central"] = {
                    { label = "P1 Metro 3",      pos = Vector3.new(     8.6695,   24.5480,  27806.8730), look = Vector3.new( -0.0241,  -0.0000,   0.9997) },
                    { label = "P1 Metro 6",      pos = Vector3.new(    14.6650,   24.5480,  27742.1211), look = Vector3.new( -0.0433,   0.0000,   0.9991) },
                    { label = "P1 Metro 555/777 4-5", pos = Vector3.new(    14.6650,   24.5480,  27742.1211), look = Vector3.new( -0.0433,   0.0000,   0.9991) },
                    { label = "P1 2-4",          pos = Vector3.new(    14.6650,   24.5480,  27742.1211), look = Vector3.new( -0.0433,   0.0000,   0.9991) },
                    { label = "P1 S",            pos = Vector3.new(    18.5061,   24.5480,  27664.0469), look = Vector3.new(  0.0003,   0.0000,   1.0000) },
                    { label = "P1 Metro 555/777 8-10", pos = Vector3.new(    18.5061,   24.5480,  27664.0469), look = Vector3.new(  0.0003,   0.0000,   1.0000) },
                },
            },

            sets = {
                {
                    next = { "Financial Quarter", "Beechley" },
                    markers = {
                        { label = "P2 Metro 3",      pos = Vector3.new(    70.4791,   24.5480,  27946.5605), look = Vector3.new(  0.0031,   0.0000,  -1.0000) },
                        { label = "P2 Metro 6",      pos = Vector3.new(    65.0013,   24.5480,  28011.0078), look = Vector3.new(  0.1072,   0.0000,  -0.9942) },
                        { label = "P2 Metro 555/777 4-5", pos = Vector3.new(    65.0013,   24.5480,  28011.0078), look = Vector3.new(  0.1072,   0.0000,  -0.9942) },
                        { label = "P2 2-4",          pos = Vector3.new(    65.0013,   24.5480,  28011.0078), look = Vector3.new(  0.1072,   0.0000,  -0.9942) },
                        { label = "P2 S",            pos = Vector3.new(    59.6293,   24.5480,  28069.9023), look = Vector3.new(  0.0769,  -0.0000,  -0.9970) },
                        { label = "P2 Metro 555/777 8-10", pos = Vector3.new(    59.6293,   24.5480,  28069.9023), look = Vector3.new(  0.0769,  -0.0000,  -0.9970) },
                    },
                },
            },
        },

                    {
            name = "Stepford Central (Metro)",

            to = {
                ["Four Ways"] = {
                    { label = "PA Metro 3",      pos = Vector3.new(    -9.3960,  -19.1519,  25071.6816), look = Vector3.new( -0.0105,  -0.0000,   0.9999) },
                    { label = "PA 3",            pos = Vector3.new(    -6.0760,  -19.1555,  25028.4863), look = Vector3.new(  0.0184,  -0.0020,   0.9998) },
                    { label = "PA Metro 555/777 4-5", pos = Vector3.new(    -6.0759,  -19.1555,  25028.4863), look = Vector3.new(  0.0181,  -0.0020,   0.9998) },
                    { label = "PA Metro 6",      pos = Vector3.new(    -9.6155,  -19.1519,  25002.0254), look = Vector3.new(  0.0196,   0.0000,   0.9998) },
                    { label = "PA S",            pos = Vector3.new(    -5.8938,  -19.1550,  24927.7969), look = Vector3.new(  0.0182,  -0.0015,   0.9998) },
                    { label = "PA Metro 555/777 8-10", pos = Vector3.new(    -5.8937,  -19.1549,  24927.7969), look = Vector3.new(  0.0181,  -0.0017,   0.9998) },
                    { label = "PB Metro 3",      pos = Vector3.new(    30.2237,  -19.1519,  25071.6680), look = Vector3.new( -0.0014,   0.0000,   1.0000) },
                    { label = "PB Metro 555/777 4-5", pos = Vector3.new(    31.2890,  -19.1544,  25028.7559), look = Vector3.new(  0.0257,  -0.0014,   0.9997) },
                    { label = "PB 3",            pos = Vector3.new(    31.2890,  -19.1544,  25028.7559), look = Vector3.new(  0.0255,  -0.0014,   0.9997) },
                    { label = "PB Metro 6",      pos = Vector3.new(    30.1793,  -19.1519,  25001.9707), look = Vector3.new(  0.0034,  -0.0000,   1.0000) },
                    { label = "PB S",            pos = Vector3.new(    31.0980,  -19.1534,  24927.8008), look = Vector3.new( -0.0081,  -0.0008,   1.0000) },
                    { label = "PB Metro 555/777 8-10", pos = Vector3.new(    31.0980,  -19.1534,  24927.8008), look = Vector3.new( -0.0081,  -0.0008,   1.0000) },
                    { label = "PC Metro 3",      pos = Vector3.new(    47.1137,  -19.2186,  25071.7324), look = Vector3.new(  0.0770,   0.0140,   0.9969) },
                    { label = "PC 3",            pos = Vector3.new(    49.6512,  -19.1545,  25028.4668), look = Vector3.new(  0.0434,  -0.0014,   0.9991) },
                    { label = "PC Metro 555/777 4-5", pos = Vector3.new(    49.6512,  -19.1545,  25028.4668), look = Vector3.new(  0.0434,  -0.0014,   0.9991) },
                    { label = "PC Metro 6",      pos = Vector3.new(    47.2679,  -19.1519,  25002.0312), look = Vector3.new(  0.0024,   0.0000,   1.0000) },
                    { label = "PC S",            pos = Vector3.new(    49.4008,  -19.1536,  24927.8027), look = Vector3.new(  0.0194,  -0.0009,   0.9998) },
                    { label = "PC Metro 555/777 8-10", pos = Vector3.new(    49.4008,  -19.1536,  24927.8027), look = Vector3.new(  0.0193,  -0.0009,   0.9998) },
                },
                ["City Hospital"] = {
                    { label = "PB Metro 3",      pos = Vector3.new(    30.3677,  -19.1519,  25201.9453), look = Vector3.new( -0.0164,   0.0000,  -0.9999) },
                    { label = "PB S",            pos = Vector3.new(    31.4045,  -19.1551,  25238.7598), look = Vector3.new(  0.0164,  -0.0018,  -0.9999) },
                    { label = "PB Metro 555/777 4-5", pos = Vector3.new(    31.4045,  -19.1551,  25238.7598), look = Vector3.new(  0.0163,  -0.0018,  -0.9999) },
                    { label = "PB Metro 6",      pos = Vector3.new(    30.3434,  -19.1519,  25284.8359), look = Vector3.new( -0.0034,   0.0000,  -1.0000) },
                    { label = "PB S",            pos = Vector3.new(    31.3795,  -19.1525,  25344.9531), look = Vector3.new( -0.0167,  -0.0003,  -0.9999) },
                    { label = "PB Metro 555/777 8-10", pos = Vector3.new(    31.3795,  -19.1525,  25344.9531), look = Vector3.new( -0.0167,  -0.0003,  -0.9999) },
                    { label = "PC S",            pos = Vector3.new(    49.3930,  -19.1540,  25345.1934), look = Vector3.new( -0.0035,  -0.0012,  -1.0000) },
                    { label = "PC Metro 555/777 8-10", pos = Vector3.new(    49.3930,  -19.1540,  25345.1934), look = Vector3.new( -0.0035,  -0.0012,  -1.0000) },
                    { label = "PC Metro 6",      pos = Vector3.new(    47.5997,  -19.1519,  25284.9414), look = Vector3.new(  0.0517,   0.0000,  -0.9987) },
                    { label = "PC 3",            pos = Vector3.new(    49.4362,  -19.1541,  25239.0098), look = Vector3.new(  0.0222,  -0.0012,  -0.9998) },
                    { label = "PC Metro 555/777 4-5", pos = Vector3.new(    49.4362,  -19.1541,  25239.0098), look = Vector3.new(  0.0222,  -0.0013,  -0.9998) },
                    { label = "PC Metro 3",      pos = Vector3.new(    47.5699,  -19.1519,  25201.9980), look = Vector3.new( -0.0017,   0.0000,  -1.0000) },
                    { label = "PD Metro 3",      pos = Vector3.new(    87.1491,  -19.1590,  25201.9160), look = Vector3.new(  0.0041,   0.0279,  -0.9996) },
                    { label = "PD 3",            pos = Vector3.new(    86.7469,  -19.1571,  25238.7461), look = Vector3.new(  0.0097,  -0.0029,  -0.9999) },
                    { label = "PD Metro 555/777 4-5", pos = Vector3.new(    86.7469,  -19.1571,  25238.7461), look = Vector3.new(  0.0096,  -0.0029,  -1.0000) },
                    { label = "PD Metro 6",      pos = Vector3.new(    86.9056,  -19.1519,  25284.8262), look = Vector3.new(  0.0077,   0.0000,  -1.0000) },
                    { label = "PD S",            pos = Vector3.new(    86.8902,  -19.1529,  25344.9375), look = Vector3.new(  0.0207,  -0.0006,  -0.9998) },
                    { label = "PD Metro 555/777 8-10", pos = Vector3.new(    86.8902,  -19.1529,  25344.9375), look = Vector3.new(  0.0207,  -0.0006,  -0.9998) },
                },
            },
        },

                {
            name = "Stepford Central",

            to = {
                ["City Hospital"] = {
                    { label = "P11 S",           pos = Vector3.new(    51.2427,   28.8481,  25607.4551), look = Vector3.new(  0.0389,   0.0000,  -0.9992) },
                },
            },

            sets = {
                {
                    next = { "Stepford East", "Four Ways" },
                    markers = {
                        { label = "P10 2-3",         pos = Vector3.new(    18.7832,   28.8481,  25347.7090), look = Vector3.new( -0.0170,   0.0000,   0.9999) },
                        { label = "P10 4",           pos = Vector3.new(    20.6776,   28.8481,  25283.5879), look = Vector3.new( -0.0245,   0.0000,   0.9997) },
                        { label = "P10 S",           pos = Vector3.new(    25.4991,   28.8481,  24998.4922), look = Vector3.new(  0.0099,   0.0000,   1.0000) },
                    },
                },
            },
        },

                    {
            name = "Four Ways (Metro)",

            to = {
                ["Stepford East"] = {
                    { label = "PA Metro ALL",    pos = Vector3.new(    -7.5560,  -19.1521,  21708.4707), look = Vector3.new( -0.0388,  -0.0000,   0.9992) },
                    { label = "PA Metro 555/777 4-5", pos = Vector3.new(    -7.5560,  -19.1521,  21708.4707), look = Vector3.new( -0.0388,  -0.0000,   0.9992) },
                    { label = "PA 3",            pos = Vector3.new(    -7.5560,  -19.1521,  21708.4707), look = Vector3.new( -0.0388,  -0.0000,   0.9992) },
                    { label = "PA S",            pos = Vector3.new(    -7.3534,  -19.1546,  21624.0254), look = Vector3.new(  0.0016,  -0.0013,   1.0000) },
                    { label = "PA Metro 555/777 8-10", pos = Vector3.new(    -7.3533,  -19.1546,  21624.0254), look = Vector3.new(  0.0016,  -0.0014,   1.0000) },
                },
                ["Stepford Central"] = {
                    { label = "PB Metro ALL",    pos = Vector3.new(    31.3147,  -19.1528,  21912.1855), look = Vector3.new( -0.0342,  -0.0004,  -0.9994) },
                    { label = "PB Metro 555/777 4-5", pos = Vector3.new(    31.3147,  -19.1528,  21912.1855), look = Vector3.new( -0.0342,  -0.0004,  -0.9994) },
                    { label = "PB 3",            pos = Vector3.new(    31.3147,  -19.1528,  21912.1855), look = Vector3.new( -0.0342,  -0.0004,  -0.9994) },
                    { label = "PB S",            pos = Vector3.new(    31.1456,  -19.1595,  22027.4512), look = Vector3.new( -0.0012,  -0.0038,  -1.0000) },
                    { label = "PB Metro 555/777 8-10", pos = Vector3.new(    31.1450,  -19.1592,  22027.4512), look = Vector3.new(  0.0004,  -0.0039,  -1.0000) },
                },
            },
        },

                {
            name = "Stepford East (Metro)",

            sets = {
                {
                    next = { "Stepford High Street", "St Helens Bridge" },
                    markers = {
                        { label = "PA Metro ALL",    pos = Vector3.new(   -24.5869,  -19.1528,  18990.8809), look = Vector3.new( -0.0278,  -0.0003,   0.9996) },
                        { label = "PA Metro 555/777 4-5", pos = Vector3.new(   -24.5869,  -19.1528,  18990.8809), look = Vector3.new( -0.0278,  -0.0003,   0.9996) },
                        { label = "PA 3",            pos = Vector3.new(   -24.5869,  -19.1528,  18990.8809), look = Vector3.new( -0.0278,  -0.0003,   0.9996) },
                        { label = "PA S",            pos = Vector3.new(   -24.5238,  -19.1542,  18904.8691), look = Vector3.new( -0.0191,  -0.0010,   0.9998) },
                        { label = "PA Metro 555/777 8-10", pos = Vector3.new(   -24.5238,  -19.1542,  18904.8691), look = Vector3.new( -0.0191,  -0.0010,   0.9998) },
                        { label = "PB Metro ALL",    pos = Vector3.new(    -7.5223,  -19.1560,  18990.8887), look = Vector3.new( -0.0753,  -0.0018,   0.9972) },
                        { label = "PB Metro 555/777 4-5", pos = Vector3.new(    -7.5215,  -19.1558,  18990.8887), look = Vector3.new( -0.0762,  -0.0020,   0.9971) },
                        { label = "PB S",            pos = Vector3.new(    -7.7009,  -19.1525,  18990.8555), look = Vector3.new( -0.0401,  -0.0001,   0.9992) },
                        { label = "PB S",            pos = Vector3.new(    -7.6533,  -19.1603,  18904.8398), look = Vector3.new(  0.0082,  -0.0034,   1.0000) },
                        { label = "PB Metro 555/777 8-10", pos = Vector3.new(    -7.6525,  -19.1597,  18904.8379), look = Vector3.new(  0.0070,  -0.0041,   1.0000) },
                    },
                },
                {
                    next = { "Four Ways", "Stepford Central" },
                    markers = {
                        { label = "PC Metro ALL",    pos = Vector3.new(    31.2717,  -19.1566,  19195.9531), look = Vector3.new(  0.0552,  -0.0020,  -0.9985) },
                        { label = "PC Metro 555/777 4-5", pos = Vector3.new(    31.2713,  -19.1564,  19195.9531), look = Vector3.new(  0.0556,  -0.0023,  -0.9984) },
                        { label = "PC 3",            pos = Vector3.new(    31.2713,  -19.1564,  19195.9531), look = Vector3.new(  0.0556,  -0.0023,  -0.9985) },
                        { label = "PC S",            pos = Vector3.new(    31.2273,  -19.1526,  19313.8848), look = Vector3.new( -0.0180,  -0.0002,  -0.9998) },
                        { label = "PC Metro 555/777 8-10", pos = Vector3.new(    31.2273,  -19.1526,  19313.8848), look = Vector3.new( -0.0180,  -0.0002,  -0.9998) },
                        { label = "PD 3",            pos = Vector3.new(    48.0066,  -19.1586,  19195.9180), look = Vector3.new( -0.0046,  -0.0035,  -1.0000) },
                        { label = "PD Metro 555/777 4-5", pos = Vector3.new(    48.0067,  -19.1586,  19195.9180), look = Vector3.new( -0.0046,  -0.0035,  -1.0000) },
                        { label = "PD Metro ALL",    pos = Vector3.new(    48.0067,  -19.1586,  19195.9180), look = Vector3.new( -0.0046,  -0.0035,  -1.0000) },
                        { label = "PD S",            pos = Vector3.new(    48.0600,  -19.1546,  19313.8359), look = Vector3.new( -0.0002,  -0.0013,  -1.0000) },
                        { label = "PD Metro 555/777 8-10", pos = Vector3.new(    48.0600,  -19.1546,  19313.8359), look = Vector3.new( -0.0002,  -0.0013,  -1.0000) },
                    },
                },
            },
        },

                {
            name = "Stepford High Street (Metro)",

            to = {
                ["Stepford East"] = {
                    { label = "PB Metro ALL",    pos = Vector3.new(   -19.9472,  -19.1525,  15642.9209), look = Vector3.new( -0.3375,  -0.0003,  -0.9413) },
                    { label = "PB Metro 555/777 ALL", pos = Vector3.new(   -19.9472,  -19.1525,  15642.9209), look = Vector3.new( -0.3375,  -0.0003,  -0.9413) },
                    { label = "PB S",            pos = Vector3.new(   -19.9472,  -19.1525,  15642.9209), look = Vector3.new( -0.3375,  -0.0003,  -0.9413) },
                    { label = "PD Metro ALL",    pos = Vector3.new(    38.8623,  -19.1575,  15667.3271), look = Vector3.new(  0.0504,  -0.0031,  -0.9987) },
                    { label = "PD Metro 555/777 ALL", pos = Vector3.new(    38.8622,  -19.1575,  15667.3271), look = Vector3.new(  0.0503,  -0.0031,  -0.9987) },
                    { label = "PD S",            pos = Vector3.new(    38.8622,  -19.1575,  15667.3271), look = Vector3.new(  0.0503,  -0.0031,  -0.9987) },
                },
            },

            sets = {
                {
                    next = { "St Helens Bridge", "Whitefield Lido" },
                    markers = {
                        { label = "PA Metro 3",      pos = Vector3.new(  -141.1677,  -19.1718,  15524.3877), look = Vector3.new(  0.6683,  -0.0090,   0.7438) },
                        { label = "PA Metro 555/777 4-5", pos = Vector3.new(  -141.1677,  -19.1713,  15524.3877), look = Vector3.new(  0.6684,  -0.0089,   0.7438) },
                        { label = "PA 3",            pos = Vector3.new(  -141.1677,  -19.1711,  15524.3877), look = Vector3.new(  0.6684,  -0.0088,   0.7438) },
                        { label = "PA Metro 6",      pos = Vector3.new(  -194.0478,  -19.1519,  15473.1064), look = Vector3.new(  0.7511,   0.0000,   0.6602) },
                        { label = "PA S",            pos = Vector3.new(  -302.4901,  -19.1531,  15403.5381), look = Vector3.new(  0.8716,  -0.0007,   0.4903) },
                        { label = "PA Metro 555/777 8-10", pos = Vector3.new(  -302.4901,  -19.1531,  15403.5381), look = Vector3.new(  0.8716,  -0.0007,   0.4903) },
                        { label = "PC Metro ALL",    pos = Vector3.new(     1.9853,  -19.1522,  15354.6348), look = Vector3.new(  0.0144,  -0.0002,   0.9999) },
                        { label = "PC Metro 555/777 4-5", pos = Vector3.new(     1.9853,  -19.1522,  15354.6348), look = Vector3.new(  0.0144,  -0.0002,   0.9999) },
                        { label = "PC 3",            pos = Vector3.new(     1.9853,  -19.1522,  15354.6348), look = Vector3.new(  0.0144,  -0.0002,   0.9999) },
                        { label = "PC S",            pos = Vector3.new(     1.9908,  -19.1612,  15260.4609), look = Vector3.new( -0.0751,  -0.0053,   0.9972) },
                        { label = "PC Metro 555/777 8-10", pos = Vector3.new(     1.9902,  -19.1608,  15260.4609), look = Vector3.new( -0.0744,  -0.0053,   0.9972) },
                    },
                },
            },
        },

                {
            name = "Whitefield Lido",

            to = {
                ["Stepford High Street"] = {
                    { label = "P2 Metro ALL",    pos = Vector3.new( -2374.9192,   28.8463,  15324.5293), look = Vector3.new( -1.0000,  -0.0000,  -0.0088) },
                    { label = "P2 Metro 555/777 ALL", pos = Vector3.new( -2374.9192,   28.8463,  15324.5293), look = Vector3.new( -1.0000,   0.0000,  -0.0088) },
                    { label = "P2 S",            pos = Vector3.new( -2374.9192,   28.8463,  15324.5293), look = Vector3.new( -1.0000,   0.0000,  -0.0088) },
                },
                ["Stepford United Football Club"] = {
                    { label = "P1 Metro 3",      pos = Vector3.new( -2623.9695,   28.8481,  15353.2842), look = Vector3.new(  0.9998,  -0.0000,  -0.0210) },
                    { label = "P1 Metro 555/777 4-5", pos = Vector3.new( -2623.9695,   28.8481,  15353.2842), look = Vector3.new(  0.9998,  -0.0000,  -0.0210) },
                    { label = "P1 2-3",          pos = Vector3.new( -2623.9863,   28.8311,  15353.1006), look = Vector3.new(  0.9996,  -0.0100,   0.0263) },
                    { label = "P1 Metro 6",      pos = Vector3.new( -2713.5955,   28.8481,  15352.3105), look = Vector3.new(  0.9999,   0.0000,   0.0109) },
                    { label = "P1 Metro 555/777 8-10", pos = Vector3.new( -2793.3489,   28.8385,  15350.7842), look = Vector3.new(  0.9992,  -0.0057,   0.0405) },
                    { label = "P1 S",            pos = Vector3.new( -2793.3489,   28.8386,  15350.7842), look = Vector3.new(  0.9992,  -0.0057,   0.0402) },
                },
            },
        },

                {
            name = "Stepford United Football Club",

            to = {
                ["Whitefield Lido"] = {
                    { label = "P4 2-3",          pos = Vector3.new( -5872.4370,    5.4379,  14504.0234), look = Vector3.new( -0.9994,  -0.0056,  -0.0329) },
                    { label = "P4 Metro 555/777 4-5", pos = Vector3.new( -5872.4370,    5.4387,  14504.0234), look = Vector3.new( -0.9995,  -0.0056,  -0.0321) },
                    { label = "P4 S",            pos = Vector3.new( -5816.3062,    5.4479,  14507.9434), look = Vector3.new( -0.9999,   0.0000,  -0.0109) },
                    { label = "P4 Metro 555/777 8-10", pos = Vector3.new( -5816.3062,    5.4479,  14507.9434), look = Vector3.new( -0.9999,   0.0000,  -0.0109) },
                },
                ["Woodhead Lane"] = {
                    { label = "P3 2-3",          pos = Vector3.new( -6109.1616,    5.4479,  14538.4873), look = Vector3.new(  0.9973,   0.0000,   0.0738) },
                    { label = "P3 S",            pos = Vector3.new( -6228.3687,    5.4479,  14537.9551), look = Vector3.new(  0.9999,   0.0000,   0.0148) },
                },
            },
        },

                {
            name = "New Harrow",

            to = {
                ["Elsemere Pond"] = {
                    { label = "P1 Metro ALL",    pos = Vector3.new(   -26.8354,    7.9837,   8113.5117), look = Vector3.new( -0.0053,   0.0000,   1.0000) },
                    { label = "P1 S",            pos = Vector3.new(   -26.8354,    7.9837,   8113.5117), look = Vector3.new( -0.0053,   0.0000,   1.0000) },
                    { label = "P1 Metro 555/777 4-5", pos = Vector3.new(   -26.8354,    7.9837,   8113.5117), look = Vector3.new( -0.0053,   0.0000,   1.0000) },
                    { label = "P1 Metro 555/777 8-10", pos = Vector3.new(   -26.8354,    7.9837,   8113.5117), look = Vector3.new( -0.0053,   0.0000,   1.0000) },
                },
                ["St Helens Bridge"] = {
                    { label = "P2 Metro 6",      pos = Vector3.new(    18.8619,    8.0481,   8400.5547), look = Vector3.new(  0.0406,   0.0000,  -0.9992) },
                    { label = "P2 S",            pos = Vector3.new(     5.9203,    8.0290,   8448.6670), look = Vector3.new(  0.0384,  -0.0000,  -0.9993) },
                    { label = "P2 Metro 555/777 4-5", pos = Vector3.new(     5.9203,    8.0290,   8448.6670), look = Vector3.new(  0.0384,  -0.0000,  -0.9993) },
                    { label = "P2 Metro 555/777 8-10", pos = Vector3.new(     5.9203,    8.0290,   8448.6670), look = Vector3.new(  0.0384,  -0.0000,  -0.9993) },
                },
            },
        },

                {
            name = "Elsemere Pond",

            to = {
                ["Elsemere Junction"] = {
                    { label = "P1 S",            pos = Vector3.new(   -27.2565,    8.0481,   5477.7334), look = Vector3.new(  0.0174,   0.0000,   0.9998) },
                    { label = "P1 Metro ALL",    pos = Vector3.new(   -27.2565,    8.0481,   5477.7334), look = Vector3.new(  0.0174,   0.0000,   0.9998) },
                    { label = "P1 Metro 555/777 4-5", pos = Vector3.new(   -27.2565,    8.0481,   5477.7334), look = Vector3.new(  0.0174,   0.0000,   0.9998) },
                    { label = "P1 Metro 555/777 8-10", pos = Vector3.new(   -27.2565,    8.0481,   5477.7334), look = Vector3.new(  0.0174,   0.0000,   0.9998) },
                },
                ["New Harrow"] = {
                    { label = "P2 Metro 3",      pos = Vector3.new(    16.2641,    8.0481,   5640.2412), look = Vector3.new(  0.0086,   0.0000,  -1.0000) },
                    { label = "P2 Metro 6",      pos = Vector3.new(    13.8303,    8.0480,   5748.4346), look = Vector3.new(  0.0260,  -0.0000,  -0.9997) },
                    { label = "P2 Metro 555/777 4-5", pos = Vector3.new(    13.8303,    8.0480,   5748.4346), look = Vector3.new(  0.0260,  -0.0000,  -0.9997) },
                    { label = "P2 3",            pos = Vector3.new(    13.8303,    8.0480,   5748.4346), look = Vector3.new(  0.0260,  -0.0000,  -0.9997) },
                    { label = "P2 S",            pos = Vector3.new(     5.5163,   11.0481,   5816.6538), look = Vector3.new(  0.0458,   0.0000,  -0.9989) },
                    { label = "P2 Metro 555/777 8-10", pos = Vector3.new(     5.5163,   11.0481,   5816.6538), look = Vector3.new(  0.0458,   0.0000,  -0.9989) },
                },
            },
        },

                {
            name = "Berrily",

            sets = {
                {
                    next = { "Denton Road", "Easy Berrily" },
                    markers = {
                        { label = "P3 2-5",          pos = Vector3.new(   526.4713,    8.0481,    453.2735), look = Vector3.new( -0.2589,   0.0000,   0.9659) },
                        { label = "P3 Metro 555/777 4-5", pos = Vector3.new(   526.4713,    8.0481,    453.2735), look = Vector3.new( -0.2589,   0.0000,   0.9659) },
                        { label = "P3 Metro ALL",    pos = Vector3.new(   526.4713,    8.0481,    453.2735), look = Vector3.new( -0.2589,   0.0000,   0.9659) },
                        { label = "P3 6",            pos = Vector3.new(   547.7812,    8.0481,    373.9738), look = Vector3.new( -0.3160,   0.0000,   0.9488) },
                        { label = "P3 Metro 555/777 8-10", pos = Vector3.new(   547.7812,    8.0481,    373.9738), look = Vector3.new( -0.3160,   0.0000,   0.9488) },
                        { label = "P3 S",            pos = Vector3.new(   566.2120,    8.0481,    305.9419), look = Vector3.new( -0.2415,   0.0000,   0.9704) },
                        { label = "P5 3-5",          pos = Vector3.new(   590.3087,    8.0481,    470.7039), look = Vector3.new( -0.2440,   0.0000,   0.9698) },
                        { label = "P5 6-8",          pos = Vector3.new(   607.8254,    8.0481,    390.3765), look = Vector3.new( -0.2965,  -0.0000,   0.9550) },
                        { label = "P5 S",            pos = Vector3.new(   642.0472,    8.0481,    292.3593), look = Vector3.new( -0.2590,   0.0000,   0.9659) },
                        { label = "P5 Class 80x ALL", pos = Vector3.new(   642.0472,    8.0481,    292.3593), look = Vector3.new( -0.2590,   0.0000,   0.9659) },
                    },
                },
                {
                    next = { "Elsemere Junction", "Barton" },
                    markers = {
                        { label = "P4 Metro 3",      pos = Vector3.new(   524.9352,    8.0481,    637.3420), look = Vector3.new(  0.2777,   0.0000,  -0.9607) },
                        { label = "P4 Metro 6",      pos = Vector3.new(   503.6388,    8.0481,    723.8615), look = Vector3.new(  0.3133,   0.0000,  -0.9497) },
                        { label = "P4 Metro 555/777 4-5", pos = Vector3.new(   503.6388,    8.0481,    723.8615), look = Vector3.new(  0.3133,   0.0000,  -0.9497) },
                        { label = "P4 2-5",          pos = Vector3.new(   503.6388,    8.0481,    723.8615), look = Vector3.new(  0.3133,   0.0000,  -0.9497) },
                        { label = "P4 6",            pos = Vector3.new(   480.8647,    8.0481,    809.6343), look = Vector3.new(  0.3043,   0.0000,  -0.9526) },
                        { label = "P4 Metro 555/777 8-10", pos = Vector3.new(   480.8647,    8.0481,    809.6343), look = Vector3.new(  0.3043,   0.0000,  -0.9526) },
                        { label = "P4 S",            pos = Vector3.new(   450.5304,    8.0481,    921.8935), look = Vector3.new(  0.2651,   0.0000,  -0.9642) },
                    },
                },
            },
        },

                {
            name = "East Berrily",

            to = {
                ["Beaulieu Park"] = {
                    { label = "P1 S",            pos = Vector3.new(   -31.1752,    7.9568,  -3502.3303), look = Vector3.new(  0.2577,  -0.0000,   0.9662) },
                    { label = "P1 Metro 555/777 4-5", pos = Vector3.new(   -31.1752,    7.9568,  -3502.3303), look = Vector3.new(  0.2577,  -0.0000,   0.9662) },
                    { label = "P1 Metro 555/777 8-10", pos = Vector3.new(   -31.1752,    7.9568,  -3502.3303), look = Vector3.new(  0.2577,  -0.0000,   0.9662) },
                    { label = "P1 Metro ALL",    pos = Vector3.new(   -30.3747,    8.0481,  -3479.2566), look = Vector3.new(  0.2665,   0.0000,   0.9638) },
                },
                ["Berrily"] = {
                    { label = "P2 Metro ALL",    pos = Vector3.new(    79.7515,    8.0481,  -3241.9709), look = Vector3.new( -0.2739,  -0.0000,  -0.9618) },
                    { label = "P2 S",            pos = Vector3.new(    88.4965,    8.0228,  -3201.2593), look = Vector3.new( -0.2432,   0.0000,  -0.9700) },
                    { label = "P2 Metro 555/777 4-5", pos = Vector3.new(    88.4965,    8.0228,  -3201.2593), look = Vector3.new( -0.2432,  -0.0000,  -0.9700) },
                    { label = "P2 Metro 555/777 8-10", pos = Vector3.new(    88.4965,    8.0228,  -3201.2593), look = Vector3.new( -0.2432,  -0.0000,  -0.9700) },
                },
            },
        },

                {
            name = "Beaulieu Park",

            to = {
                ["Morganstown"] = {
                    { label = "P1 2-3",          pos = Vector3.new(   -38.3813,    8.0481,  -6954.8325), look = Vector3.new( -0.0598,  -0.0000,   0.9982) },
                    { label = "P1 Metro 555/777 4-5", pos = Vector3.new(   -38.3813,    8.0481,  -6954.8325), look = Vector3.new( -0.0598,   0.0000,   0.9982) },
                    { label = "P1 Metro ALL",    pos = Vector3.new(   -38.3813,    8.0481,  -6954.8325), look = Vector3.new( -0.0598,  -0.0000,   0.9982) },
                    { label = "P1 4",            pos = Vector3.new(   -33.3794,    8.0481,  -7003.0449), look = Vector3.new( -0.1185,  -0.0000,   0.9929) },
                    { label = "P1 S",            pos = Vector3.new(   -31.7349,    7.4461,  -7029.4443), look = Vector3.new( -0.1004,   0.0000,   0.9949) },
                    { label = "P1 Metro 555/777 8-10", pos = Vector3.new(   -31.7349,    7.4461,  -7029.4443), look = Vector3.new( -0.1004,   0.0000,   0.9949) },
                },
                ["East Berilly"] = {
                    { label = "P2 Metro ALL",    pos = Vector3.new(    -0.9898,    8.0481,  -6691.6924), look = Vector3.new( -0.1318,   0.0000,  -0.9913) },
                    { label = "P2 4",            pos = Vector3.new(    -0.9898,    8.0481,  -6691.6924), look = Vector3.new( -0.1318,  -0.0000,  -0.9913) },
                    { label = "P2 Metro 555/777 4-5", pos = Vector3.new(    -0.9898,    8.0481,  -6691.6924), look = Vector3.new( -0.1318,  -0.0000,  -0.9913) },
                    { label = "P2 5-6",          pos = Vector3.new(     2.3781,    8.0481,  -6665.1812), look = Vector3.new( -0.0550,  -0.0000,  -0.9985) },
                    { label = "P2 S",            pos = Vector3.new(     3.0734,    8.0634,  -6638.7422), look = Vector3.new( -0.0323,   0.0000,  -0.9995) },
                    { label = "P2 Metro 555/777 8-10", pos = Vector3.new(     3.0734,    8.0634,  -6638.7422), look = Vector3.new( -0.0323,   0.0000,  -0.9995) },
                },
            },
        },

                {
            name = "Angel Pass",

            to = {
                ["Bodin"] = {
                    { label = "P1 Metro ALL",    pos = Vector3.new( -1493.6288,    8.0484,   9455.0156), look = Vector3.new(  0.9995,   0.0000,   0.0330) },
                    { label = "P1 Metro 555/777 ALL", pos = Vector3.new( -1493.6288,    8.0484,   9455.0156), look = Vector3.new(  0.9995,   0.0000,   0.0330) },
                    { label = "P1 S",            pos = Vector3.new( -1522.8744,    8.0484,   9455.1611), look = Vector3.new(  0.9999,   0.0000,   0.0138) },
                },
                ["St Helens Bridge"] = {
                    { label = "P2 2",            pos = Vector3.new( -1202.8840,    8.0481,   9396.9102), look = Vector3.new( -0.9979,  -0.0000,  -0.0653) },
                    { label = "P2 Metro 555/777 4-5", pos = Vector3.new( -1202.8840,    8.0481,   9396.9102), look = Vector3.new( -0.9979,  -0.0000,  -0.0653) },
                    { label = "P2 Metro ALL",    pos = Vector3.new( -1183.4962,    8.0481,   9402.6592), look = Vector3.new( -0.9993,  -0.0000,  -0.0382) },
                    { label = "P2 3-4",          pos = Vector3.new( -1132.5219,    8.0481,   9402.4668), look = Vector3.new( -0.9994,  -0.0000,  -0.0340) },
                    { label = "P2 Metro 555/777 8-10", pos = Vector3.new( -1132.5219,    8.0481,   9402.4668), look = Vector3.new( -0.9994,  -0.0000,  -0.0340) },
                    { label = "P2 5-6",          pos = Vector3.new( -1084.8359,    8.0481,   9402.6162), look = Vector3.new( -0.9978,   0.0000,  -0.0660) },
                    { label = "P2 Class 720/730", pos = Vector3.new( -1084.8359,    8.0481,   9402.6162), look = Vector3.new( -0.9978,  -0.0000,  -0.0660) },
                    { label = "P3 2",            pos = Vector3.new( -1206.3253,    2.8481,   9361.1152), look = Vector3.new( -0.9972,   0.0000,  -0.0744) },
                    { label = "P3 Metro 555/777 4-5", pos = Vector3.new( -1206.3253,    2.8481,   9361.1152), look = Vector3.new( -0.9972,   0.0000,  -0.0744) },
                    { label = "P3 Metro ALL",    pos = Vector3.new( -1183.8064,    2.8481,   9361.9033), look = Vector3.new( -0.9937,   0.0001,  -0.1123) },
                    { label = "P3 3-4",          pos = Vector3.new( -1132.8274,    2.8481,   9364.7773), look = Vector3.new( -0.9938,   0.0000,  -0.1115) },
                    { label = "P3 Class 720/730", pos = Vector3.new( -1064.0269,    2.8481,   9370.6055), look = Vector3.new( -0.9945,   0.0000,  -0.1046) },
                    { label = "P3 5-6",          pos = Vector3.new( -1064.0269,    2.8481,   9370.6055), look = Vector3.new( -0.9945,   0.0000,  -0.1046) },
                    { label = "P3 Metro 555/777 8-10", pos = Vector3.new( -1064.0269,    2.8481,   9370.6055), look = Vector3.new( -0.9945,   0.0000,  -0.1046) },
                },
            },
        },

                {
            name = "Coxly Newtown",

            to = {
                ["Barton"] = {
                    { label = "P1 Metro ALL",    pos = Vector3.new( -2782.3557,  -18.6410,   1741.9746), look = Vector3.new(  0.0060,   0.0000,   1.0000) },
                    { label = "P1 Metro 555/777 4-5", pos = Vector3.new( -2782.3557,  -18.6409,   1741.9746), look = Vector3.new(  0.0060,   0.0000,   1.0000) },
                    { label = "P1 3-4",          pos = Vector3.new( -2782.3557,  -18.6409,   1741.9746), look = Vector3.new(  0.0060,   0.0000,   1.0000) },
                    { label = "P1 6",            pos = Vector3.new( -2782.5271,  -18.6409,   1646.2190), look = Vector3.new( -0.0293,   0.0000,   0.9996) },
                    { label = "P1 S",            pos = Vector3.new( -2782.6763,  -18.6409,   1604.8528), look = Vector3.new(  0.0338,   0.0000,   0.9994) },
                    { label = "P1 Metro 555/777 8-10", pos = Vector3.new( -2782.6763,  -18.6409,   1604.8528), look = Vector3.new(  0.0338,  -0.0000,   0.9994) },
                },
                ["Bodin"] = {
                    { label = "P2 Metro 555/777 4-5", pos = Vector3.new( -2737.7473,  -18.6409,   2017.5857), look = Vector3.new(  0.0393,   0.0000,  -0.9992) },
                    { label = "P2 Metro ALL",    pos = Vector3.new( -2737.7473,  -18.6409,   2017.5857), look = Vector3.new(  0.0393,   0.0000,  -0.9992) },
                    { label = "P2 3-4",          pos = Vector3.new( -2737.7473,  -18.6409,   2017.5857), look = Vector3.new(  0.0393,   0.0000,  -0.9992) },
                    { label = "P2 S",            pos = Vector3.new( -2737.4211,  -18.6409,   2053.9199), look = Vector3.new( -0.0420,  -0.0000,  -0.9991) },
                    { label = "P2 Metro 555/777 8-10", pos = Vector3.new( -2737.4211,  -18.6409,   2053.9199), look = Vector3.new( -0.0420,  -0.0000,  -0.9991) },
                },
            },
        },

                {
            name = "Barton",

            to = {
                ["Coxly Netwon"] = {
                    { label = "P1 Metro ALL",    pos = Vector3.new( -1819.6785,  -23.7403,   1190.0031), look = Vector3.new(  0.8612,   0.0000,   0.5082) },
                    { label = "P1 Metro 555/777 4-5", pos = Vector3.new( -1819.6785,  -23.7403,   1190.0031), look = Vector3.new(  0.8612,   0.0000,   0.5082) },
                    { label = "P1 3-4",          pos = Vector3.new( -1819.6785,  -23.7403,   1190.0031), look = Vector3.new(  0.8612,   0.0000,   0.5082) },
                    { label = "P1 S",            pos = Vector3.new( -1896.2955,  -20.9278,   1146.5450), look = Vector3.new(  0.8603,   0.0000,   0.5098) },
                    { label = "P1 Metro 555/777 8-10", pos = Vector3.new( -1896.2955,  -20.9278,   1146.5450), look = Vector3.new(  0.8603,   0.0000,   0.5098) },
                },
            },

            sets = {
                {
                    next = { "Berrily", "Elsemere Junction" },
                    markers = {
                        { label = "P2 Metro ALL",    pos = Vector3.new( -1585.0984,  -23.7403,   1267.1644), look = Vector3.new( -0.8197,  -0.0000,  -0.5728) },
                        { label = "P2 Metro 555/777 4-5", pos = Vector3.new( -1585.0984,  -23.7403,   1267.1644), look = Vector3.new( -0.8197,  -0.0000,  -0.5728) },
                        { label = "P2 3-4",          pos = Vector3.new( -1585.0984,  -23.7403,   1267.1644), look = Vector3.new( -0.8197,  -0.0000,  -0.5728) },
                        { label = "P2 S",            pos = Vector3.new( -1512.6235,  -22.7203,   1319.0352), look = Vector3.new( -0.8000,   0.0000,  -0.6000) },
                        { label = "P2 Metro 555/777 8-10", pos = Vector3.new( -1512.6235,  -22.7203,   1319.0352), look = Vector3.new( -0.8000,   0.0000,  -0.6000) },
                    },
                },
            },
        },

                {
            name = "Bodin",

            sets = {
                {
                    next = { "St Helens Bridge", "Angel Pass" },
                    markers = {
                        { label = "P3 2-6",          pos = Vector3.new( -2774.4731,    8.0480,   7591.0513), look = Vector3.new(  0.0150,  -0.0000,  -0.9999) },
                        { label = "P3 Metro 555/777 ALL", pos = Vector3.new( -2774.4731,    8.0480,   7591.0513), look = Vector3.new(  0.0150,  -0.0000,  -0.9999) },
                        { label = "P3 Metro ALL",    pos = Vector3.new( -2774.4731,    8.0480,   7591.0513), look = Vector3.new(  0.0150,  -0.0000,  -0.9999) },
                        { label = "P3 S",            pos = Vector3.new( -2777.2102,    8.0481,   7643.7583), look = Vector3.new( -0.0709,  -0.0000,  -0.9975) },
                        { label = "P2 S",            pos = Vector3.new( -2786.0078,    8.0481,   7643.9028), look = Vector3.new(  0.0970,  -0.0000,  -0.9953) },
                        { label = "P2 2-6",          pos = Vector3.new( -2789.0742,    8.0481,   7590.7993), look = Vector3.new(  0.0561,  -0.0000,  -0.9984) },
                        { label = "P2 Metro ALL",    pos = Vector3.new( -2789.0742,    8.0481,   7590.7993), look = Vector3.new(  0.0561,  -0.0000,  -0.9984) },
                        { label = "P2 Metro 555/777 ALL", pos = Vector3.new( -2789.0742,    8.0481,   7590.7993), look = Vector3.new(  0.0561,  -0.0000,  -0.9984) },
                    },
                },
                {
                    next = { "Coxly", "Coxly Newtown" },
                    markers = {
                        { label = "P1 Metro 555/777 4-5", pos = Vector3.new( -2844.7466,    8.0481,   7386.0669), look = Vector3.new( -0.0362,   0.0000,   0.9993) },
                        { label = "P1 3",            pos = Vector3.new( -2845.1257,    8.0324,   7335.5391), look = Vector3.new(  0.0056,   0.0155,   0.9999) },
                        { label = "P1 4",            pos = Vector3.new( -2844.5247,    8.0481,   7249.7036), look = Vector3.new(  0.0089,   0.0000,   1.0000) },
                        { label = "P1 Metro ALL",    pos = Vector3.new( -2844.5247,    8.0481,   7249.7036), look = Vector3.new(  0.0089,   0.0000,   1.0000) },
                        { label = "P1 Metro 555/777 8-10", pos = Vector3.new( -2845.3113,    8.0481,   7183.4004), look = Vector3.new(  0.0042,   0.0000,   1.0000) },
                        { label = "P1 S",            pos = Vector3.new( -2844.6191,    8.0481,   7053.9312), look = Vector3.new(  0.0088,   0.0000,   1.0000) },
                    },
                },
            },
        },

                {
            name = "Coxly",

            to = {
                ["Bodin"] = {
                    { label = "P3 2-3",          pos = Vector3.new( -2790.0881,    8.0481,    883.9886), look = Vector3.new(  0.0194,   0.0000,  -0.9998) },
                    { label = "P3 Metro 555/777 4-5", pos = Vector3.new( -2790.0881,    8.0481,    883.9886), look = Vector3.new(  0.0194,  -0.0000,  -0.9998) },
                    { label = "P3 Metro ALL",    pos = Vector3.new( -2790.0881,    8.0481,    883.9886), look = Vector3.new(  0.0194,  -0.0000,  -0.9998) },
                    { label = "P3 S",            pos = Vector3.new( -2790.9204,    8.0481,    972.9931), look = Vector3.new( -0.0036,  -0.0000,  -1.0000) },
                    { label = "P3 Metro 555/777 8-10", pos = Vector3.new( -2790.9204,    8.0481,    972.9931), look = Vector3.new( -0.0036,  -0.0000,  -1.0000) },
                },
                ["Benton"] = {
                    { label = "P2 2-4",          pos = Vector3.new( -2844.4719,    8.0481,    608.6222), look = Vector3.new( -0.0062,   0.0000,   1.0000) },
                    { label = "P2 Metro 3",      pos = Vector3.new( -2843.1018,    8.0481,    595.7688), look = Vector3.new( -0.0293,   0.0000,   0.9996) },
                    { label = "P2 Metro 555/777 4-5", pos = Vector3.new( -2843.1018,    8.0481,    595.7688), look = Vector3.new( -0.0293,   0.0000,   0.9996) },
                    { label = "P1 2-4",          pos = Vector3.new( -2866.2671,    2.8481,    608.6258), look = Vector3.new(  0.0011,   0.0000,   1.0000) },
                    { label = "P1 Metro 3",      pos = Vector3.new( -2866.2671,    2.8481,    608.6258), look = Vector3.new(  0.0011,   0.0000,   1.0000) },
                    { label = "P2 Metro 6",      pos = Vector3.new( -2841.6375,    8.0481,    524.4385), look = Vector3.new(  0.0175,   0.0000,   0.9998) },
                    { label = "P1 Metro 6",      pos = Vector3.new( -2866.4983,    2.8481,    524.8320), look = Vector3.new(  0.0493,   0.0000,   0.9988) },
                    { label = "P1 Metro 555/777 ALL", pos = Vector3.new( -2865.5647,    2.8481,    447.3446), look = Vector3.new( -0.0225,   0.0000,   0.9997) },
                    { label = "P1 6",            pos = Vector3.new( -2865.5647,    2.8481,    447.3446), look = Vector3.new( -0.0225,   0.0000,   0.9997) },
                    { label = "P1 S",            pos = Vector3.new( -2847.1106,    8.0481,    411.1591), look = Vector3.new( -0.0086,   0.0000,   1.0000) },
                    { label = "P2 S",            pos = Vector3.new( -2842.3687,    8.0481,    397.4656), look = Vector3.new( -0.0524,   0.0000,   0.9986) },
                    { label = "P2 Metro 555/777 8-10", pos = Vector3.new( -2842.3687,    8.0481,    397.4656), look = Vector3.new( -0.0524,   0.0000,   0.9986) },
                },
            },
        },

                {
            name = "Port Benton",

            to = {
                { "Morganstown Docks", "Whitney Green" } = {
                    { label = "P1 2-3",          pos = Vector3.new( -1649.4386,    8.0477,  -8116.1938), look = Vector3.new( -0.9987,   0.0000,  -0.0508) },
                    { label = "P1 4",            pos = Vector3.new( -1587.6680,    8.0477,  -8107.8955), look = Vector3.new( -0.9999,   0.0000,   0.0172) },
                    { label = "P1 S",            pos = Vector3.new( -1483.4333,    8.0477,  -8107.3721), look = Vector3.new( -0.9927,  -0.0000,   0.1203) },
                    { label = "P3 2-3",          pos = Vector3.new( -1606.0570,    8.0477,  -8052.7241), look = Vector3.new( -0.9998,  -0.0000,   0.0221) },
                    { label = "P3 Metro 555/777 4-5", pos = Vector3.new( -1606.0570,    8.0477,  -8052.7241), look = Vector3.new( -0.9998,  -0.0000,   0.0221) },
                    { label = "P3 Metro ALL",    pos = Vector3.new( -1606.0570,    8.0477,  -8052.7241), look = Vector3.new( -0.9998,   0.0000,   0.0221) },
                    { label = "P3 S",            pos = Vector3.new( -1551.0511,    8.0477,  -8053.1558), look = Vector3.new( -0.9992,   0.0000,   0.0392) },
                    { label = "P3 Metro 555/777 8-10", pos = Vector3.new( -1536.4833,    8.0477,  -8055.3623), look = Vector3.new( -0.9931,   0.0000,   0.1170) },
                },
                ["Benton"] = {
                    { label = "P2 2-3",          pos = Vector3.new( -1777.2152,    8.0477,  -8060.7646), look = Vector3.new(  0.9998,  -0.0000,  -0.0196) },
                    { label = "P2 4",            pos = Vector3.new( -1866.7042,    8.0477,  -8058.2188), look = Vector3.new(  0.9959,  -0.0000,   0.0900) },
                    { label = "P2 S",            pos = Vector3.new( -1929.0940,    8.0475,  -8061.1680), look = Vector3.new(  0.9988,   0.0000,   0.0492) },
                    { label = "P3 4",            pos = Vector3.new( -1866.8580,    8.0477,  -8057.0093), look = Vector3.new(  0.9986,   0.0000,   0.0532) },
                    { label = "P3 S",            pos = Vector3.new( -1929.1388,    8.0474,  -8060.3745), look = Vector3.new(  0.9975,   0.0000,   0.0713) },
                },
            },
        },

                {
            name = "Morganstown Docks",

            to = {
                ["Port Benton"] = {
                    { label = "P2 S",            pos = Vector3.new(  -672.9905,   23.9972,  -8064.1489), look = Vector3.new(  0.9976,  -0.0000,   0.0688) },
                    { label = "P2 Class 730",    pos = Vector3.new(  -691.1331,   24.1413,  -8064.4873), look = Vector3.new(  0.9999,   0.0000,   0.0150) },
                    { label = "P2 Class 195 3",  pos = Vector3.new(  -691.1331,   24.1413,  -8064.4873), look = Vector3.new(  0.9999,   0.0000,   0.0150) },
                },
            },

            sets = {
                {
                    next = { "Morganstown", "Whitney Green" },
                    markers = {
                        { label = "P1 S",            pos = Vector3.new(  -446.6754,   24.0710,  -8113.1147), look = Vector3.new( -1.0000,  -0.0000,  -0.0010) },
                        { label = "P1 Class 730",    pos = Vector3.new(  -431.0774,   24.0246,  -8113.2627), look = Vector3.new( -1.0000,  -0.0000,  -0.0023) },
                        { label = "P1 Class 195 3",  pos = Vector3.new(  -431.0774,   24.0246,  -8113.2627), look = Vector3.new( -1.0000,  -0.0000,  -0.0023) },
                    },
                },
            },
        },

                {
            name = "Whitney Green",

            to = {
                ["Morganstown Docks"] = {
                    { label = "P2 2-4",          pos = Vector3.new(  1052.3409,   28.8481,  -6973.7759), look = Vector3.new( -0.0493,   0.0000,   0.9988) },
                    { label = "P2 Class 730",    pos = Vector3.new(  1052.8665,   25.6736,  -6987.8989), look = Vector3.new( -0.0301,   0.0000,   0.9995) },
                },
            },

            sets = {
                {
                    next = { "Robinson Way", "Greenslade" },
                    markers = {
                        { label = "P1 2-4",          pos = Vector3.new(  1076.0659,   28.8481,  -6746.9814), look = Vector3.new(  0.0171,  -0.0000,  -0.9999) },
                        { label = "P1 Class 730",    pos = Vector3.new(  1075.1450,   25.2969,  -6727.3237), look = Vector3.new( -0.0083,  -0.0000,  -1.0000) },
                    },
                },
            },
        },
        },
    },
}
