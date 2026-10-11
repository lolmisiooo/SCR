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

        -- ── St. Helens Bridge ──────────────────
        { label = "St. Helens Bridge P1 HST 2+4",    pos = Vector3.new(  -97.2319, 28.8480,  12318.4697), look = Vector3.new( 0.0621, -0.0000,  0.9981) },
        { label = "St. Helens Bridge P2 HST 2+4",    pos = Vector3.new(  -23.7867, 36.5465,  12787.8682), look = Vector3.new(-0.0499,  0.0000, -0.9988) },

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

                -- ── Leighton City ───────────────────────────
                { label = "Leighton City P4 HST 2+4",                        pos = Vector3.new( 2023.7861,     8.0481, -37567.1523),  look = Vector3.new(  0.9998,  -0.0000,   0.0191) },
                { label = "Leighton City P4 HST 2+5",                        pos = Vector3.new( 1925.8259,    15.0481, -37566.3359),  look = Vector3.new(  1.0000,  -0.0000,  -0.0000) },
                { label = "Leighton City P4 HST S",                          pos = Vector3.new( 1764.4634,    15.1482, -37571.4062),  look = Vector3.new(  0.9981,   0.0000,   0.0620) },
                { label = "Leighton City P5 HST S",                          pos = Vector3.new( 1764.4341,    15.2482, -37517.6484),  look = Vector3.new(  0.9974,   0.0000,   0.0716) },
                { label = "Leighton City P5 HST 2+5",                        pos = Vector3.new( 1925.4204,    15.2482, -37509.0742),  look = Vector3.new(  1.0000,  -0.0000,   0.0000) },
                { label = "Leighton City P6 HST S",                          pos = Vector3.new( 1764.1956,    15.2482, -37507.1758),  look = Vector3.new(  0.9969,   0.0000,   0.0792) },
                { label = "Leighton City P6 HST 2+5",                        pos = Vector3.new( 1925.8170,    15.0481, -37496.7695),  look = Vector3.new(  0.9998,  -0.0000,   0.0222) },

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

                -- ── St. Helens Bridge ───────────────────────
                { label = "St. Helens Bridge P2 HST 2+4",                    pos = Vector3.new(  -23.6551,    36.4473, 12787.7305),  look = Vector3.new(  0.0059,  -0.0000,  -1.0000) },
                { label = "St. Helens Bridge P2 HST 2+5",                    pos = Vector3.new(  -27.7835,    37.5287, 12848.0771),  look = Vector3.new( -0.0465,  -0.0000,  -0.9989) },

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
