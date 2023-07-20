{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "room_shop",
  "creationCodeFile": "",
  "inheritCode": true,
  "inheritCreationOrder": true,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_65F7CC64","path":"rooms/room_shop/room_shop.yy",},
    {"name":"inst_304F526E","path":"rooms/room_shop/room_shop.yy",},
    {"name":"inst_1969485C","path":"rooms/room_shop/room_shop.yy",},
    {"name":"inst_29438C7D","path":"rooms/room_shop/room_shop.yy",},
    {"name":"inst_2A66DC43","path":"rooms/room_shop/room_shop.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_65F7CC64","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_65F7CC64","path":"rooms/room_parent/room_parent.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_sorcerer","path":"objects/obj_sorcerer/obj_sorcerer.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":384.0,"y":128.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_304F526E","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"targetX","path":"objects/obj_room_exit/obj_room_exit.yy",},"value":"257",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"targetY","path":"objects/obj_room_exit/obj_room_exit.yy",},"value":"50",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"targetRoom","path":"objects/obj_room_exit/obj_room_exit.yy",},"value":"room_village",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"keepWalking","path":"objects/obj_room_exit/obj_room_exit.yy",},"value":"False",},
          ],"rotation":0.0,"scaleX":0.5,"scaleY":0.5,"x":416.0,"y":96.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1969485C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":1,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_shop_item","path":"objects/obj_shop_item/obj_shop_item.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_shop_item","path":"objects/obj_shop_item/obj_shop_item.yy",},"propertyId":{"name":"itemCost","path":"objects/obj_shop_item/obj_shop_item.yy",},"value":"5",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_shop_item","path":"objects/obj_shop_item/obj_shop_item.yy",},"propertyId":{"name":"itemAmount","path":"objects/obj_shop_item/obj_shop_item.yy",},"value":"3",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_entity","path":"objects/obj_entity/obj_entity.yy",},"propertyId":{"name":"entityActivateArgs","path":"objects/obj_entity/obj_entity.yy",},"value":"[\"Bombs (Cost: 5g)\\nFor blowing things up.\", [\"6:Purchase\", \"0:No thanks.\"]]",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":128.0,"y":192.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_29438C7D","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":2,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_shop_item","path":"objects/obj_shop_item/obj_shop_item.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_shop_item","path":"objects/obj_shop_item/obj_shop_item.yy",},"propertyId":{"name":"item","path":"objects/obj_shop_item/obj_shop_item.yy",},"value":"ITEM.AXE",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_shop_item","path":"objects/obj_shop_item/obj_shop_item.yy",},"propertyId":{"name":"itemCost","path":"objects/obj_shop_item/obj_shop_item.yy",},"value":"10",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_shop_item","path":"objects/obj_shop_item/obj_shop_item.yy",},"propertyId":{"name":"itemAmount","path":"objects/obj_shop_item/obj_shop_item.yy",},"value":"5",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_entity","path":"objects/obj_entity/obj_entity.yy",},"propertyId":{"name":"entityActivateArgs","path":"objects/obj_entity/obj_entity.yy",},"value":"[\"Throwing Axe (Cost: 10g)\\nLike a regular axe but you throw it\", [\"6:Purchase\", \"0:No thanks.\"]]",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":256.0,"y":192.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2A66DC43","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":3,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_shop_item","path":"objects/obj_shop_item/obj_shop_item.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_shop_item","path":"objects/obj_shop_item/obj_shop_item.yy",},"propertyId":{"name":"item","path":"objects/obj_shop_item/obj_shop_item.yy",},"value":"ITEM.HOOK",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_shop_item","path":"objects/obj_shop_item/obj_shop_item.yy",},"propertyId":{"name":"itemCost","path":"objects/obj_shop_item/obj_shop_item.yy",},"value":"20",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_entity","path":"objects/obj_entity/obj_entity.yy",},"propertyId":{"name":"entityActivateArgs","path":"objects/obj_entity/obj_entity.yy",},"value":"[\"Hookshot (Cost: 20g)\\ngrab things from afar!\", [\"6:Purchase\", \"0:No thanks.\"]]",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":384.0,"y":192.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tiles_upper","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":0,"SerialiseWidth":0,"TileSerialiseData":[
],},"tilesetId":null,"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tiles_main","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"properties":[],"tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[
-44,-2147483648,-2,266,4,263,262,266,266,-4,0,-14,-2147483648,-3,0,-53,-2147483648,10,192,193,
-2147483648,-2147483648,192,193,-2147483648,-2147483648,192,193,-44,-2147483648,1,1,-17,-2147483648,-4,1,-40,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tile_interor","path":"tilesets/tile_interor/tile_interor.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tiles_lower","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"properties":[],"tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[
-22,1,1,32,-11,33,1,34,-7,1,1,64,-11,65,1,66,-7,1,1,96,
-10,99,2,132,66,-7,1,1,96,-11,99,1,66,-7,1,1,96,-11,99,1,
66,-7,1,1,96,-11,99,1,66,-7,1,1,96,-11,99,1,98,-7,1,1,
128,-11,129,1,130,-45,1,-20,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tile_interor","path":"tilesets/tile_interor/tile_interor.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Collision","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":23,"SerialiseWidth":40,"TileCompressedData":[
-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-6,0,-20,1,-14,-2147483648,-6,0,1,1,-13,0,-20,-2147483648,-6,0,1,1,-13,0,
-20,-2147483648,-6,0,1,1,-13,0,-7,-2147483648,1,1,-12,-2147483648,-6,0,1,1,-13,0,-7,-2147483648,1,1,-12,-2147483648,-6,0,1,1,-13,0,-7,-2147483648,1,1,-12,-2147483648,-6,0,
1,1,-13,0,-7,-2147483648,1,1,-18,-2147483648,2,1,-2147483648,-4,1,-4,-2147483648,-4,1,-4,-2147483648,-4,1,1,0,-17,-2147483648,2,1,-2147483648,-4,1,-4,-2147483648,-4,1,-4,-2147483648,-4,1,
-18,-2147483648,1,1,-20,-2147483648,1,1,-18,-2147483648,1,1,-3,0,-7,-2147483648,-2,0,-8,-2147483648,2,1,0,-17,-2147483648,-22,1,1,0,-251,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tile_coll","path":"tilesets/tile_coll/tile_coll.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Colliision_Pit","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":0,"SerialiseWidth":0,"TileSerialiseData":[
],},"tilesetId":null,"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": {
    "name": "room_parent",
    "path": "rooms/room_parent/room_parent.yy",
  },
  "physicsSettings": {
    "inheritPhysicsSettings": true,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 360,
    "inheritRoomSettings": true,
    "persistent": false,
    "Width": 640,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":720,"hspeed":-1,"hview":360,"inherit":true,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1280,"wview":640,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": true,
  },
  "volume": 1.0,
}