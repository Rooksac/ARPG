{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_chest",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_entity","path":"objects/obj_entity/obj_entity.yy",},"propertyId":{"name":"entityActivateScript","path":"objects/obj_entity/obj_entity.yy",},"value":"openChest",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_entity","path":"objects/obj_entity/obj_entity.yy",},"propertyId":{"name":"entityCollision","path":"objects/obj_entity/obj_entity.yy",},"value":"True",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_entity","path":"objects/obj_entity/obj_entity.yy",},"propertyId":{"name":"entity_shadow","path":"objects/obj_entity/obj_entity.yy",},"value":"False",},
  ],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
  "parentObjectId": {
    "name": "obj_entity",
    "path": "objects/obj_entity/obj_entity.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"chestID","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"-1","varType":2,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_chest",
    "path": "sprites/spr_chest/spr_chest.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}