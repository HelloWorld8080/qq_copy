/*
 Navicat Premium Data Transfer

 Source Server         : zhixin
 Source Server Type    : MongoDB
 Source Server Version : 50003
 Source Host           : localhost:27017
 Source Schema         : qqdb

 Target Server Type    : MongoDB
 Target Server Version : 50003
 File Encoding         : 65001

 Date: 10/11/2021 17:04:57
*/


// ----------------------------
// Collection structure for address_point
// ----------------------------
db.getCollection("address_point").drop();
db.createCollection("address_point");

// ----------------------------
// Documents of address_point
// ----------------------------

// ----------------------------
// Collection structure for info
// ----------------------------
db.getCollection("info").drop();
db.createCollection("info");

// ----------------------------
// Documents of info
// ----------------------------

// ----------------------------
// Collection structure for map
// ----------------------------
db.getCollection("map").drop();
db.createCollection("map");

// ----------------------------
// Documents of map
// ----------------------------

// ----------------------------
// Collection structure for message
// ----------------------------
db.getCollection("message").drop();
db.createCollection("message");

// ----------------------------
// Documents of message
// ----------------------------
db.getCollection("message").insert([ {
    _id: ObjectId("618a379c11410000fb0061b3"),
    id: "m1",
    from: "u2",
    to: "u1",
    "send_time": ISODate("2021-11-02T08:58:57.065Z"),
    info: {
        text: "你好,我是lx",
        img: "img"
    },
    "s_id": "s1"
} ]);
db.getCollection("message").insert([ {
    _id: ObjectId("618a673e11410000fb0061b4"),
    id: "m2",
    "s_id": "s1",
    from: "u1",
    info: {
        text: "你好,我是liuxun",
        img: "img"
    },
    "send_time": ISODate("2021-11-03T08:58:57.065Z"),
    to: "u2"
} ]);
db.getCollection("message").insert([ {
    _id: ObjectId("618a6ec611410000fb0061b5"),
    id: "m3",
    from: "u3",
    info: {
        text: "你好,我是u3",
        img: "img"
    },
    "send_time": ISODate("2021-11-04T08:51:57.065Z"),
    to: "u1",
    "s_id": "s2"
} ]);
db.getCollection("message").insert([ {
    _id: ObjectId("618b32f46c0c0000ac001fa2"),
    id: "m4",
    from: "u4",
    to: "u3",
    info: {
        text: "你好，我是u4",
        img: "img"
    },
    "s_id": "s3",
    "send_time": ISODate("2021-11-10T00:00:00.000Z")
} ]);
db.getCollection("message").insert([ {
    _id: ObjectId("618b79053261e61247a54be0"),
    id: "m1636530437412",
    info: {
        text: "dsda",
        img: "img"
    },
    from: "u1",
    to: "u2",
    "send_time": ISODate("2021-11-10T07:47:17.413Z"),
    "s_id": "s1",
    __v: NumberInt("0")
} ]);
db.getCollection("message").insert([ {
    _id: ObjectId("618b79d63261e61247a54be2"),
    id: "m1636530646545",
    info: {
        text: "dsaf",
        img: "img"
    },
    from: "u1",
    to: "u2",
    "send_time": ISODate("2021-11-10T07:50:46.545Z"),
    "s_id": "s1",
    __v: NumberInt("0")
} ]);
db.getCollection("message").insert([ {
    _id: ObjectId("618b7a553261e61247a54be4"),
    id: "m1636530773393",
    info: {
        text: "fdfd",
        img: "img"
    },
    from: "u1",
    to: "u2",
    "send_time": ISODate("2021-11-10T07:52:53.393Z"),
    "s_id": "s1",
    __v: NumberInt("0")
} ]);
db.getCollection("message").insert([ {
    _id: ObjectId("618b7ad83261e61247a54be6"),
    id: "m1636530904653",
    info: {
        text: "fdfjd",
        img: "img"
    },
    to: "u1",
    "send_time": ISODate("2021-11-10T07:55:04.653Z"),
    "s_id": "s1",
    __v: NumberInt("0")
} ]);
db.getCollection("message").insert([ {
    _id: ObjectId("618b7e6c3261e61247a54be9"),
    id: "m1636531820499",
    info: {
        text: "fdjks",
        img: "img"
    },
    to: "u1",
    "send_time": ISODate("2021-11-10T08:10:20.499Z"),
    "s_id": "s1",
    __v: NumberInt("0")
} ]);
db.getCollection("message").insert([ {
    _id: ObjectId("618b831f6c78d47cd049f89b"),
    id: "m1636533023078",
    info: {
        text: "dsaddsf",
        img: "img"
    },
    to: "u1",
    "send_time": ISODate("2021-11-10T08:30:23.078Z"),
    "s_id": "s1",
    __v: NumberInt("0")
} ]);
db.getCollection("message").insert([ {
    _id: ObjectId("618b832f6c78d47cd049f89e"),
    id: "m1636533039981",
    info: {
        text: "fdjsfjf",
        img: "img"
    },
    to: "u1",
    "send_time": ISODate("2021-11-10T08:30:39.981Z"),
    "s_id": "s1",
    __v: NumberInt("0")
} ]);
db.getCollection("message").insert([ {
    _id: ObjectId("618b83356c78d47cd049f8a0"),
    id: "m1636533045877",
    info: {
        text: "fdjff",
        img: "img"
    },
    to: "u1",
    "send_time": ISODate("2021-11-10T08:30:45.877Z"),
    "s_id": "s1",
    __v: NumberInt("0")
} ]);
db.getCollection("message").insert([ {
    _id: ObjectId("618b83376c78d47cd049f8a2"),
    id: "m1636533047099",
    info: {
        text: "fdjff",
        img: "img"
    },
    to: "u1",
    "send_time": ISODate("2021-11-10T08:30:47.099Z"),
    "s_id": "s1",
    __v: NumberInt("0")
} ]);
db.getCollection("message").insert([ {
    _id: ObjectId("618b833b6c78d47cd049f8a4"),
    id: "m1636533051932",
    info: {
        text: "fdjff",
        img: "img"
    },
    to: "u1",
    "send_time": ISODate("2021-11-10T08:30:51.932Z"),
    "s_id": "s1",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for session
// ----------------------------
db.getCollection("session").drop();
db.createCollection("session");

// ----------------------------
// Documents of session
// ----------------------------
db.getCollection("session").insert([ {
    _id: ObjectId("618b463f6c0c0000ac001fa6"),
    "s_id": "s2",
    from: "u1",
    to: "u2"
} ]);
db.getCollection("session").insert([ {
    _id: ObjectId("618b466b6c0c0000ac001fa7"),
    "s_id": "s1",
    from: "u2",
    to: "u1"
} ]);

// ----------------------------
// Collection structure for user
// ----------------------------
db.getCollection("user").drop();
db.createCollection("user");

// ----------------------------
// Documents of user
// ----------------------------
db.getCollection("user").insert([ {
    _id: ObjectId("618a355b11410000fb0061b2"),
    "u_id": "u1",
    "u_name": "u1",
    "u_nikename": "刘少",
    "u_lable": "见路不走"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("618b3f256c0c0000ac001fa3"),
    "u_id": "u2",
    "u_name": "u2",
    "u_lable": "唯见因果",
    "u_nikename": "liuxun2"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("618b3f796c0c0000ac001fa4"),
    "u_id": "u3",
    "u_name": "u3",
    "u_nikename": "liuxun3",
    "u_lable": "jdf"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("618b3f966c0c0000ac001fa5"),
    "u_id": "u4",
    "u_name": "u4",
    "u_nikename": "liuxun4",
    "u_lable": "fdfj"
} ]);
