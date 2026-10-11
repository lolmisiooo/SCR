-- CarStopMarkers.lua
-- Remote car marker data for SCR Autopilot.
-- URL: https://raw.githubusercontent.com/lolmisiooo/SCR/refs/heads/main/CarStopMarkers.lua
--
-- HOW TO ADD A MARKER
-- 1. Stand at the exact stop point in-game, note the world position.
-- 2. Add one entry per PHYSICAL marker below.
-- 3. Label format (EXACT):  "<Station Name> P<num> <CarSpec>"
--
-- CAR SPEC REFERENCE
-- ─────────────────────────────────────────────────────────────────────
-- Spec             Meaning
-- ─────────────────────────────────────────────────────────────────────
-- HST ALL          Any car count — universal marker
-- S                Shunting / single unit — treated as universal
-- HST 2+4          Exactly a 2+4 formation (6 cars total)
-- HST 2+5          Exactly a 2+5 formation (7 cars total)
-- HST 2+4/2+5      One physical marker serving both 2+4 and 2+5
--                  (minimum count = 6, so a 6-car train stops here)
-- HST 2+4/HST 2+5  Same as above — "HST" prefix on each part is fine
-- 2-4              Generic marker for 2-through-4 car trains (min = 2)
-- ─────────────────────────────────────────────────────────────────────
--
-- SELECTION RULE (enforced in code, not by label):
--   The script counts the train's actual cars, then picks the marker
--   whose minimum accepted count is closest to (and ≤) the actual count.
--   If no marker fits under or equal, it falls back to the next one up.
--
-- MULTIPLE MARKERS AT ONE PLATFORM:
--   Just add one entry per physical marker.  The selector picks the best fit.
--   Example — Northshore P2 has two markers:
--     { label = "Northshore P2 HST 2+4",  pos = Vector3.new(...), look = ... }
--     { label = "Northshore P2 HST 2+5",  pos = Vector3.new(...), look = ... }
--   A 6-car train (2+4) stops at the first; a 7-car train (2+5) stops at the second.
--
-- 4. pos  = Vector3.new(X, Y, Z)  ← world position of the HumanoidRootPart stop marker
-- 5. look = Vector3.new(X, Y, Z)  ← LookVector of the marker part (direction train faces)
--
-- The loader calls loadstring() on this file and expects:
--   return { markers = { ... } }
-- Do not add any other top-level code.

return {
    markers = {

        -- ══════════════════════════════════════════
        -- Leighton City
        -- ══════════════════════════════════════════
        { label = "Leighton City P1 HST 2+4/2+5",   pos = Vector3.new( 2487.3948,  8.0481, -37629.8125), look = Vector3.new(-0.9774, -0.0000, -0.2113) },
        { label = "Leighton City P2 HST 2+4/2+5",   pos = Vector3.new( 2487.4714,  8.0481, -37611.2305), look = Vector3.new(-0.9764,  0.0000,  0.2158) },
        { label = "Leighton City P3 HST 2+4/2+5",   pos = Vector3.new( 2487.6724,  8.0481, -37581.4805), look = Vector3.new(-0.9727,  0.0000, -0.2323) },
        { label = "Leighton City P4 HST 2+4/2+5",   pos = Vector3.new( 2487.3167,  8.0481, -37562.7031), look = Vector3.new(-0.9778,  0.0000,  0.2094) },
        { label = "Leighton City P5 HST 2+4",        pos = Vector3.new( 2023.1340,  8.0481, -37506.9531), look = Vector3.new( 0.9801, -0.0000, -0.1983) },
        { label = "Leighton City P6 HST 2+4",        pos = Vector3.new( 2022.9917,  8.0481, -37496.9297), look = Vector3.new( 0.9396, -0.0000,  0.3422) },

        -- ══════════════════════════════════════════
        -- St. Helens Bridge
        -- ══════════════════════════════════════════
        { label = "St. Helens Bridge P1 HST 2+4",    pos = Vector3.new(  -97.2319, 28.8480,  12318.4697), look = Vector3.new( 0.0621, -0.0000,  0.9981) },
        { label = "St. Helens Bridge P2 HST 2+4",    pos = Vector3.new(  -23.7867, 36.5465,  12787.8682), look = Vector3.new(-0.0499,  0.0000, -0.9988) },

        -- ══════════════════════════════════════════
        -- Morganstown
        -- ══════════════════════════════════════════
        { label = "Morganstown P2 HST ALL",           pos = Vector3.new(  -13.7378, 15.2481, -10699.8691), look = Vector3.new( 0.0194, -0.0000,  0.9998) },
        { label = "Morganstown P3 HST ALL",           pos = Vector3.new(   20.6718,  2.9481, -10713.3398), look = Vector3.new(-0.0369, -0.0000,  0.9993) },
        { label = "Morganstown P5 HST 2+4/2+5",      pos = Vector3.new(   88.5998, 15.2481, -10290.8203), look = Vector3.new(-0.0011, -0.0000, -1.0000) },

        -- ══════════════════════════════════════════
        -- Leighton Stepford Road
        -- ══════════════════════════════════════════
        { label = "Leighton Stepford Road P2 2-4",   pos = Vector3.new(  235.9737,  8.0481, -36302.1367), look = Vector3.new(-0.0249,  0.0000,  0.9997) },
        { label = "Leighton Stepford Road P3 2-4",   pos = Vector3.new(  267.0383,  8.0481, -36301.9883), look = Vector3.new( 0.0025, -0.0000,  1.0000) },
        { label = "Leighton Stepford Road P4 2-4",   pos = Vector3.new(  286.7285,  8.0481, -35993.8008), look = Vector3.new(-0.0084, -0.0000, -1.0000) },
        { label = "Leighton Stepford Road P5 2-4",   pos = Vector3.new(  323.7382,  8.0481, -35993.8320), look = Vector3.new(-0.0084,  0.0000, -1.0000) },

        -- ══════════════════════════════════════════
        -- Westwyvern
        -- ══════════════════════════════════════════
        { label = "Westwyvern P1 HST 2+4/2+5",      pos = Vector3.new(41653.9375,  8.0479, -36806.6211), look = Vector3.new(-0.9999,  0.0000,  0.0169) },
        { label = "Westwyvern P2 HST 2+5",           pos = Vector3.new(41240.8164, 16.0262, -36776.3672), look = Vector3.new( 0.9997,  0.0000,  0.0238) },
        { label = "Westwyvern P4 HST 2+4",           pos = Vector3.new(41453.4492,  8.0479, -36727.6172), look = Vector3.new( 1.0000,  0.0000,  0.0000) },

        -- ══════════════════════════════════════════
        -- Northshore — two markers on P2 and P3/P4 for different formations
        -- ══════════════════════════════════════════
        { label = "Northshore P0 2-4",               pos = Vector3.new(45489.1680,  8.0485, -25803.5273), look = Vector3.new( 0.0552, -0.0000, -0.9985) },
        -- P1: only a 2+5 marker exists — a 2+4 train falls back to this (next marker up)
        { label = "Northshore P1 HST 2+5",           pos = Vector3.new(45442.3672,  7.9997, -25782.0527), look = Vector3.new(-0.0000,  0.0021, -1.0000) },
        -- P2: separate physical markers for 2+4 and 2+5
        { label = "Northshore P2 HST 2+4",           pos = Vector3.new(45416.9062,  8.0147, -25782.4648), look = Vector3.new( 0.0314,  0.0027, -0.9995) },
        { label = "Northshore P2 HST 2+5",           pos = Vector3.new(45418.5000,  8.0147, -25782.4648), look = Vector3.new( 0.0314,  0.0027, -0.9995) },
        { label = "Northshore P3 HST 2+5",           pos = Vector3.new(45350.7305,  8.0085, -26038.7305), look = Vector3.new(-0.0171,  0.0020,  0.9999) },
        { label = "Northshore P4 HST 2+5",           pos = Vector3.new(45309.0664,  8.0102, -26039.1309), look = Vector3.new(-0.0083, -0.0038,  1.0000) },

        -- ══════════════════════════════════════════
        -- YOUR STATION HERE — copy a block like this:
        -- One entry per physical marker. Multiple entries at the same P<num>
        -- are fine — the script picks the best fit for the train's car count.
        -- ══════════════════════════════════════════
        -- { label = "Station Name P1 HST 2+4",      pos = Vector3.new(X, Y, Z), look = Vector3.new(X, Y, Z) },
        -- { label = "Station Name P1 HST 2+5",      pos = Vector3.new(X, Y, Z), look = Vector3.new(X, Y, Z) },
        -- { label = "Station Name P2 HST ALL",       pos = Vector3.new(X, Y, Z), look = Vector3.new(X, Y, Z) },

    }
}
