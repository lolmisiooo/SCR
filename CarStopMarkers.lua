-- CarStopMarkers.lua
-- Remote car marker data for SCR Autopilot.
-- URL: https://raw.githubusercontent.com/lolmisiooo/SCR/refs/heads/main/CarStopMarkers.lua
--
-- STRUCTURE
-- ─────────────────────────────────────────────────────────────────────
-- Two top-level keys:
--
--   markers = { ... }   Universal markers — no route/dest filter.
--                       Same format as before. Always a fallback.
--
--   groups  = { ... }   Route/destination-specific sets.
--                       Each group has:
--                         route    = "R080"              (one route code)
--                         route    = {"R080","R081"}     (multiple)
--                         dest     = "Leighton City"     (one destination)
--                         dest     = {"Leighton City","Westwyvern"}
--                         markers  = { ... }             (same entry format)
--                       Both route and dest are optional inside a group.
--                       Omitting one means "any value for that field".
--
-- PRIORITY (most-specific wins):
--   1. group with route + dest both matching
--   2. group with route matching, no dest set
--   3. group with dest  matching, no route set
--   4. universal markers (top-level markers table)
--
--   Within each tier: min-count best-fit (closest count ≤ actual;
--   fallback to lowest overshoot if none fits).
--
-- CAR SPEC REFERENCE
-- ─────────────────────────────────────────────────────────────────────
-- HST ALL        any car count
-- S              shunting / single unit — treated as universal
-- HST 2+4        6-car formation
-- HST 2+5        7-car formation
-- HST 2+4/2+5    one marker serving both (min = 6)
-- 2-4            generic 2-through-4 car trains (min = 2)
-- ─────────────────────────────────────────────────────────────────────
--
-- FORMAT PER ENTRY:
--   { label = "<Station> P<num> <CarSpec>",
--     pos   = Vector3.new(X, Y, Z),
--     look  = Vector3.new(X, Y, Z) }
--
-- The loader calls loadstring() on this file and expects:
--   return { markers = { ... }, groups = { ... } }
-- Do not add any other top-level code.

return {
    -- ══════════════════════════════════════════
    -- ROUTE / DESTINATION GROUPS
    -- ══════════════════════════════════════════
    groups = {
                    -- ── Route R080  →  Llyn-by-the-Sea ──────
            {
                route = "R080",
                dest  = "Llyn-by-the-Sea",
    
    markers = {

        -- ── Leighton City ──────────────────────
        { label = "Leighton City P1 HST 2+4/2+5",   pos = Vector3.new( 2487.3948,  8.0481, -37629.8125), look = Vector3.new(-0.9774, -0.0000, -0.2113) },
        { label = "Leighton City P2 HST 2+4/2+5",   pos = Vector3.new( 2487.4714,  8.0481, -37611.2305), look = Vector3.new(-0.9764,  0.0000,  0.2158) },
        { label = "Leighton City P3 HST 2+4/2+5",   pos = Vector3.new( 2487.6724,  8.0481, -37581.4805), look = Vector3.new(-0.9727,  0.0000, -0.2323) },
        { label = "Leighton City P4 HST 2+4/2+5",   pos = Vector3.new( 2487.3167,  8.0481, -37562.7031), look = Vector3.new(-0.9778,  0.0000,  0.2094) },
        { label = "Leighton City P5 HST 2+4",        pos = Vector3.new( 2023.1340,  8.0481, -37506.9531), look = Vector3.new( 0.9801, -0.0000, -0.1983) },
        { label = "Leighton City P6 HST 2+4",        pos = Vector3.new( 2022.9917,  8.0481, -37496.9297), look = Vector3.new( 0.9396, -0.0000,  0.3422) },

        -- ── St Helens Bridge ──────────────────
        { label = "St Helens Bridge P1 HST 2+4",    pos = Vector3.new(  -97.2319, 28.8480,  12318.4697), look = Vector3.new( 0.0621, -0.0000,  0.9981) },
        { label = "St Helens Bridge P2 HST 2+4",    pos = Vector3.new(  -23.7867, 36.5465,  12787.8682), look = Vector3.new(-0.0499,  0.0000, -0.9988) },

        -- ── Morganstown ────────────────────────
        { label = "Morganstown P2 HST ALL",           pos = Vector3.new(  -13.7378, 15.2481, -10699.8691), look = Vector3.new( 0.0194, -0.0000,  0.9998) },
        { label = "Morganstown P3 HST ALL",           pos = Vector3.new(   20.6718,  2.9481, -10713.3398), look = Vector3.new(-0.0369, -0.0000,  0.9993) },
        { label = "Morganstown P5 HST 2+4/2+5",      pos = Vector3.new(   88.5998, 15.2481, -10290.8203), look = Vector3.new(-0.0011, -0.0000, -1.0000) },

        -- ── Leighton Stepford Road ─────────────
        { label = "Leighton Stepford Road P2 2-4",   pos = Vector3.new(  235.9737,  8.0481, -36302.1367), look = Vector3.new(-0.0249,  0.0000,  0.9997) },
        { label = "Leighton Stepford Road P3 2-4",   pos = Vector3.new(  267.0383,  8.0481, -36301.9883), look = Vector3.new( 0.0025, -0.0000,  1.0000) },
        { label = "Leighton Stepford Road P4 2-4",   pos = Vector3.new(  286.7285,  8.0481, -35993.8008), look = Vector3.new(-0.0084, -0.0000, -1.0000) },
        { label = "Leighton Stepford Road P5 2-4",   pos = Vector3.new(  323.7382,  8.0481, -35993.8320), look = Vector3.new(-0.0084,  0.0000, -1.0000) },

        -- ── Westwyvern ─────────────────────────
        { label = "Westwyvern P1 HST 2+4/2+5",       pos = Vector3.new(41653.9375,  8.0479, -36806.6211), look = Vector3.new(-0.9999,  0.0000,  0.0169) },
        { label = "Westwyvern P4 HST 2+4",            pos = Vector3.new(41453.4492,  8.0479, -36727.6172), look = Vector3.new( 1.0000,  0.0000,  0.0000) },

        -- ── Northshore ─────────────────────────
        { label = "Northshore P0 2-4",                pos = Vector3.new(45489.1680,  8.0485, -25803.5273), look = Vector3.new( 0.0552, -0.0000, -0.9985) },
        { label = "Northshore P1 HST 2+5",            pos = Vector3.new(45442.3672,  7.9997, -25782.0527), look = Vector3.new(-0.0000,  0.0021, -1.0000) },
        { label = "Northshore P2 HST 2+4",            pos = Vector3.new(45416.9062,  8.0147, -25782.4648), look = Vector3.new( 0.0314,  0.0027, -0.9995) },
        { label = "Northshore P2 HST 2+5",            pos = Vector3.new(45418.5000,  8.0147, -25782.4648), look = Vector3.new( 0.0314,  0.0027, -0.9995) },

           },
        },
                    -- ── Route R080  →  Stepford Central ──────
        {
            route   = "R080",
            dest    = "Stepford Central",

            markers = {

                -- ── Northshore ──────────────────────────────
                { label = "Northshore P4 HST 2+5",                           pos = Vector3.new(45309.0156,     8.0159, -26038.7207),  look = Vector3.new(  0.0090,   0.0108,   0.9999) },
                { label = "Northshore P4 HST S",                             pos = Vector3.new(45310.3906,    16.3262, -26377.8848),  look = Vector3.new(  0.0000,   0.0000,   1.0000) },
                { label = "Northshore P3 HST S",                             pos = Vector3.new(45350.9258,    16.3262, -26377.6230),  look = Vector3.new( -0.0204,  -0.0000,   0.9998) },
                { label = "Northshore P3 HST 2+5",                           pos = Vector3.new(45351.0391,     7.9995, -26038.8672),  look = Vector3.new( -0.0322,  -0.0002,   0.9995) },

                -- ── Westwyvern ──────────────────────────────
                { label = "Westwyvern P2 HST 2+5",                           pos = Vector3.new(41240.5156,    16.0262, -36776.5000),  look = Vector3.new(  1.0000,  -0.0000,   0.0000) },
                { label = "Westwyvern P2 HST S",                             pos = Vector3.new(41015.2656,    15.4262, -36776.5742),  look = Vector3.new(  0.9997,  -0.0000,  -0.0256) },
                { label = "Westwyvern P4 HST S",                             pos = Vector3.new(41255.6953,    16.7337, -36729.5977),  look = Vector3.new(  0.9995,  -0.0000,  -0.0322) },
                { label = "Westwyvern P4 HST 2+4",                           pos = Vector3.new(41453.8672,    16.7337, -36729.5781),  look = Vector3.new(  0.9993,   0.0000,   0.0384) },

                -- ── Leighton City ──────────────────────
                { label = "Leighton City P1 HST 2+4/2+5",   pos = Vector3.new( 2487.3948,  8.0481, -37629.8125), look = Vector3.new(-0.9774, -0.0000, -0.2113) },
                { label = "Leighton City P2 HST 2+4/2+5",   pos = Vector3.new( 2487.4714,  8.0481, -37611.2305), look = Vector3.new(-0.9764,  0.0000,  0.2158) },
                { label = "Leighton City P3 HST 2+4/2+5",   pos = Vector3.new( 2487.6724,  8.0481, -37581.4805), look = Vector3.new(-0.9727,  0.0000, -0.2323) },
                { label = "Leighton City P4 HST 2+4/2+5",   pos = Vector3.new( 2487.3167,  8.0481, -37562.7031), look = Vector3.new(-0.9778,  0.0000,  0.2094) },
                { label = "Leighton City P5 HST 2+4",        pos = Vector3.new( 2023.1340,  8.0481, -37506.9531), look = Vector3.new( 0.9801, -0.0000, -0.1983) },
                { label = "Leighton City P6 HST 2+4",        pos = Vector3.new( 2022.9917,  8.0481, -37496.9297), look = Vector3.new( 0.9396, -0.0000,  0.3422) },

                -- ── Leighton Stepford Road ──────────────────
                { label = "Leighton Stepford Road P4 2-4",                   pos = Vector3.new(  286.4809,     8.0481, -35993.6406),  look = Vector3.new( -0.0022,  -0.0000,  -1.0000) },
                { label = "Leighton Stepford Road P5 2-4",                   pos = Vector3.new(  323.6160,     8.0481, -35993.7344),  look = Vector3.new(  0.0342,   0.0000,  -0.9994) },

                -- ── Morganstown ─────────────────────────────
                { label = "Morganstown P3 HST 2+4/5",                        pos = Vector3.new(   42.5579,    18.9981, -10165.5361),  look = Vector3.new( -0.0050,  -0.0000,  -1.0000) },
                { label = "Morganstown P3 HST 2+7",                          pos = Vector3.new(   41.9164,    15.5481, -10038.9482),  look = Vector3.new( -0.0096,  -0.0000,  -1.0000) },
                { label = "Morganstown P3 HST S",                            pos = Vector3.new(   39.1450,    15.2481, -9890.4268),  look = Vector3.new( -0.0005,  -0.0000,  -1.0000) },
                { label = "Morganstown P5 HST 2+4/5",                        pos = Vector3.new(   88.5454,    15.0481, -10290.6035),  look = Vector3.new(  0.0012,   0.0000,  -1.0000) },
                { label = "Morganstown P5 HST 2+7",                          pos = Vector3.new(   88.1393,    12.9481, -10169.8662),  look = Vector3.new( -0.0152,   0.0000,  -0.9999) },
                { label = "Morganstown P5 HST S",                            pos = Vector3.new(   87.9074,    15.2481, -10008.8252),  look = Vector3.new( -0.0089,   0.0000,  -1.0000) },

                -- ── St Helens Bridge ───────────────────────
                { label = "St Helens Bridge P2 HST 2+4",                     pos = Vector3.new(  -27.7170,    28.8480, 12788.8262),  look = Vector3.new( -0.0555,   0.0000,  -0.9985) },
                { label = "St Helens Bridge P2 HST 2+5",                    pos = Vector3.new(  -27.7835,    37.5287, 12848.0771),  look = Vector3.new( -0.0465,  -0.0000,  -0.9989) },

            },
        },
                                    -- ── Route R081  →  Llyn-by-the-Sea ──────
        {
            route   = "R081",
            dest    = "Llyn-by-the-Sea",

            markers = {
                
                -- ── Leighton City ───────────────────────────
        { label = "Leighton City P1 HST 2+4/2+5",   pos = Vector3.new( 2487.3948,  8.0481, -37629.8125), look = Vector3.new(-0.9774, -0.0000, -0.2113) },
        { label = "Leighton City P2 HST 2+4/2+5",   pos = Vector3.new( 2487.4714,  8.0481, -37611.2305), look = Vector3.new(-0.9764,  0.0000,  0.2158) },
        { label = "Leighton City P3 HST 2+4/2+5",   pos = Vector3.new( 2487.6724,  8.0481, -37581.4805), look = Vector3.new(-0.9727,  0.0000, -0.2323) },
        { label = "Leighton City P4 HST 2+4/2+5",   pos = Vector3.new( 2487.3167,  8.0481, -37562.7031), look = Vector3.new(-0.9778,  0.0000,  0.2094) },
        { label = "Leighton City P5 HST 2+4",        pos = Vector3.new( 2023.1340,  8.0481, -37506.9531), look = Vector3.new( 0.9801, -0.0000, -0.1983) },
        { label = "Leighton City P6 HST 2+4",        pos = Vector3.new( 2022.9917,  8.0481, -37496.9297), look = Vector3.new( 0.9396, -0.0000,  0.3422) },
            },
        },
                            -- ── Route R081  →  Stepford Central ──────
        {
            route   = "R081",
            dest    = "Stepford Central",

            markers = {
                
                -- ── Leighton City ───────────────────────────
                { label = "Leighton City P3 HST 2+4",                        pos = Vector3.new( 2023.5271,     8.0481, -37577.3867),  look = Vector3.new(  1.0000,   0.0000,   0.0018) },
                { label = "Leighton City P3 HST 2+5",                        pos = Vector3.new( 1925.4828,    15.2482, -37578.9688),  look = Vector3.new(  0.9993,   0.0000,   0.0361) },
                { label = "Leighton City P4 HST 2+4",                        pos = Vector3.new( 2023.7861,     8.0481, -37567.1523),  look = Vector3.new(  0.9998,  -0.0000,   0.0191) },
                { label = "Leighton City P4 HST 2+5",                        pos = Vector3.new( 1925.8259,    15.0481, -37566.3359),  look = Vector3.new(  1.0000,  -0.0000,  -0.0000) },
                { label = "Leighton City P4 HST S",                          pos = Vector3.new( 1764.4634,    15.1482, -37571.4062),  look = Vector3.new(  0.9981,   0.0000,   0.0620) },
                { label = "Leighton City P5 HST S",                          pos = Vector3.new( 1764.4341,    15.2482, -37517.6484),  look = Vector3.new(  0.9974,   0.0000,   0.0716) },
                { label = "Leighton City P5 HST 2+5",                        pos = Vector3.new( 1925.4204,    15.2482, -37509.0742),  look = Vector3.new(  1.0000,  -0.0000,   0.0000) },
                { label = "Leighton City P5 HST 2+4",                        pos = Vector3.new( 2023.4073,     8.0481, -37506.9766),  look = Vector3.new(  0.9998,   0.0000,  -0.0215) },
                { label = "Leighton City P6 HST S",                          pos = Vector3.new( 1764.1956,    15.2482, -37507.1758),  look = Vector3.new(  0.9969,   0.0000,   0.0792) },
                { label = "Leighton City P6 HST 2+5",                        pos = Vector3.new( 1925.8170,    15.0481, -37496.7695),  look = Vector3.new(  0.9998,  -0.0000,   0.0222) },
                { label = "Leighton City P6 HST 2+4",                        pos = Vector3.new( 2023.3121,     8.0481, -37496.8867),  look = Vector3.new(  0.9992,  -0.0000,  -0.0412) },
            },
        },
                                    -- ── Route R082  →  Stepford Central ──────
        {
            route   = "R082",
            dest    = "Stepford Central",

            markers = {

                -- ── Elsemere Junction ───────────────────────────
                { label = "Elsemere Junction P2 S",                          pos = Vector3.new(    6.8415,    15.2481,  4195.3271),  look = Vector3.new(  0.0014,   0.0000,  -1.0000) },
                { label = "Elsemere Junction P4 3-5",                        pos = Vector3.new(   63.8912,    15.2481,  4051.3955),  look = Vector3.new(  0.0059,  -0.0000,  -1.0000) },
                { label = "Elsemere Junction P4 S",                          pos = Vector3.new(   62.8487,    14.3481,  4200.9683),  look = Vector3.new( -0.0122,   0.0000,  -0.9999) },

                -- ── Hampton Hargate ─────────────────────────────
                { label = "Hampton Hargate P4 HST 2+4",                      pos = Vector3.new(   48.5212,     8.0477, -14466.1650),  look = Vector3.new(  0.0037,   0.0000,  -1.0000) },
                { label = "Hampton Hargate P4 HST 2+5",                      pos = Vector3.new(   51.1378,    14.0477, -14378.0195),  look = Vector3.new( -0.0054,   0.0000,  -1.0000) },
                { label = "Hampton Hargate P4 HST S",                        pos = Vector3.new(   48.3525,     8.0477, -14326.2549),  look = Vector3.new(  0.0037,  -0.0000,  -1.0000) },
                { label = "Hampton Hargate P2 HST 2+4",                      pos = Vector3.new(   -0.9668,     8.0483, -14465.5752),  look = Vector3.new( -0.0008,   0.0000,  -1.0000) },
                { label = "Hampton Hargate P2 HST 2+5",                      pos = Vector3.new(    6.5796,    14.0477, -14378.4961),  look = Vector3.new( -0.0235,   0.0000,  -0.9997) },
                { label = "Hampton Hargate P2 HST S",                        pos = Vector3.new(    2.7395,     8.0483, -14326.2549),  look = Vector3.new( -0.0254,   0.0000,  -0.9997) },

                -- ── Leighton Stepford Road ─────────────
                { label = "Leighton Stepford Road P2 2-4",   pos = Vector3.new(  235.9737,  8.0481, -36302.1367), look = Vector3.new(-0.0249,  0.0000,  0.9997) },
                { label = "Leighton Stepford Road P3 2-4",   pos = Vector3.new(  267.0383,  8.0481, -36301.9883), look = Vector3.new( 0.0025, -0.0000,  1.0000) },
                { label = "Leighton Stepford Road P4 2-4",   pos = Vector3.new(  286.7285,  8.0481, -35993.8008), look = Vector3.new(-0.0084, -0.0000, -1.0000) },
                { label = "Leighton Stepford Road P5 2-4",   pos = Vector3.new(  323.7382,  8.0481, -35993.8320), look = Vector3.new(-0.0084,  0.0000, -1.0000) },
                
                -- ── Leighton City ───────────────────────────
                { label = "Leighton City P3 HST 2+4",                        pos = Vector3.new( 2023.5271,     8.0481, -37577.3867),  look = Vector3.new(  1.0000,   0.0000,   0.0018) },
                { label = "Leighton City P3 HST 2+5",                        pos = Vector3.new( 1925.4828,    15.2482, -37578.9688),  look = Vector3.new(  0.9993,   0.0000,   0.0361) },
                { label = "Leighton City P4 HST 2+4",                        pos = Vector3.new( 2023.7861,     8.0481, -37567.1523),  look = Vector3.new(  0.9998,  -0.0000,   0.0191) },
                { label = "Leighton City P4 HST 2+5",                        pos = Vector3.new( 1925.8259,    15.0481, -37566.3359),  look = Vector3.new(  1.0000,  -0.0000,  -0.0000) },
                { label = "Leighton City P4 HST S",                          pos = Vector3.new( 1764.4634,    15.1482, -37571.4062),  look = Vector3.new(  0.9981,   0.0000,   0.0620) },
                { label = "Leighton City P5 HST S",                          pos = Vector3.new( 1764.4341,    15.2482, -37517.6484),  look = Vector3.new(  0.9974,   0.0000,   0.0716) },
                { label = "Leighton City P5 HST 2+5",                        pos = Vector3.new( 1925.4204,    15.2482, -37509.0742),  look = Vector3.new(  1.0000,  -0.0000,   0.0000) },
                { label = "Leighton City P5 HST 2+4",                        pos = Vector3.new( 2023.4073,     8.0481, -37506.9766),  look = Vector3.new(  0.9998,   0.0000,  -0.0215) },
                { label = "Leighton City P6 HST S",                          pos = Vector3.new( 1764.1956,    15.2482, -37507.1758),  look = Vector3.new(  0.9969,   0.0000,   0.0792) },
                { label = "Leighton City P6 HST 2+5",                        pos = Vector3.new( 1925.8170,    15.0481, -37496.7695),  look = Vector3.new(  0.9998,  -0.0000,   0.0222) },
                { label = "Leighton City P6 HST 2+4",                        pos = Vector3.new( 2023.3121,     8.0481, -37496.8867),  look = Vector3.new(  0.9992,  -0.0000,  -0.0412) },

                -- ── Edgemead ────────────────────────────────────
                { label = "Edgemead P3 HST 2+4",                             pos = Vector3.new(11040.6465,     8.0481, -37582.8906),  look = Vector3.new(  1.0000,   0.0000,  -0.0000) },
                { label = "Edgemead P3 HST S",                               pos = Vector3.new(10832.5420,    15.2481, -37580.5742),  look = Vector3.new(  1.0000,  -0.0000,   0.0000) },
                { label = "Edgemead P1 HST 2+5",                             pos = Vector3.new(11050.9756,    16.8482, -37619.1016),  look = Vector3.new(  1.0000,  -0.0000,   0.0000) },
                { label = "Edgemead P1 HST S",                               pos = Vector3.new(10814.5303,    16.5481, -37625.5508),  look = Vector3.new(  1.0000,  -0.0000,   0.0000) },

                -- ── Westwyvern ──────────────────────────────
                { label = "Westwyvern P2 HST 2+5",                           pos = Vector3.new(41240.5156,    16.0262, -36776.5000),  look = Vector3.new(  1.0000,  -0.0000,   0.0000) },
                { label = "Westwyvern P2 HST S",                             pos = Vector3.new(41015.2656,    15.4262, -36776.5742),  look = Vector3.new(  0.9997,  -0.0000,  -0.0256) },
                { label = "Westwyvern P4 HST S",                             pos = Vector3.new(41255.6953,    16.7337, -36729.5977),  look = Vector3.new(  0.9995,  -0.0000,  -0.0322) },
                { label = "Westwyvern P4 HST 2+4",                           pos = Vector3.new(41453.8672,    16.7337, -36729.5781),  look = Vector3.new(  0.9993,   0.0000,   0.0384) },
            },
        },

                                            -- ── Route R082  →  Westwyvern ──────
        {
            route   = "R082",
            dest    = "Westwyvern",

            markers = {
                
                -- ── Elsemere Junction ───────────────────────────
                { label = "Elsemere Junction P3 3-5",                        pos = Vector3.new(   16.3223,    14.3481,  3575.0034),  look = Vector3.new(  0.0217,  -0.0000,   0.9998) },
                { label = "Elsemere Junction P3 S",                          pos = Vector3.new(   21.0875,    13.2481,  3360.5439),  look = Vector3.new(  0.0244,   0.0000,   0.9997) },
                { label = "Elsemere Junction P1 S",                          pos = Vector3.new(  -22.5011,    15.2477,  3807.8337),  look = Vector3.new(  0.0018,  -0.0000,   1.0000) },

                -- ── Hampton Hargate ─────────────────────────────
                { label = "Hampton Hargate P1 HST 2+4/5",                    pos = Vector3.new(  -34.2787,     8.0483, -14865.0293),  look = Vector3.new(  0.0115,   0.0000,   0.9999) },
                { label = "Hampton Hargate P1 HST S",                        pos = Vector3.new(  -35.1287,     8.0483, -15022.0283),  look = Vector3.new( -0.0250,  -0.0000,   0.9997) },
                { label = "Hampton Hargate P2 HST S",                        pos = Vector3.new(   -4.8382,     8.0483, -15022.2314),  look = Vector3.new( -0.0160,   0.0000,   0.9999) },
                { label = "Hampton Hargate P2 HST 2+4/5",                    pos = Vector3.new(   -6.1119,     8.0483, -14867.1348),  look = Vector3.new(  0.0022,  -0.0000,   1.0000) },
                { label = "Hampton Hargate P3 HST 2+4/5",                    pos = Vector3.new(   20.5108,     8.0478, -14867.5645),  look = Vector3.new( -0.0251,   0.0000,   0.9997) },
                { label = "Hampton Hargate P3 HST S",                        pos = Vector3.new(   17.3311,     8.0476, -15022.4180),  look = Vector3.new( -0.0023,   0.0000,   1.0000) },
                { label = "Hampton Hargate P4 HST 2+4/5",                    pos = Vector3.new(   48.3736,     8.0477, -14870.0859),  look = Vector3.new( -0.0142,  -0.0000,   0.9999) },
                { label = "Hampton Hargate P4 HST S",                        pos = Vector3.new(   45.3417,     8.0477, -15022.2422),  look = Vector3.new(  0.0266,   0.0000,   0.9996) },

                -- ── Leighton Stepford Road ──────────────────
                { label = "Leighton Stepford Road P2 2-4",                   pos = Vector3.new(  235.9696,     8.0481, -36302.8047),  look = Vector3.new(  0.0006,  -0.0000,   1.0000) },
                { label = "Leighton Stepford Road P2 S",                     pos = Vector3.new(  238.0582,     8.0481, -36424.0898),  look = Vector3.new(  0.0169,   0.0000,   0.9999) },
                { label = "Leighton Stepford Road P3 2-4",                   pos = Vector3.new(  266.7312,     8.0481, -36302.6680),  look = Vector3.new(  0.0046,  -0.0000,   1.0000) },
                { label = "Leighton Stepford Road P3 S",                     pos = Vector3.new(  267.1041,     8.0481, -36424.0586),  look = Vector3.new(  0.0000,   0.0000,   1.0000) },
                
                -- ── Leighton City ───────────────────────────
                { label = "Leighton City P1 HST 2+4/5",                      pos = Vector3.new( 2487.9382,     8.0481, -37629.4570),  look = Vector3.new( -0.9996,   0.0000,  -0.0274) },
                { label = "Leighton City P1 HST S",                          pos = Vector3.new( 2584.2246,     8.0481, -37623.8594),  look = Vector3.new( -0.9980,   0.0000,  -0.0625) },
                { label = "Leighton City P2 HST 2+4/5",                      pos = Vector3.new( 2487.9717,     8.0481, -37611.3086),  look = Vector3.new( -1.0000,   0.0000,   0.0000) },
                { label = "Leighton City P2 HST S",                          pos = Vector3.new( 2584.0920,     8.0481, -37610.9219),  look = Vector3.new( -1.0000,   0.0000,   0.0081) },
                { label = "Leighton City P3 HST 2+4/5",                      pos = Vector3.new( 2487.9136,     8.0481, -37581.4062),  look = Vector3.new( -1.0000,  -0.0000,   0.0000) },
                { label = "Leighton City P3 HST S",                          pos = Vector3.new( 2584.1533,     8.0481, -37581.4062),  look = Vector3.new( -1.0000,   0.0000,   0.0000) },
                { label = "Leighton City P4 HST 2+4/5",                      pos = Vector3.new( 2487.9709,     8.0481, -37563.2930),  look = Vector3.new( -0.9999,   0.0000,   0.0158) },
                { label = "Leighton City P4 HST S",                          pos = Vector3.new( 2584.1492,     8.0481, -37567.9492),  look = Vector3.new( -0.9992,   0.0000,   0.0398) },

                -- ── Edgemead ────────────────────────────────────
                { label = "Edgemead P1 HST 2+5",                             pos = Vector3.new(11461.1260,     3.6481, -37642.6406),  look = Vector3.new( -1.0000,  -0.0000,   0.0000) },
                { label = "Edgemead P1 HST S",                               pos = Vector3.new(11690.0488,    15.2481, -37625.8672),  look = Vector3.new( -1.0000,   0.0000,   0.0000) },
                { label = "Edgemead P2 HST 2+4",                             pos = Vector3.new(11461.3701,     8.0481, -37610.8984),  look = Vector3.new( -0.9991,  -0.0000,  -0.0434) },
                { label = "Edgemead P2 HST S",                               pos = Vector3.new(11689.9414,    15.2481, -37611.5312),  look = Vector3.new( -1.0000,  -0.0000,   0.0000) },

                -- ── Westwyvern ──────────────────────────────
                { label = "Westwyvern P2 HST 2+5",                           pos = Vector3.new(41240.5156,    16.0262, -36776.5000),  look = Vector3.new(  1.0000,  -0.0000,   0.0000) },
                { label = "Westwyvern P2 HST S",                             pos = Vector3.new(41015.2656,    15.4262, -36776.5742),  look = Vector3.new(  0.9997,  -0.0000,  -0.0256) },
                { label = "Westwyvern P4 HST S",                             pos = Vector3.new(41255.6953,    16.7337, -36729.5977),  look = Vector3.new(  0.9995,  -0.0000,  -0.0322) },
                { label = "Westwyvern P4 HST 2+4",                           pos = Vector3.new(41453.8672,    16.7337, -36729.5781),  look = Vector3.new(  0.9993,   0.0000,   0.0384) },
            },
        },

                            -- ── Route R079  →  Stepford Central ──────
            {
                route = "R079",
                dest  = "Stepford Central",
    
    markers = {
        -- ── St Helens Bridge ──────────────────
        { label = "St Helens Bridge P2 HST 2+4",    pos = Vector3.new(  -23.7867, 36.5465,  12787.8682), look = Vector3.new(-0.0499,  0.0000, -0.9988) },

           },
        },
                            -- ── Route R079  →  Benton ──────
            {
                route = "R079",
                dest  = "Benton",
    
    markers = {
        -- ── St Helens Bridge ──────────────────
        { label = "St Helens Bridge P1 HST 2+4",    pos = Vector3.new(  -97.2319, 28.8480,  12318.4697), look = Vector3.new( 0.0621, -0.0000,  0.9981) },
           },
        },

                             -- ── Route R047  →  Port Benton ──────
            {
                route = "R047",
                dest  = "Port Benton",
    
    markers = {
        -- ── St Helens Bridge ──────────────────
        { label = "St Helens Bridge P3 Metro ALL",                  pos = Vector3.new(  -27.6491,    28.8481, 12303.5771),  look = Vector3.new(  0.1066,   0.0000,   0.9943) },
        { label = "St Helens Bridge P4 Metro ALL",                  pos = Vector3.new(   -1.9390,    28.8481, 12299.2412),  look = Vector3.new(  0.1273,   0.0000,   0.9919) },

        -- ── Angel Pass ──────────────────────────────────
        { label = "Angel Pass P1 Metro ALL",                         pos = Vector3.new(-1493.0542,     8.0484,  9454.1123),  look = Vector3.new(  0.9998,   0.0000,   0.0209) },

        -- ── Bodin ───────────────────────────────────────
        { label = "Bodin P1 3",                                      pos = Vector3.new(-2844.4788,     8.0481,  7335.8740),  look = Vector3.new( -0.0277,   0.0000,   0.9996) },

        -- ── Coxly ───────────────────────────────────────
        { label = "Coxly P1 Metro 3",                                pos = Vector3.new(-2867.8748,     2.8481,   609.1440),  look = Vector3.new( -0.0464,  -0.0000,   0.9989) },
        { label = "Coxly P2 Metro 3",                                pos = Vector3.new(-2842.1404,     8.0481,   596.2723),  look = Vector3.new( -0.0069,   0.0000,   1.0000) },

        -- ── Benton ──────────────────────────────────────
        { label = "Benton P8 4-8",                                   pos = Vector3.new(-2736.7734,     8.0481, -5552.0039),  look = Vector3.new( -0.0010,   0.0000,   1.0000) },
        { label = "Benton P7 Metro 3",                               pos = Vector3.new(-2776.5806,     8.0481, -5512.0630),  look = Vector3.new( -0.0210,  -0.0000,   0.9998) },
        { label = "Benton P6 Metro 3",                               pos = Vector3.new(-2799.2051,     8.0481, -5511.3882),  look = Vector3.new(  0.0014,  -0.0000,   1.0000) },
        { label = "Benton P5 Metro 3",                               pos = Vector3.new(-2834.0178,     8.0481, -5511.6128),  look = Vector3.new(  0.0015,  -0.0000,   1.0000) },
        { label = "Benton P4 Metro 3",                               pos = Vector3.new(-2856.8179,     8.0481, -5511.3491),  look = Vector3.new( -0.0044,   0.0000,   1.0000) },
        { label = "Benton P2 2-3",                                   pos = Vector3.new(-2927.6299,     8.0481, -5510.4385),  look = Vector3.new(  0.0263,  -0.0000,   0.9997) },
        { label = "Benton P1 3-4",                                   pos = Vector3.new(-2959.8315,     8.0481, -5602.7534),  look = Vector3.new( -0.0253,  -0.0000,   0.9997) },
           },
        },

                            -- ── Route R047  →  St Helens Bridge ──────
            {
                route = "R047",
                dest  = "St Helens Bridge",
    
    markers = {
        -- ── St Helens Bridge ──────────────────
        { label = "St Helens Bridge P4 T",                          pos = Vector3.new(   38.9624,    28.8481, 12701.2373),  look = Vector3.new( -0.0164,  -0.0000,  -0.9999) },
        { label = "St Helens Bridge P5 Metro ALL",                  pos = Vector3.new(   64.3154,    28.8480, 12604.6221),  look = Vector3.new( -0.0420,  -0.0000,  -0.9991) },
        
        -- ── Angel Pass ──────────────────────────────────
        { label = "Angel Pass P2 Metro ALL",                         pos = Vector3.new(-1184.2129,     8.0481,  9403.4873),  look = Vector3.new( -1.0000,  -0.0000,   0.0020) },
        { label = "Angel Pass P3 Metro ALL",                         pos = Vector3.new(-1184.2028,     2.8481,  9360.4277),  look = Vector3.new( -0.9986,   0.0000,  -0.0520) },

        -- ── Bodin ───────────────────────────────────────
        { label = "Bodin P3 Metro ALL",                              pos = Vector3.new(-2773.8010,     8.0481,  7590.8135),  look = Vector3.new(  0.0106,  -0.0000,  -0.9999) },
        { label = "Bodin P2 Metro ALL",                              pos = Vector3.new(-2789.8176,     8.0481,  7590.4692),  look = Vector3.new( -0.0025,   0.0000,  -1.0000) },

        -- ── Coxly ───────────────────────────────────────
        { label = "Coxly P3 Metro ALL",                              pos = Vector3.new(-2791.1377,     8.0481,   883.1125),  look = Vector3.new(  0.0178,   0.0000,  -0.9998) },

        -- ── Benton ──────────────────────────────────────
        { label = "Benton P2 2-3",                                   pos = Vector3.new(-2923.5920,     8.0481, -5368.6797),  look = Vector3.new( -0.0197,   0.0000,  -0.9998) },
        { label = "Benton P3 2-3",                                   pos = Vector3.new(-2903.4368,     8.0481, -5368.7749),  look = Vector3.new(  0.0101,  -0.0000,  -0.9999) },
        { label = "Benton P6 2-3",                                   pos = Vector3.new(-2795.4543,     8.0481, -5345.7261),  look = Vector3.new(  0.0144,  -0.0000,  -0.9999) },
        { label = "Benton P8 Metro 3",                               pos = Vector3.new(-2738.8296,     8.0481, -5347.6763),  look = Vector3.new(  0.0309,   0.0000,  -0.9995) },
        { label = "Benton P10 Metro 3",                              pos = Vector3.new(-2716.1729,     8.0481, -5304.2441),  look = Vector3.new(  0.0075,   0.0000,  -1.0000) },
        { label = "Benton P11 Metro 3",                              pos = Vector3.new(-2679.6040,     8.0481, -5346.3291),  look = Vector3.new( -0.0052,  -0.0000,  -1.0000) },
        { label = "Benton P12 Metro 3",                              pos = Vector3.new(-2659.6323,     8.0481, -5345.9629),  look = Vector3.new( -0.0083,   0.0000,  -1.0000) },
        { label = "Benton P13 Metro 3",                              pos = Vector3.new(-2621.7998,     8.0481, -5346.1606),  look = Vector3.new(  0.0151,   0.0000,  -0.9999) },
           },
        },

        -- ──────────────────────────────────────
        -- Example: R080 terminating at Leighton City
        -- Uncomment and fill real coords to use.
        -- ──────────────────────────────────────
        -- {
        --     route = "R080",
        --     dest  = "Leighton City",
        --
        --     markers = {
        --
        --         -- ── Stepford Central ───────
        --         { label = "Stepford Central P3 HST 2+4", pos = Vector3.new(X,Y,Z), look = Vector3.new(X,Y,Z) },
        --         { label = "Stepford Central P3 HST 2+5", pos = Vector3.new(X,Y,Z), look = Vector3.new(X,Y,Z) },
        --
        --         -- ── Berrily ────────────────
        --         { label = "Berrily P1 HST 2+4", pos = Vector3.new(X,Y,Z), look = Vector3.new(X,Y,Z) },
        --
        --     },
        -- },

    },

}
