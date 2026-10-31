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
                ["Port Benton"] = {
                    { label = "P8 4-8",    pos = Vector3.new(-2736.7734, 8.0481, -5552.0039), look = Vector3.new(-0.0010,  0.0000, 1.0000) },
                    { label = "P7 Metro 3", pos = Vector3.new(-2776.5806, 8.0481, -5512.0630), look = Vector3.new(-0.0210, -0.0000, 0.9998) },
                    { label = "P6 Metro 3", pos = Vector3.new(-2799.2051, 8.0481, -5511.3882), look = Vector3.new( 0.0014, -0.0000, 1.0000) },
                    { label = "P5 Metro 3", pos = Vector3.new(-2834.0178, 8.0481, -5511.6128), look = Vector3.new( 0.0015, -0.0000, 1.0000) },
                    { label = "P4 Metro 3", pos = Vector3.new(-2856.8179, 8.0481, -5511.3491), look = Vector3.new(-0.0044,  0.0000, 1.0000) },
                    { label = "P2 2-3",    pos = Vector3.new(-2927.6299, 8.0481, -5510.4385), look = Vector3.new( 0.0263, -0.0000, 0.9997) },
                    { label = "P1 3-4",    pos = Vector3.new(-2959.8315, 8.0481, -5602.7534), look = Vector3.new(-0.0253, -0.0000, 0.9997) },
                },
                ["Coxly"] = {
                    { label = "P2 2-3",     pos = Vector3.new(-2923.5920, 8.0481, -5368.6797), look = Vector3.new(-0.0197,  0.0000, -0.9998) },
                    { label = "P3 2-3",     pos = Vector3.new(-2903.4368, 8.0481, -5368.7749), look = Vector3.new( 0.0101, -0.0000, -0.9999) },
                    { label = "P6 2-3",     pos = Vector3.new(-2795.4543, 8.0481, -5345.7261), look = Vector3.new( 0.0144, -0.0000, -0.9999) },
                    { label = "P8 Metro 3", pos = Vector3.new(-2738.8296, 8.0481, -5347.6763), look = Vector3.new( 0.0309,  0.0000, -0.9995) },
                    { label = "P10 Metro 3", pos = Vector3.new(-2716.1729, 8.0481, -5304.2441), look = Vector3.new( 0.0075,  0.0000, -1.0000) },
                    { label = "P11 Metro 3", pos = Vector3.new(-2679.6040, 8.0481, -5346.3291), look = Vector3.new(-0.0052, -0.0000, -1.0000) },
                    { label = "P12 Metro 3", pos = Vector3.new(-2659.6323, 8.0481, -5345.9629), look = Vector3.new(-0.0083,  0.0000, -1.0000) },
                    { label = "P13 Metro 3", pos = Vector3.new(-2621.7998, 8.0481, -5346.1606), look = Vector3.new( 0.0151,  0.0000, -0.9999) },
                },
            },
        },
    },
}
