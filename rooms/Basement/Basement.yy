{
  "$GMRoom": "v1",
  "%Name"  : "rm_basement",          // ✓ snake_case, “rm_” prefix

  /* ────────────────────────────── 1. METADATA ────────────────────────────── */
  "parent": { "name": "Rooms", "path": "folders/Rooms.yy" },
  "isDnd" : false,
  "volume": 1.0,

  /* ────────────────────────────── 2. SETTINGS  ───────────────────────────── */
  "roomSettings": {
    "Width" : 320,
    "Height": 179,
    "persistent": false,
    "inheritRoomSettings": false
  },

  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0,
    "PhysicsWorldGravityY": 10,
    "PhysicsWorldPixToMetres": 0.1
  },

  /* ────────────────────────────── 3. LAYERS  ─────────────────────────────── */
  "layers": [

    /* 3A ▸ BACKGROUND */
    {
      "$GMRBackgroundLayer": "",
      "%Name"   : "ly_bg",
      "depth"   : 300,
      "spriteId": { "name": "spr_basement_bg", "path": "sprites/spr_basement_bg/spr_basement_bg.yy" },
      "htiled": true, "vtiled": true,
      "gridX": 32, "gridY": 32,
      "userdefinedDepth": false, "visible": true
    },

    /* 3B ▸ TILES – collision first, render second (GPU‑friendly) */
    {
      "$GMRTileLayer": "",
      "%Name"  : "ly_tiles_col",
      "depth"  : 100,
      "tilesetId": { "name": "ts_city_collision", "path": "tilesets/ts_city_collision/ts_city_collision.yy" },
      "tiles": { "TileDataFormat": 1 /* ← bin compressed, omitted */ },
      "visible": false             /* collision layer hidden */
    },
    {
      "$GMRTileLayer": "",
      "%Name"  : "ly_tiles_gfx",
      "depth"  : 200,
      "tilesetId": { "name": "ts_city_gfx", "path": "tilesets/ts_city_gfx/ts_city_gfx.yy" },
      "tiles": { "TileDataFormat": 1 /* ← bin compressed, omitted */ },
      "visible": true
    },

    /* 3C ▸ INSTANCES  (y‑sorted via a single layer) */
    {
      "$GMRInstanceLayer": "",
      "%Name": "ly_instances",
      "depth": 0,
      "gridX": 32, "gridY": 32,
      "instances": [
        /* ▸ PLAYER */
        {
          "$GMRInstance": "v2",
          "%Name"  : "inst_player",
          "objectId": { "name": "obj_player", "path": "objects/obj_player/obj_player.yy" },
          "x": 168, "y": 106
        },
        /* ▸ NPC – with overridden props declared inline */
        {
          "$GMRInstance": "v2",
          "%Name": "inst_npc_butler",
          "objectId": { "name": "obj_npc1", "path": "objects/obj_npc1/obj_npc1.yy" },
          "x": 226, "y": 116,
          "properties": [
            { "$GMOverriddenProperty": "v1", "objectId": "obj_npc_parent",
              "propertyId": "final_npc", "value": true },
            { "$GMOverriddenProperty": "v1",
              "propertyId": "dialog", "value": "global.welcome_dialog" }
          ]
        }
      ]
    }
  ],

  /* ────────────────────────────── 4. CAMERA / VIEW  ───────────────────────── */
  "viewSettings": { "enableViews": true, "clearDisplayBuffer": true },

  "views": [
    {
      "visible": true,
      "objectId": { "name": "obj_player", "path": "objects/obj_player/obj_player.yy" },
      "wview": 320, "hview": 180,           // 16:9 logical view
      "wport": 1280, "hport": 720,          // dynamic scaling handled in code
      "hborder": 160, "vborder": 90
    }
  ],

  /* ────────────────────────────── 5. SERIALISATION FOOTER ─────────────────── */
  "resourceVersion": "2.0",
  "resourceType": "GMRoom"
}
